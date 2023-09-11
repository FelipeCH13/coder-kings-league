Use kings_league_v2;

##Vista para consultar la cantidad de goles y asistencias de cada jugador,ordenado por cantidad de goles
CREATE OR REPLACE VIEW estadisticas_jugadores AS
    (SELECT 
        CONCAT(j.nombre, ' ', j.apellido) Nombre,
        IFNULL(g.cantidad_goles, 0) Cantidad_Goles,
        IFNULL(a.cantidad_asistencias, 0) Cantidad_Asistencias,
        e.nombre AS Equipo
    FROM
        jugador j
            LEFT JOIN
        (SELECT 
            id_jugador, COUNT(*) cantidad_goles
        FROM
            goles
        GROUP BY id_jugador) g ON j.id_jugador = g.id_jugador
            LEFT JOIN
        (SELECT 
            id_jugador, COUNT(*) cantidad_asistencias
        FROM
            asistencias
        GROUP BY id_jugador) a ON j.id_jugador = a.id_jugador
            JOIN
        equipo e ON e.id_equipo = j.id_equipo
    WHERE
        g.cantidad_goles > 0
            OR a.cantidad_asistencias > 0
    ORDER BY g.cantidad_goles DESC);

##Vista para consultar los jugadores franquicia de la liga
CREATE OR REPLACE VIEW jugadores_franquicia AS
    (SELECT 
        CONCAT(j.nombre, ' ', j.apellido) Nombre_Jugador_Franquicia,
        e.nombre Equipo
    FROM
        jugador j
            JOIN
        equipo e ON e.id_equipo = j.id_equipo
    WHERE
        franquicia = 1);

##Vista para ver el resultado de los partidos,los equipos enfrentados y ordenados por fecha
CREATE OR REPLACE VIEW detalle_partidos AS
    (SELECT 
        CONCAT(l.nombre, '-', v.nombre) Equipos,
        CONCAT(p.goles_local, '-', p.goles_visitante) Goles_Partido,
        fecha Fecha
    FROM
        partido p
            JOIN
        disputa d ON p.id_partido = d.id_partido
            JOIN
        equipo l ON d.id_local = l.id_equipo
            JOIN
        equipo v ON d.id_visitante = v.id_equipo
    ORDER BY fecha DESC);

##Vista para conocer los patrocinadores del equipo, ordenados por presupuesto
CREATE OR REPLACE VIEW detalle_patrocinios AS
    (SELECT 
        e.nombre Equipo,
        p.nombre Patrocinador,
        CONCAT('€ ', p.dinero_invertido) Dinero_Invertido
    FROM
        equipo e
            JOIN
        patrocinador p ON e.id_equipo = p.id_equipo
    ORDER BY p.dinero_invertido DESC);

##Vista para conocer la cantidad de partidos arbitrados por cada uno de los integrantes del cuerpo arbitral
CREATE OR REPLACE VIEW cantidad_partidos_arbitros AS
    (SELECT 
        CONCAT(nombre, ' ', apellido) Nombre_Arbitro,
        COUNT(p.id_arbitro) Cantidad_Partidos
    FROM
        arbitro a
            JOIN
        partido p ON a.id_arbitro = p.id_arbitro
    GROUP BY a.id_arbitro
    ORDER BY Cantidad_Partidos DESC);
    
    ##Funcion que permite ingresar una opcion y dependiendo del valor ingresado retorna el nombre del maximo goleador o asistidor
DROP FUNCTION IF EXISTS mayor_goleador_asistidor;
DELIMITER ==
CREATE FUNCTION mayor_goleador_asistidor(opcion VARCHAR(20)) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE 
        WHEN opcion LIKE 'goleador' THEN
            SELECT GROUP_CONCAT(nombre SEPARATOR ', ')
			INTO resultado
			FROM estadisticas_jugadores
			WHERE cantidad_goles = (SELECT MAX(cantidad_goles) FROM estadisticas_jugadores);
        WHEN opcion LIKE 'asistidor' THEN
            SELECT GROUP_CONCAT(nombre SEPARATOR ', ')
			INTO resultado
			FROM estadisticas_jugadores
			WHERE cantidad_asistencias = (SELECT MAX(cantidad_asistencias) FROM estadisticas_jugadores);
        ELSE
            SET resultado = 'Por favor ingresa un valor válido, las opciones son: Goleador - Asistidor. Gracias!';
    END CASE;
    RETURN resultado;
END ==
DELIMITER ;

##Funcion que permite conocer el nombre y el equipo al que pertenece un jugador solo ingresando su ID de jugador
DROP FUNCTION IF EXISTS buscador_id_jugador;
DELIMITER &&
CREATE FUNCTION buscador_id_jugador(opcion INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
DECLARE resultado_equipo VARCHAR(30);
DECLARE	nombre_jugador VARCHAR(100);

SELECT 
    e.nombre
INTO resultado_equipo FROM
    jugador j
        JOIN
    equipo e ON j.id_equipo = e.id_equipo
WHERE
    j.id_jugador = opcion;
SELECT 
    CONCAT(j.nombre, ' ', j.apellido)
INTO nombre_jugador FROM
    jugador j
        JOIN
    equipo e ON j.id_equipo = e.id_equipo
WHERE
    j.id_jugador = opcion;
    IF resultado_equipo IS NOT NULL THEN
    RETURN CONCAT('El jugador ',nombre_jugador,' pertenece a: ',resultado_equipo);
    ELSE
    RETURN CONCAT('No se encontró un jugador dentro de la Kings League con el ID ingresado: ', opcion);
    END IF;
END &&
DELIMITER ;

##Funcion que permite conocer el nombre y el equipo al que pertenece un jugador solo ingresando su nombre
DROP FUNCTION IF EXISTS buscador_nombre_jugador;
DELIMITER $$
CREATE FUNCTION buscador_nombre_jugador(nombre varchar(50)) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
DECLARE resultado_equipo VARCHAR(30);
DECLARE	nombre_jugador VARCHAR(100);

SELECT 
    e.nombre
INTO resultado_equipo FROM
    jugador j
        JOIN
    equipo e ON j.id_equipo = e.id_equipo
WHERE
    CONCAT(j.nombre, ' ', j.apellido) LIKE nombre;
SELECT 
    CONCAT(j.nombre, ' ', j.apellido)
INTO nombre_jugador FROM
    jugador j
        JOIN
    equipo e ON j.id_equipo = e.id_equipo
WHERE
    CONCAT(j.nombre, ' ', j.apellido) LIKE nombre;
    IF resultado_equipo IS NOT NULL THEN
    RETURN CONCAT('El jugador ',nombre_jugador,' pertenece a: ',resultado_equipo);
    ELSE
    RETURN CONCAT('No se encontró un jugador dentro de la Kings League con el nombre ingresado: ', nombre);
    END IF;
END $$
DELIMITER ;

##Este SP tiene como objetivo ordenar el listado de jugadores de la liga ingresando el campo y el tipo de orden que se desa obtener sea ascendente o descendente
DROP PROCEDURE IF EXISTS orden_jugadores; 
DELIMITER ??
CREATE PROCEDURE orden_jugadores(
    IN campo VARCHAR(20),
    IN orden VARCHAR(20)
)
BEGIN
    IF orden = 'ascendente' THEN
        SET orden = 'ASC';
    ELSEIF orden = 'descendente' THEN
        SET orden = 'DESC';
    ELSE
        SET orden = 'DESC';
    END IF;
	##Aqui se aplica el uso de clausulas para efectar el SP
    SET @jugadores = CONCAT('SELECT * FROM jugador ORDER BY ', campo, ' ', orden);
    PREPARE stmt FROM @jugadores;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ?? 
DELIMITER ;

##Este SP tiene como objetivo facilitar la insercion de patrocinadores para cada uno de los equipos inscritos
DROP PROCEDURE IF EXISTS insert_patrocinador; 
DELIMITER zz
CREATE PROCEDURE insert_patrocinador(IN nombre VARCHAR(50), IN dinero INT, IN equipo INT,OUT output VARCHAR(100))
BEGIN
	IF (nombre <> '') and (dinero and equipo != 0) THEN
		INSERT INTO PATROCINADOR (id_patrocinador,nombre,dinero_invertido,id_equipo) VALUES (null,UCASE(nombre),dinero,equipo);
        SET output = 'Inserción del patrocinador exitosa.';
	ELSE
		SET output = 'ERROR: no se pudo registrar al patrocinador del equipo.';
	END IF;
END
zz
DELIMITER ;

DROP TABLE IF EXISTS _respaldo_jugadores;
CREATE TABLE _respaldo_jugadores (
    id_modificacion INT PRIMARY KEY AUTO_INCREMENT,
    id_jugador INT,
    nombre_jugador VARCHAR(30),
    apellido_jugador VARCHAR(30),
    accion VARCHAR(30),
    fecha_modificacion DATETIME,
    responsable VARCHAR(100)
);

##Creacion del trigger para la insercion de jugadores
DROP TRIGGER IF EXISTS triger_insert_jugadores;
CREATE 
    TRIGGER  triger_insert_jugadores
 AFTER INSERT ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (NEW.id_jugador , NEW.nombre , NEW.apellido , 'INSERT' , CURRENT_TIMESTAMP() , USER());

##Creacion del trigger para la actualización de jugadores
DROP trigger IF EXISTS triger_update_jugadores;
CREATE 
    TRIGGER  triger_update_jugadores
 AFTER UPDATE ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (NEW.id_jugador , NEW.nombre , NEW.apellido , 'UPDATE' , CURRENT_TIMESTAMP() , USER());

##Creacion del trigger para la eliminació de jugadores
DROP trigger IF EXISTS triger_delete_jugadores;
CREATE 
    TRIGGER  triger_delete_jugadores
 AFTER DELETE ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (OLD.id_jugador , OLD.nombre , OLD.apellido , 'DELETE' , CURRENT_TIMESTAMP() , USER());
    
    
##El proposito de este trigger es evitar que se ingresen jugadores menores de edad a la BD
DROP trigger IF EXISTS control_edad_jugador;
DELIMITER jj
CREATE TRIGGER control_edad_jugador
BEFORE INSERT ON jugador
FOR EACH ROW
BEGIN
	##Declaracion de variable que almacenara la edad
    DECLARE edad INT;
    ##Seteamos a la variable el resultado de la funcion TIMESTAMPDIFF que habiamos utilizado previamente para calcular diferencias entre fechas
    SET edad = TIMESTAMPDIFF(YEAR, NEW.fecha_nacimiento, CURDATE());
    ##Usamos un condicional para realizar la validación
    IF edad < 18 THEN
		##Utilice una señal personalizada para que se ilustre un error personalizado en el output de MYSQL
			SIGNAL SQLSTATE '45000'
            ##Modifico el mensaje para que sea acorde con lo que necesito
            SET MESSAGE_TEXT = 'No se puede registrar jugadores menores de 18 años.';
    END IF;
END;
jj
DELIMITER ;
