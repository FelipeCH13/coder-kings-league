##Creacion de Vistas
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
        CONCAT(j.nombre, ' ', apellido) Nombre_Jugador_Franquicia,
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
        CONCAT(p.goles_local, '-', goles_visitante) Goles_Partido,
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

##Test para consultar tablas
Select * from estadisticas_jugadores;
Select * from jugadores_franquicia;
Select * from detalle_partidos;
Select * from detalle_patrocinios;
Select * from cantidad_partidos_arbitros;