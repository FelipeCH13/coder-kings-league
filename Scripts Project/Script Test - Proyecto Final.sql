USE kings_league_v3;

##Test para consultar las vistas creadas
Select * from estadisticas_jugadores;
Select * from jugadores_franquicia;
Select * from detalle_partidos;
Select * from detalle_patrocinios;
Select * from cantidad_partidos_arbitros;

##Test de las funciones creadas
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

##Test de los SP creados
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
SELECT @result_tres as result_insert_product;

##Test de los triggers creados
##Test para la insercion de registros
INSERT INTO jugador VALUES (NULL,'Papi','Gavi','Delantero','1991-04-23',0,1,1);
Select * from _respaldo_jugadores;
##Test para la actualización de registros
UPDATE jugador SET fecha_nacimiento='1997-06-13' WHERE id_jugador=133;
Select * from _respaldo_jugadores;
##Test para la eliminacion de registros
DELETE FROM jugador WHERE id_jugador=133;
Select * from _respaldo_jugadores;
##Test para la insercion de menores de edad, ES NORMAL QUE ARROJE ERROR PUES EL TRIGGER TIENE UN MANEJO DEL ERROR
INSERT INTO jugador VALUES
(NULL,'Lamine','Yamal','Delantero','2015-07-15',1,1,NULL);
