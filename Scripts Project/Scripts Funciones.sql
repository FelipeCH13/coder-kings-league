##Funciones
Use kings_league_v2;

##Funcion que permite ingresar una opcion y dependiendo del valor ingresado retorna el nombre del maximo goleador o asistidor
DROP FUNCTION IF EXISTS mayor_goleador_asistidor;
DELIMITER //
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
END //
DELIMITER ;

##Funcion que permite conocer el nombre y el equipo al que pertenece un jugador solo ingresando su ID de jugador
DROP FUNCTION IF EXISTS buscador_id_jugador;
DELIMITER $$
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
END $$
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

##Test de las funciones
#Mayor Goleador o Asisitidor
SELECT MAYOR_GOLEADOR_ASISTIDOR('goleador') Top_goleador;
SELECT MAYOR_GOLEADOR_ASISTIDOR('asistidor') Top_asistidor;
SELECT MAYOR_GOLEADOR_ASISTIDOR('prueba') Top_goleador_asistidor;
#Buscador por ID jugador
SELECT BUSCADOR_ID_JUGADOR(20) Resultado_Busqueda_ID;
SELECT BUSCADOR_ID_JUGADOR(97) Resultado_Busqueda_ID;
SELECT BUSCADOR_ID_JUGADOR(120) Resultado_Busqueda_ID;
SELECT BUSCADOR_ID_JUGADOR(300) Resultado_Busqueda_ID;
#Buscador por nombre
SELECT BUSCADOR_NOMBRE_JUGADOR('Nacho Berche') Resultado_Busqueda_Nombre;
SELECT BUSCADOR_NOMBRE_JUGADOR('Carles Planas') Resultado_Busqueda_Nombre;
SELECT BUSCADOR_NOMBRE_JUGADOR('Pau Fernandez') Resultado_Busqueda_Nombre;
SELECT BUSCADOR_NOMBRE_JUGADOR('Leonel') Resultado_Busqueda_Nombre;
