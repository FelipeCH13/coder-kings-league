Use kings_league_v2;

##Este trigger tiene como objetivo gestionar y actualizar una tabla de respaldo con respecto a la insercion,modificacion o eliminacion de jugadores, dada la cantidad de registros es importante garantizar un respaldo

##Creacion de la tabla de Logs
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
CREATE 
    TRIGGER  triger_insert_jugadores
 AFTER INSERT ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (NEW.id_jugador , NEW.nombre , NEW.apellido , 'INSERT' , CURRENT_TIMESTAMP() , USER());

##Creacion del trigger para la actualización de jugadores
CREATE 
    TRIGGER  triger_update_jugadores
 AFTER UPDATE ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (NEW.id_jugador , NEW.nombre , NEW.apellido , 'UPDATE' , CURRENT_TIMESTAMP() , USER());

##Creacion del trigger para la eliminació de jugadores
CREATE 
    TRIGGER  triger_delete_jugadores
 AFTER DELETE ON jugador FOR EACH ROW 
    INSERT INTO _respaldo_jugadores (id_jugador , nombre_jugador , apellido_jugador , accion , fecha_modificacion , responsable) VALUES (OLD.id_jugador , OLD.nombre , OLD.apellido , 'DELETE' , CURRENT_TIMESTAMP() , USER());
    
    
##Test para la insercion de registros
INSERT INTO jugador VALUES (NULL,'Papi','Gavi','Delantero','1991-04-23',0,1,1);
Select * from _respaldo_jugadores;
##Test para la insercion de registros
UPDATE jugador SET fecha_nacimiento='1997-06-13' WHERE id_jugador=133;
Select * from _respaldo_jugadores;
##Test para la eliminacion de registros
DELETE FROM jugador WHERE id_jugador=133;
Select * from _respaldo_jugadores;

##El proposito de este trigger es evitar que se ingresen jugadores menores de edad a la BD
DELIMITER //
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
//

INSERT INTO jugador VALUES
(NULL,'Lamine','Yamal','Delantero','2015-07-15',1,1,NULL);