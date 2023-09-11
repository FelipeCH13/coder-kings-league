CREATE SCHEMA kings_league;
USE kings_league;

CREATE TABLE jugador(
	id_jugador INT AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fecha_nacimiento date,
    goles int,
    asistencias int,
    partidos_jugados int,
    id_equipo int,
    PRIMARY KEY(id_jugador)
);

CREATE TABLE arbitro(
	id_arbitro INT AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fecha_nacimiento date,
    experiencia int,
    PRIMARY KEY(id_arbitro)
);

CREATE TABLE presidente(
	id_presidente INT AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fecha_nacimiento date,
    PRIMARY KEY(id_presidente)
);

CREATE TABLE equipo(
	id_equipo INT AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(45),
    fecha_fundacion date,
    patrocinador VARCHAR(45),
    id_presidente int,
    PRIMARY KEY(id_equipo)
);

CREATE TABLE staff(
	id_staff INT AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    fecha_nacimiento date,
    rol VARCHAR(45),
    id_equipo int,
    PRIMARY KEY(id_staff)
);

CREATE TABLE clasificacion(
	id_clasificacion INT AUTO_INCREMENT NOT NULL, 
    cantidad_partidos int,
    goles_favor int,
    goles_contra int,
    puntos int,
    id_equipo int,
    PRIMARY KEY(id_clasificacion)
);

CREATE TABLE encuentro(
	id_encuentro INT AUTO_INCREMENT NOT NULL, 
    fecha date,
    id_arbitro int,
    PRIMARY KEY(id_encuentro)
);


