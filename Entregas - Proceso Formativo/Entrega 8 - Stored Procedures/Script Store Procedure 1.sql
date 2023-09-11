##Seleccion del schema
USE kings_league_v2;

##Este SP tiene como objetivo ordenar el listado de jugadores de la liga ingresando el campo y el tipo de orden que se desa obtener sea ascendente o descendente
DROP PROCEDURE IF EXISTS orden_jugadores; 
DELIMITER //
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
END //  

##Este SP tiene como objetivo facilitar la insercion de patrocinadores para cada uno de los equipos inscritos
DROP PROCEDURE IF EXISTS sp_insert_patrocinador; 
DELIMITER $$
CREATE PROCEDURE sp_insert_patrocinador(IN nombre VARCHAR(50), IN dinero INT, IN equipo INT,OUT output VARCHAR(100))
BEGIN
	IF (nombre <> '') and (dinero and equipo != 0) THEN
		INSERT INTO PATROCINADOR (id_patrocinador,nombre,dinero_invertido,id_equipo) VALUES (null,UCASE(nombre),dinero,equipo);
        SET output = 'Inserción del patrocinador exitosa.';
	ELSE
		SET output = 'ERROR: no se pudo registrar al patrocinador del equipo.';
	END IF;
END
$$

 ##Estos son algunos llamados de ejemplos en los que se puede probar el SP de ordenamiento, unicamente se ingresa el campo por el cual se quiere ordenar y el tipo de ordenamiento
 call orden_jugadores('nombre','ascendente');
 call orden_jugadores('apellido','descendente');
 call orden_jugadores('fecha_nacimiento','ascendente');
 call orden_jugadores('id_jugador','descendente');
 call orden_jugadores('posicion','nose');


##Algunos llamados de ejemplo para probar la ejecucion del SP y el output de los mismos, se ingresan los datos a ingresar en todas las columnas excepto el id_patrocinador al ser automatico
call sp_insert_patrocinador('Red Bull',15200,1,@result);
call sp_insert_patrocinador('Caixa Bank',30700,2,@result_dos);
call sp_insert_patrocinador('EA Sports',12000,11,@result_tres);
SELECT @result_tres as result_insert_product


