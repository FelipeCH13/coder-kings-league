Use kings_league_v2;

CREATE TABLE liga (
	id_liga int auto_increment not null,
    nombre varchar(20),
    enlace_logo varchar(1000),
    PRIMARY KEY(id_liga)
);

CREATE TABLE split (
	id_split int auto_increment not null,
    fecha_inicio date,
    fecha_fim date,
    id_campeon int,
    id_liga int,
    PRIMARY KEY(id_split)
);

CREATE TABLE directivo (
	id_directivo int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    cargo varchar (30),
    fecha_nacimiento date,
    id_liga int,
    PRIMARY KEY(id_directivo)
);

CREATE TABLE empleado (
	id_empleado int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    cargo varchar(30),
    fecha_nacimiento date,
    id_liga int,
    PRIMARY KEY(id_empleado)
);

CREATE TABLE reglas(
	id_regla int auto_increment not null,
    nombre varchar(50),
    descripcion varchar(3000),
    id_liga int,
    PRIMARY KEY(id_regla)
);

CREATE TABLE arbitro(
	id_arbitro int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    cargo varchar(30),
    fecha_nacimiento date,
    id_liga int,
    PRIMARY KEY(id_arbitro)
);

CREATE TABLE partido(
	id_partido int auto_increment not null,
    fecha date,
    goles_local int,
    goles_visitante int,
    id_arbitro int,
    PRIMARY KEY(id_partido)
);

CREATE TABLE disputa(
	id_disputa int auto_increment not null,
    id_partido int,
    id_local int,
    id_visitante int,
    PRIMARY KEY(id_disputa)
);

CREATE TABLE asistencias(
	id_asistencia int auto_increment not null,
    minuto time,
    id_jugador int,
    id_partido int,
    PRIMARY KEY(id_asistencia)
);

CREATE TABLE goles(
	id_gol int auto_increment not null,
    minuto time,
    id_jugador int,
    id_partido int,
    PRIMARY KEY(id_gol)
);

CREATE TABLE jugador(
	id_jugador int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    posicion varchar(30),
    fecha_nacimiento date,
    franquicia boolean,
    id_equipo int,
    id_draft int,
    PRIMARY KEY(id_jugador)
);

CREATE TABLE equipo(
	id_equipo int auto_increment not null,
    nombre varchar(30),
    enlace_escudo varchar (1000),
    id_presidente int,
    id_liga int,
    PRIMARY KEY(id_equipo)
);

CREATE TABLE presidente(
	id_presidente int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    fecha_nacimiento date,
    PRIMARY KEY(id_presidente)
);

CREATE TABLE clasificacion(
	id_clasificacion int auto_increment not null,
    victorias int,
    derrotas int,
    goles_favor int,
    goles_contra int,
    puntos int,
    posicion int,
    id_equipo int,
    PRIMARY KEY(id_clasificacion)
);

CREATE TABLE patrocinador(
	id_patrocinador int auto_increment not null,
    nombre varchar(30),
    dinero_invertido decimal,
    id_equipo int,
    PRIMARY KEY(id_patrocinador)
);

CREATE TABLE staff(
	id_staff int auto_increment not null,
    nombre varchar(20),
    apellido varchar(20),
    rol varchar(30),
    fecha_nacimiento date,
    id_equipo int,
    PRIMARY KEY(id_staff)
);

CREATE TABLE draft(
	id_draft int auto_increment not null,
    fecha_inicio date,
    fecha_fin date,
    cantidad_participantes int,
    id_split int,
    PRIMARY KEY(id_draft)
);

#Implementacion de FKs

ALTER TABLE split
ADD FOREIGN KEY (id_liga) REFERENCES liga(id_liga); 

ALTER TABLE split
ADD FOREIGN KEY (id_campeon) REFERENCES equipo(id_equipo); 

ALTER TABLE directivo
ADD FOREIGN KEY (id_liga) REFERENCES liga(id_liga);

ALTER TABLE empleado
ADD FOREIGN KEY (id_liga) REFERENCES liga(id_liga);

ALTER TABLE reglas
ADD FOREIGN KEY (id_liga) REFERENCES liga(id_liga);

ALTER TABLE arbitro
ADD FOREIGN KEY (id_liga) REFERENCES liga(id_liga);

ALTER TABLE partido
ADD FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro);

ALTER TABLE asistencias
ADD FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador);

ALTER TABLE asistencias 
ADD FOREIGN KEY (id_partido) REFERENCES partido(id_partido);

ALTER TABLE goles
ADD FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador);

ALTER TABLE goles 
ADD FOREIGN KEY (id_partido) REFERENCES partido(id_partido);

ALTER TABLE jugador
ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo);

ALTER TABLE jugador
ADD FOREIGN KEY (id_draft) REFERENCES draft(id_draft);

ALTER TABLE equipo
ADD FOREIGN KEY (id_presidente) REFERENCES presidente(id_presidente);

ALTER TABLE equipo
ADD FOREIGN KEY	(id_liga) REFERENCES liga(id_liga);

ALTER TABLE clasificacion
ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo);

ALTER TABLE patrocinador
ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo);

ALTER TABLE staff
ADD FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo);

ALTER TABLE draft
ADD FOREIGN KEY (id_split) REFERENCES split(id_split);

ALTER TABLE disputa
ADD FOREIGN KEY (id_partido) REFERENCES partido(id_partido);

ALTER TABLE disputa
ADD FOREIGN KEY (id_local) REFERENCES equipo(id_equipo);

ALTER TABLE disputa
ADD FOREIGN KEY (id_visitante) REFERENCES equipo(id_equipo);
