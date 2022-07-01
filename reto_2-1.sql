CREATE DATABASE cat_cafe;

USE cat_cafe;

CREATE TABLE gatos(
    id_gato INT NOT NULL AUTO_INCREMENT,
    nombre_del_gato VARCHAR(30) NOT NULL,
    apodo VARCHAR(30),
    nombre_del_acompaniante VARCHAR(30),
    peso FLOAT NOT NULL,
    anios INT NOT NULL,
    caracteristicas_fisicas VARCHAR(30) NOT NULL,
    gustos_del_gato VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_gato)
);

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Rocket", "Sunny", 3, 3, "blanco y ojos celestes", "no tiene");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Pinto", "Pin", 3.5, 5, "color naranja con blanco y tiene ojos amarillo con verde", "le gustan los mimos");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Sunny", "Rocket", 5, 2, "color negro y tiene ojos amarillentos", "jugar con pelotitas");

INSERT INTO gatos (nombre_del_gato, apodo, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Emelia", "Emeli", "Seiko", 4.4, 5, "color gris con negro y tiene ojos amarillentos", "reposar donde hay sol");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Nikki", "Ricochet", 4.3, 4, "color gris y tiene ojos verdes claros", "no tiene");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Ricochet", "Nikki", 4.7, 4, "color blanco con gris y tiene ojos celestes", "lugares altos");

INSERT INTO gatos (nombre_del_gato, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Onyx", 3.3, 7, "naranja con marron y tiene ojos amarillentos", "comida");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Seiko", "Emelia" 3.7, 2, "color blanco con gris y tiene ojos verdosos", "dormir junto a otros gatos");

INSERT INTO gatos (nombre_del_gato, apodo, peso, anios, caracteristicas_fisicas, gustos_del_gato) 
VALUE ("Nathan", "Ninja Nate", 4.5, 7, "color negro y tiene ojos amarillentos", "esconderse");

