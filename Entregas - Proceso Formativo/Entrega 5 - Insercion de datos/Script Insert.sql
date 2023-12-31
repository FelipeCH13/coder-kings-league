USE	kings_league_v2;

#Insercion Datos de la liga
INSERT INTO liga VALUES 
(NULL,'Kings League','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiNmr3x593X8GjomMqLcB4P9xWwHkOdPaVrGMmpzTHPVOqbRWm99YfvMewmPP6CVbINSEOaPr0oU3xogUosxQ0CrocBPvAAAbt8MLdH7hl6Hd-2CV7faJN5wPcLs77N94eXMz65okiBEPqH-dxaAwx3WG6FeIGcXZ15svL2gP77e8K87FHtY7gEoV5gEA/s512/kings%20league%20Infojobs%20Logo.png
');

#Insercion Datos de los Directivos
INSERT INTO directivo VALUES 
(NULL,'Gerard','Pique','Presidente','1987-02-02',1),
(NULL,'Oriol','Querol','CEO','1985-01-01',1),
(NULL,'Hiroshi','Mikitani','Founder','1995-05-14',1),
(NULL,'Edmund','Chu','Founder','2000-11-21',1),
(NULL,'Nullah','Sparker','Founder','1995-05-05',1),
(NULL,'Mike','Evans','Founder','1995-05-16',1),
(NULL,'Alex','Bardera','Founder','1996-02-10',1),
(NULL,'Marc','Carrion','Director Marketing','2000-12-23',1),
(NULL,'Claudia','Quiros','Director  Personal','1995-11-29',1),
(NULL,'Ferran','Villaseca','Director Juridico','1988-01-22',1),
(NULL,'Oriol','Granell','Director Comercial','1995-04-01',1),
(NULL,'Eduard','Scott','Director Digital','1991-05-14',1);

INSERT INTO presidente VALUES
(NULL,'Iker','Casillas','1981-05-20'),
(NULL,'Juan','Guarnizo','1994-08-28'),
(NULL,'Adrian','Contreras','1995-06-03'),
(NULL,'Gerard','Romero','1980-01-01'),
(NULL,'Sergio','Agüero','1988-06-02'),
(NULL,'Jaume','Cremades','1993-07-25'),
(NULL,'Samantha','Rivera','1994-07-04'),
(NULL,'Ibai','Llanos','1995-03-15'),
(NULL,'David','Moreno','1993-11-11'),
(NULL,'David','Canovas','1997-04-24'),
(NULL,'Mario','Garrido','1990-02-26'),
(NULL,'Javi','Ruiz','1996-01-07');

INSERT INTO equipo VALUES
(NULL,'1K','https://upload.wikimedia.org/wikipedia/commons/9/98/1K_F.C_logo.png',1,1),
(NULL,'Aniquiladores','https://esports.as.com/2022/12/12/aniquiladores.png?hash=d65b67c29f5815c7f4e0ffd2fd8dea9731f2fa3a',2,1),
(NULL,'El Barrio','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/El_Barrio_KL_Logo.svg/800px-El_Barrio_KL_Logo.svg.png',3,1),
(NULL,'Jijantes','https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/JIJANTES_FC.svg/2050px-JIJANTES_FC.svg.png',4,1),
(NULL,'Kunisports','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kunisports_logo.svg/800px-Kunisports_logo.svg.png',5,1),
(NULL,'Los Troncos','https://upload.wikimedia.org/wikipedia/commons/8/84/Los_troncos_fckingsleague.png',6,1),
(NULL,'Pio FC','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/PIO_FC.svg/1200px-PIO_FC.svg.png',7,1),
(NULL,'Porcinos FC','https://kingsleague.pro/wp-content/uploads/2022/11/porcinos-fc.svg',8,1),
(NULL,'Rayo de Barcelona','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Rayo_de_Barcelona_FC.svg/800px-Rayo_de_Barcelona_FC.svg.png',9,1),
(NULL,'Saiyans FC','https://upload.wikimedia.org/wikipedia/commons/0/06/Saiyans_FC.png',10,1),
(NULL,'Ultimate Mostoles','https://upload.wikimedia.org/wikipedia/commons/9/97/Ultimate_M%C3%B3stoles.png',11,1),
(NULL,'Xbuyer Team','https://upload.wikimedia.org/wikipedia/commons/0/0c/XbuyerT.svg',12,1);

#Insercion Datos del Split
INSERT INTO split VALUES 
(NULL,'2023-01-01','2023-03-26',3,1),
(NULL,'2023-05-07','2023-07-29',12,1);

#Insercion Datos del Draft
INSERT INTO draft VALUES 
(NULL,'2022-12-27','2023-01-01',170,1),
(NULL,'2023-08-03','2023-09-04',150,2);

#Insercion Datos de los Empleados
INSERT INTO empleado VALUES
(NULL,'Marta','García','Coordinador','1983-07-15',1),
(NULL,'Laura','Martínez','Fisioterapeuta','1990-04-23',1),
(NULL,'María','López','Preparador Físico','1987-12-05',1),
(NULL,'David','Fernández','Analista de Datos','1992-09-18',1),
(NULL,'Carlos','González','Masajista','1985-11-27',1),
(NULL,'Ana','Rodríguez','Analista de Datos','1998-02-10',1),
(NULL,'Alejandro','Pérez','Jefe de Comunicación','1989-06-08',1),
(NULL,'Patricia','Sánchez','Responsable de Logística','1984-10-13',1),
(NULL,'Daniel','Romero','Gerente de Proyectos','1993-03-20',1),
(NULL,'Cristina','Ramírez','Coordinador de Patrocinios','1991-08-29',1),
(NULL,'Adrián','Navarro','Coordinador de Comunicación','1986-01-07',1),
(NULL,'Isabel','Vidal','Asistente Administrativo','1994-05-31',1),
(NULL,'Juan','Torres','Asistente Operaciones','1997-03-14',1),
(NULL,'Nuria','Ortega','Gerente de Operaciones','1988-09-11',1),
(NULL,'Sergio','Ruiz','Encargado de Seguridad','1995-12-26',1),
(NULL,'Elena','Castro','Director de Producción','1996-04-16',1),
(NULL,'Miguel','Morales','Coordinador de Producción','1981-11-03',1),
(NULL,'Lucía','Gómez','Productor Ejecutivo','1999-06-25',1),
(NULL,'José','Moreno','Coordinador de Eventos','1982-08-09',1),
(NULL,'Ariadna','Castillo','Gerente de Marketing','1980-07-28',1),
(NULL,'lba','López','Editor de Video','1988-05-04',1),
(NULL,'Alejandro','García','Realizador de TV','1983-02-17',1),
(NULL,'Beatriz','Martínez','Director de Fotografía','1991-10-21',1),
(NULL,'Manuel','Rodríguez','Camarógrafo','1997-01-19',1),
(NULL,'Elena','Pérez','Asistente de Producción','1995-09-22',1),
(NULL,'Adrián','Fernández','Técnico de Sonido','1984-03-06',1),
(NULL,'Paula','Gómez','Técnico de Iluminación','1996-07-02',1),
(NULL,'Luis','Sánchez','Operador de Cámara','1993-12-08',1),
(NULL,'Inés','González','Técnico de Video','1986-04-12',1),
(NULL,'Raúl','Torres','Coordinador de Retransmisiones','1989-08-30',1),
(NULL,'Marina','Ramírez','Locutor de TV o Radio','1992-11-24',1),
(NULL,'Sergio','Vargas','Analista Táctico','1998-01-11',1),
(NULL,'Sofía','Castro','Coordinador Control de Acceso','1987-06-05',1),
(NULL,'Francisco','Moreno','Analista Táctico','1981-10-16',1),
(NULL,'Martina','Jiménez','Coordinador de Protocolo','1990-03-25',1),
(NULL,'Diego','Navarro','Locutor de TV o Radio','1994-02-09',1),
(NULL,'Laura','Ortega','Locutor de TV o Radio','1985-09-07',1),
(NULL,'Ignacio','Ruiz','Camarógrafo','1999-05-28',1),
(NULL,'Carla','Morales','Camarógrafo','1982-12-23',1),
(NULL,'Alberto','Herrera','Camarógrafo','1980-07-09',1);

#Insercion datos reglas
INSERT INTO reglas VALUES
(NULL,'Duración del partido','Los partidos duran 40 minutos, divididos en dos partes de 20 minutos cada una.',1),
(NULL,'Penaltis desde el centro del campo','Si el partido termina en empate, se decide el ganador mediante una tanda de penaltis desde el centro del campo, donde el jugador tiene 5 segundos para marcar.',1),
(NULL,'Fuera de juego','Hay fuera de juego, igual que en el fútbol 11. Se aplica cuando un jugador del equipo atacante se encuentra más cerca de la línea de meta que el balón y el penúltimo adversario.',1),
(NULL,'Saques de banda','Los saques de banda se hacen con la mano. El jugador debe tener los dos pies sobre la línea lateral o sobre el suelo fuera del terreno de juego y lanzar el balón con ambas manos desde atrás y por encima de la cabeza.',1),
(NULL,'Tarjetas','La tarjeta amarilla supone dos minutos de exclusión, y la roja cinco minutos hasta que entre un sustituto. El árbitro puede mostrar tarjetas por faltas, protestas, conductas antideportivas o retrasar la reanudación del juego.',1),
(NULL,'Número de jugadores','Cada equipo juega con siete (7) jugadores, incluyendo el portero. Los equipos pueden tener hasta cinco (5) suplentes en el banquillo.',1),
(NULL,'Saque inicial','El balón se sitúa en el centro del campo y los jugadores arrancan desde la línea de fondo. ',1),
(NULL,'Fuera de juego','Existe la regla del fuera de juego, que se aplica cuando un jugador del equipo atacante se encuentra más cerca de la línea de fondo que el balón y el penúltimo adversario (incluyendo al portero) en el momento en que el balón es jugado por un compañero.',1),
(NULL,'Penaltis','Los penaltis se lanzan desde medio campo (shootouts), con un tiempo máximo de cinco (5) segundos para ejecutarlos. El portero debe permanecer sobre la línea de meta hasta que el balón sea tocado por el lanzador. Si hay empate al final del partido, se decide con una tanda de cinco (5) penaltis para cada equipo. Si persiste el empate, se continúa con muerte súbita.',1),
(NULL,'Cambios ilimitados','Los equipos pueden hacer cambios de jugadores de manera ilimitada y sin detener el tiempo. Los jugadores que salen deben hacerlo por la zona del banquillo y los que entran deben esperar a que salgan completamente.',1),
(NULL,'Tiempo muerto','Cada equipo tiene derecho a un tiempo muerto por partido, que puede solicitar en cualquier momento. El tiempo muerto dura un minuto y el reloj se detiene durante ese tiempo.',1),
(NULL,'Balón fuera','Cuando el balón sale por la línea de fondo, se reanuda el juego con un saque de meta o un córner, según corresponda. El saque de meta se realiza desde el área pequeña y el córner desde el vértice del área grande.',1),
(NULL,'Faltas y tarjetas','Las faltas se sancionan con un tiro libre directo o indirecto, según el criterio del árbitro. El tiro libre se ejecuta desde el lugar donde se cometió la falta, salvo que sea dentro del área grande, en cuyo caso se concede un penalti2. La tarjeta amarilla supone dos minutos de exclusión, para posteriormente volver a entrar. La tarjeta roja supone cinco minutos de exclusión, y el equipo tendrá que esperar hasta que entre un sustituto.',1);

#Insercion datos de los arbitros
INSERT INTO	arbitro VALUES
(NULL,'Oscar','Muniz','1995-09-12',1),
(NULL,'Edgar','Fernandez','1989-12-04',1),
(NULL,'Salva','Tito','1987-08-23',1),
(NULL,'Jose','Rubio','1992-06-19',1);

INSERT INTO patrocinador VALUES
(NULL,'Telefónica','78536',1),
(NULL,'Banco Santander','54672',2),
(NULL,'BBVA','93785',3),
(NULL,'Repsol','64327',4),
(NULL,'Iberdrola','21897',5),
(NULL,'Inditex (Zara)','73241',6),
(NULL,'CaixaBank','37249',7),
(NULL,'Movistar','56894',8),
(NULL,'Endesa','48210',9),
(NULL,'Mapfre','89341',10),
(NULL,'El Corte Inglés','65298',11),
(NULL,'Ferrovial','40927',12);

INSERT INTO staff VALUES
(NULL,'Alejandro','García','Primer entrenador','1975-08-20',1),
(NULL,'Marta','Martínez','Segundo entrenador','1980-02-15',1),
(NULL,'Javier','López','Entrenador de arqueros','1982-06-10',1),
(NULL,'Laura','Fernández','Fisioterapeuta','1983-09-28',1),
(NULL,'Pablo','González','Primer entrenador','1986-04-03',2),
(NULL,'Clara','Rodríguez','Segundo entrenador','1990-11-12',2),
(NULL,'Sergio','Pérez','Entrenador de arqueros','1991-07-30',2),
(NULL,'Elena','Sánchez','Fisioterapeuta','1988-03-25',2),
(NULL,'Diego','Romero','Primer entrenador','1985-12-09',3),
(NULL,'Carmen','Ramírez','Segundo entrenador','1993-01-18',3),
(NULL,'Bruno','Navarro','Entrenador de arqueros','1989-10-05',3),
(NULL,'Patricia','Vidal','Fisioterapeuta','1978-11-07',3),
(NULL,'Álvaro','Torres','Primer entrenador','1987-05-23',4),
(NULL,'Inés','Ortega','Segundo entrenador','1995-09-02',4),
(NULL,'Adrián','Ruiz','Entrenador de arqueros','1984-07-15',4),
(NULL,'Lucía','Castro','Fisioterapeuta','1996-12-28',4),
(NULL,'Raúl','Morales','Primer entrenador','1979-03-19',5),
(NULL,'Paula','Gómez','Segundo entrenador','1981-06-06',5),
(NULL,'Hugo','Moreno','Entrenador de arqueros','1987-10-22',5),
(NULL,'Martina','Jiménez','Fisioterapeuta','1994-08-09',5),
(NULL,'Iván','Silva','Primer entrenador','1977-04-11',6),
(NULL,'Alba','Espinosa','Segundo entrenador','1992-02-14',6),
(NULL,'Juan','Alonso','Entrenador de arqueros','1991-09-10',6),
(NULL,'Alicia','Rojas','Fisioterapeuta','1983-11-05',6),
(NULL,'Diego','Herrera','Primer entrenador','1986-08-29',7),
(NULL,'Isabel','Torres','Segundo entrenador','1976-01-31',7),
(NULL,'Daniel','Ríos','Entrenador de arqueros','1980-07-03',7),
(NULL,'Carla','Aguilar','Fisioterapeuta','1995-03-07',7),
(NULL,'Rubén','Molina','Primer entrenador','1988-12-14',8),
(NULL,'Sonia','Domínguez','Segundo entrenador','1997-04-21',8),
(NULL,'Mario','Vargas','Entrenador de arqueros','1989-02-11',8),
(NULL,'Silvia','Gil','Fisioterapeuta','1993-10-26',8),
(NULL,'Guillermo','Mendoza','Primer entrenador','1981-08-18',9),
(NULL,'María','Rivas','Segundo entrenador','1978-12-02',9),
(NULL,'Carlos','Paredes','Entrenador de arqueros','1992-05-24',9),
(NULL,'Nora','Carmona','Fisioterapeuta','1979-09-16',9),
(NULL,'Víctor','Bravo','Primer entrenador','1985-02-03',10),
(NULL,'Andrea','Cordero','Segundo entrenador','1990-01-08',10),
(NULL,'Iker','Fuentes','Entrenador de arqueros','1986-07-27',10),
(NULL,'Aitana','Peralta','Fisioterapeuta','1998-06-01',10),
(NULL,'Joel','Merino','Primer entrenador','1984-09-23',11),
(NULL,'Nuria','Núñez','Segundo entrenador','1977-12-20',11),
(NULL,'Hugo','Moya','Entrenador de arqueros','1996-11-11',11),
(NULL,'Emma','Menéndez','Fisioterapeuta','1983-10-17',11),
(NULL,'Iñaki','Pascual','Primer entrenador','1982-04-13',12),
(NULL,'Júlia','Carrasco','Segundo entrenador','1994-03-08',12),
(NULL,'Alex','Céspedes','Entrenador de arqueros','1991-03-09',12),
(NULL,'Laia','Calvo','Fisioterapeuta','1978-06-22',12);


#Insercion datos de los jugadores
INSERT INTO jugador VALUES
(NULL,'Ricardo','Lopez','Arquero','1983-07-15',1,1,NULL),
(NULL,'Roman','Alegre','Defensa','1990-04-23',0,1,1),
(NULL,'Mark','Sorroche','Delantero','1987-12-05',0,1,1),
(NULL,'Marino','Gomez','Delantero','1992-09-18',0,1,1),
(NULL,'Raul','Ledo','Defensa','1985-11-27',0,1,1),
(NULL,'Sergi','Sauras','Defensa','1998-02-10',0,1,1),
(NULL,'Bruno','Guma','Defensa','1989-06-08',0,1,1),
(NULL,'Marc','Pluvins','Medio','1984-10-13',0,1,1),
(NULL,'Oscar','Rivero','Medio','1993-03-20',0,1,1),
(NULL,'Lautaro','Martinez','Delantero','1991-08-29',0,1,1),
(NULL,'Ruben','Tremiño','Delantero','1986-01-07',0,1,1),
(NULL,'Fran','Hernandez','Delantero','1994-05-31',1,2,NULL),
(NULL,'Dani','Perez','Arquero','1997-03-14',0,2,1),
(NULL,'Marc','Galvany','Medio','1988-09-11',0,2,1),
(NULL,'Andres','Serrano','Defensa','1995-12-26',0,2,1),
(NULL,'Bernat','Rovira','Medio','1996-04-16',0,2,1),
(NULL,'Trillus','Martinez','Delantero','1981-11-03',0,2,1),
(NULL,'Xavi','Jorquera','Defensa','1999-06-25',0,2,1),
(NULL,'Gilles','Vidal','Medio','1982-08-09',0,2,1),
(NULL,'Jadir','Cirera','Defensa','1980-07-28',0,2,1),
(NULL,'Roger','Bonet','Medio','1988-05-04',0,2,1),
(NULL,'Xavi','Morales','Arquero','1983-02-17',0,2,1),
(NULL,'Jose','Juan','Arquero','1991-10-21',1,3,NULL),
(NULL,'Jacobo','Liencres','Delantero','1997-01-19',0,3,1),
(NULL,'Andres','Mase','Defensa','1995-09-22',0,3,1),
(NULL,'Pablo','Beguer','Delantero','1984-03-06',0,3,1),
(NULL,'Jordi','Ros','Medio','1996-07-02',0,3,1),
(NULL,'Cristian','Ubon','Medio','1993-12-08',0,3,1),
(NULL,'Pau','ZZ','Defensa','1986-04-12',0,3,1),
(NULL,'Xavi','Olae','Delantero','1989-08-30',0,3,1),
(NULL,'Oriol','Boada','Delantero','1992-11-24',0,3,1),
(NULL,'Victor','Baranera','Medio','1998-01-11',0,3,1),
(NULL,'Javi','Capilla','Medio','1987-06-05',0,3,1),
(NULL,'Roman','Golobart','Defensa','1981-10-16',1,4,NULL),
(NULL,'Lluis','Alsina','Medio','1990-03-25',0,4,1),
(NULL,'Pol','Zapata','Arquero','1994-02-09',0,4,1),
(NULL,'Jay','Mengeli','Defensa','1985-09-07',0,4,1),
(NULL,'Juan','Quero','Medio','1999-05-28',0,4,1),
(NULL,'Arnau','Martinez','Defensa','1982-12-23',0,4,1),
(NULL,'Ivan','Perez','Delantero','1980-07-09',0,4,1),
(NULL,'Joel','Maca','Medio','1998-08-15',0,4,1),
(NULL,'Noel','Bayarri','Defensa','1987-01-21',0,4,1),
(NULL,'Raul','Dorado','Delantero','1983-09-05',0,4,1),
(NULL,'Mario','Leon','Arquero','1995-11-28',0,4,1),
(NULL,'Ferran','Corominas','Delantero','1984-06-14',1,5,NULL),
(NULL,'Carlos','Torrentbo','Delantero','1986-03-30',0,5,1),
(NULL,'Victor','Cocera','Arquero','1990-02-18',0,5,1),
(NULL,'Marcos','Guerrero','Defensa','1991-04-27',0,5,1),
(NULL,'Joan','Ines','Medio','1996-12-12',0,5,1),
(NULL,'Sergio','Rode','Arquero','1989-07-19',0,5,1),
(NULL,'Flavio','Ruggeri','Defensa','1988-05-23',0,5,1),
(NULL,'Nacho','Jimenez','Defensa','1992-10-07',0,5,1),
(NULL,'Victor','Hidalgo','Delantero','1985-02-13',0,5,1),
(NULL,'Lluc','Riera','Delantero','1994-11-09',0,5,1),
(NULL,'Miki','Fernandez','Defensa','1997-06-03',0,5,1),
(NULL,'Carles','Planas','Defensa','1993-09-16',1,6,NULL),
(NULL,'Edgar','Alvaro','Delantero','1987-04-26',0,6,1),
(NULL,'Pol','Lechuga','Arquero','1984-11-30',0,6,1),
(NULL,'David','Soriano','Defensa','1990-10-17',0,6,1),
(NULL,'Sergio','Sanchez','Medio','1989-02-05',0,6,1),
(NULL,'Noel','Lopez','Medio','1991-07-22',0,6,1),
(NULL,'Xavi','Molas','Medio','1995-03-24',0,6,1),
(NULL,'Raul','Martinez','Delantero','1981-12-14',0,6,1),
(NULL,'Dorkis','Perez','Delantero','1983-08-29',0,6,1),
(NULL,'Ivan','Lepetit','Medio','1998-01-31',0,6,1),
(NULL,'Marc','Arus','Arquero','1985-06-12',0,6,1),
(NULL,'Carlos','Lopo','Defensa','1987-09-09',1,7,NULL),
(NULL,'Jorge','Ibañez','Arquero','1993-04-20',0,7,1),
(NULL,'Carlitos','Val','Defensa','1996-11-06',0,7,1),
(NULL,'Pau','Fernandez','Medio','1982-07-02',0,7,1),
(NULL,'Ismael','Cabello','Delantero','1984-03-16',0,7,1),
(NULL,'Bernat','Juarez','Medio','1990-12-25',0,7,1),
(NULL,'Andrew','Turner','Defensa','1986-05-17',0,7,1),
(NULL,'Adri','Castro','Delantero','1989-08-27',0,7,1),
(NULL,'Ivan','Cokita','Medio','1991-01-08',0,7,1),
(NULL,'Aaron','Ropero','Medio','1983-10-21',0,7,1),
(NULL,'Santiago','Adria','Defensa','1994-02-05',0,7,1),
(NULL,'Javier','Espinosa','Medio','1988-06-07',1,8,NULL),
(NULL,'Jose','Segovia','Arquero','1992-09-10',0,8,1),
(NULL,'Gabriel','Cichero','Defensa','1985-11-03',0,8,1),
(NULL,'David','Lopez','Defensa','1997-07-12',0,8,1),
(NULL,'Toti','Salvia','Medio','1998-04-15',0,8,1),
(NULL,'Carlitos','Gonzalez','Medio','1981-12-27',0,8,1),
(NULL,'Kilian','Honorato','Delantero','1987-03-18',0,8,1),
(NULL,'Joselete','Blanco','Delantero','1984-08-08',0,8,1),
(NULL,'Uri','Pons','Delantero','1996-06-19',0,8,1),
(NULL,'Raul','Lao','Medio','1990-01-23',0,8,1),
(NULL,'Sergi','Aguilar','Arquero','1989-09-04',0,8,1),
(NULL,'Pol','Marco','Defensa','1995-05-13',1,9,NULL),
(NULL,'Marc','Pelaz','Medio','1993-03-26',0,9,1),
(NULL,'Joan','Canet','Arquero','1986-04-05',0,9,1),
(NULL,'Guillem','ZZ','Delantero','1982-12-17',0,9,1),
(NULL,'Mario','Reyes','Defensa','1980-07-01',0,9,1),
(NULL,'Franky','Purti','Medio','1998-08-10',0,9,1),
(NULL,'Daniel','Perez','Medio','1983-01-11',0,9,1),
(NULL,'Alejo','Garcia','Defensa','1990-09-28',0,9,1),
(NULL,'Adri','Biboum','Delantero','1987-06-06',0,9,1),
(NULL,'Jhonatan','Jimenez','Medio','1985-05-29',0,9,1),
(NULL,'Alex','Race','Delantero','1991-02-14',0,9,1),
(NULL,'David','Lopez','Delantero','1992-12-29',1,10,NULL),
(NULL,'Marc','Briones','Arquero','1984-03-21',0,10,1),
(NULL,'Gio','Ferinu','Delantero','1989-11-02',0,10,1),
(NULL,'Alex','Campu','Defensa','1986-10-27',0,10,1),
(NULL,'Temo','Korkotashvili','Medio','1996-09-09',0,10,1),
(NULL,'Cristhian','Valle','Medio','1988-07-18',0,10,1),
(NULL,'Victor','Torres','Defensa','1995-04-04',0,10,1),
(NULL,'Feliu','Torrus','Medio','1987-03-23',0,10,1),
(NULL,'David','Alba','Delantero','1990-09-16',0,10,1),
(NULL,'Roger','Carbo','Medio','1989-12-13',0,10,1),
(NULL,'Ivan','Fajardo','Arquero','1992-04-18',0,10,1),
(NULL,'Juanma','Gonzalez','Delantero','1981-05-25',1,11,NULL),
(NULL,'Alvaro','Arche','Medio','1994-06-15',0,11,1),
(NULL,'Iu','Morral','Arquero','1982-08-06',0,11,1),
(NULL,'Alex','Gutti','Defensa','1996-01-24',0,11,1),
(NULL,'Aleix','Lage','Medio','1993-07-19',0,11,1),
(NULL,'Llur','Genesca','Delantero','1987-10-30',0,11,1),
(NULL,'Iker','Lopez','Defensa','1985-04-02',0,11,1),
(NULL,'Ian','Gonzalez','Defensa','1986-05-25',0,11,1),
(NULL,'Steven','Zea','Delantero','1991-03-07',0,11,1),
(NULL,'Nacho','Berche','Arquero','1995-11-22',0,11,1),
(NULL,'Lucca','Ribeiro','Medio','1988-12-08',0,11,1),
(NULL,'Carlos','Castro','Medio','1983-09-03',1,12,NULL),
(NULL,'Adria','Gutierrez','Arquero','1994-02-13',0,12,1),
(NULL,'Joan','Poch','Delantero','1989-10-01',0,12,1),
(NULL,'Iñaki','Villalba','Medio','1987-05-28',0,12,1),
(NULL,'Dani','Santiago','Defensa','1990-04-11',0,12,1),
(NULL,'Marc','Granero','Defensa','1985-06-23',0,12,1),
(NULL,'Goran','Ehsan','Medio','1993-08-02',0,12,1),
(NULL,'Joel','Bañuls','Defensa','1998-01-27',0,12,1),
(NULL,'Franc','Cortes','Medio','1986-11-09',0,12,1),
(NULL,'Benjamin','Sierra','Delantero','1984-10-05',0,12,1),
(NULL,'Sep','Corderas','Arquero','1990-09-18',0,12,1);

INSERT INTO clasificacion VALUES
(NULL,8,3,34,27,1,11),
(NULL,7,4,37,26,2,8),
(NULL,7,4,40,34,3,6),
(NULL,7,4,21,18,4,10),
(NULL,7,4,23,22,5,5),
(NULL,6,5,25,25,6,12),
(NULL,6,5,29,30,7,2),
(NULL,5,6,33,25,8,3),
(NULL,5,6,32,34,9,1),
(NULL,4,7,27,29,10,7),
(NULL,3,8,27,40,11,9),
(NULL,1,10,23,41,12,4);

INSERT INTO partido VALUES
(NULL,'2023-01-01',2,4,1),
(NULL,'2023-01-01',2,1,1),
(NULL,'2023-01-01',5,0,2),
(NULL,'2023-01-01',5,3,2),
(NULL,'2023-01-01',1,5,3),
(NULL,'2023-01-01',4,2,4);

INSERT INTO disputa VALUES
(NULL,1,9,1),
(NULL,2,5,4),
(NULL,3,3,7),
(NULL,4,6,12),
(NULL,5,2,11),
(NULL,6,10,8);

INSERT INTO goles VALUES
(NULL,15,93,1),
(NULL,18,92,1),
(NULL,21,4,1),
(NULL,35,5,1),
(NULL,40,6,1),
(NULL,40,7,1);

INSERT INTO asistencias VALUES
(NULL,15,90,1),
(NULL,18,90,1),
(NULL,21,7,1),
(NULL,38,7,1),
(NULL,40,8,1);


