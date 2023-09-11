USE kings_league_v2; ##Seleccion del esquema

##En esta sentencia se crea un user para el Presidente de la liga, adicionalmente le asignamos una contraseña con el uso del IDENTIFIED BY
CREATE USER gerard_pique@localhost IDENTIFIED BY '198702Cl_';
##En esta sentencia se crea un user para el CEO de la liga, adicionalmente le asignamos una contraseña con el uso del IDENTIFIED BY
CREATE USER oriol_querol@localhost IDENTIFIED BY 'KOSMOs2022_';

##En esta sentencia se asignan los permisos al presidente de la liga, segun esta sentencia se asignaron unicamente permisos de lectura sobre todas las tablas del schema Kings_league_V2
GRANT SELECT ON kings_league_v2.* TO gerard_pique@localhost;
SHOW GRANTS FOR gerard_pique@localhost;

##En esta sentencia se asignan los permisos al CEO de la liga, segun esta sentencia se asignaron permisos de lectura, insercion y actualización sobre todas las tablas del schema Kings_league_V2
GRANT SELECT, INSERT, UPDATE ON kings_league_v2.* TO oriol_querol@localhost;
SHOW GRANTS FOR oriol_querol@localhost;

##A ninguno de los usuarios se les dio permisos para el uso de la sentencia DELETE, por lo cual no pueden borrar registros de ninguna de las tablas