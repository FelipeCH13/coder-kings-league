##Seleccion del esquema
USE kings_league_v2;

##Cambio del valor del autocommit para poder utilizar las sentencias
SET AUTOCOMMIT = 0;
##Verificacion de la tabla antes del borrado de registros
Select * from patrocinador;

##Inicio de la transaccion y borrado del registro
START TRANSACTION;
DELETE FROM patrocinador 
WHERE
    id_equipo = 11 AND id_equipo = 1;
 
##Rollback y commit comentariados como lo solicita la consigna, se pueden desmarcar y correr sin problema dado que el rollback esta antes del commit
/*
ROLLBACK;
COMMIT;
*/

##Transaccion ingreso de registros/Uso de savepoint
##Inicio de la transaccion
START TRANSACTION;
INSERT INTO empleado VALUES
(NULL,'Segio','Ferra','Comentarista','1983-07-15',1),
(NULL,'Albert','Bermudez','Comentarista','1990-04-23',1),
(NULL,'Gonzalo','Rodriguez','Comentarista','1987-12-05',1),
(NULL,'Alexis','Martin','Comentarista','1992-09-18',1);
##Primer savepoint tras el ingreso de 4 registros
savepoint ingreso_empleados_1;
INSERT INTO empleado VALUES
(NULL,'Lisandro','Lopez','Camarografo','1988-07-21',1),
(NULL,'Nicolas','Gaitan','Camarografo','1986-04-13',1),
(NULL,'Angel','Maria','Camarografo','1996-12-12',1),
(NULL,'Alexis','Sanchez','Camarografo','1985-09-18',1);
##Segundo savepoint tras el ingreso de otros 4 registros
savepoint ingreso_empleados_2;

##Sentencia comentariada para eliminar el savepoint 1
/*
release savepoint ingreso_empleados_1; 
*/