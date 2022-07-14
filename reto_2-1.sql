CREATE DATABASE cat_cafe;

USE cat_cafe;

CREATE TABLE gatos(
    id_gato INT NOT NULL AUTO_INCREMENT,
    nombre_del_gato VARCHAR(30) NOT NULL,
    apodo VARCHAR(30),
    nombre_del_acompaniante VARCHAR(30),
    peso FLOAT NOT NULL,
    anios INT NOT NULL,
    gustos_del_gato VARCHAR(30) NOT NULL, 
    caracteristicas_fisicas VARCHAR(30),
    PRIMARY KEY (id_gato)
);

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, caracteristicas_fisicas) 
VALUE ("Rocket", "Sunny", 3, 3, "no tiene", "blanco y tiene ojos celestes");

ALTER TABLE gatos
ADD pelaje VARCHAR(30);

ALTER TABLE gatos
ADD color_ojos VARCHAR(30);

DELETE FROM gatos WHERE id_gato = 1;

ALTER TABLE gatos
DROP COLUMN caracteristicas_fisicas;

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Rocket", "Sunny", 3, 3, "no tiene", "blanco", "ojos celestes");

INSERT INTO gatos (nombre_del_gato, apodo, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Pinto", "Pin", 3.5, 5, "le gustan los mimos", "naranja con blanco", "ojos amarillo con verde");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Sunny", "Rocket", 5, 2, "jugar con pelotitas", "negro", "ojos amarillentos");

INSERT INTO gatos (nombre_del_gato, apodo, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Emelia", "Emeli", "Seiko", 4.4, 5, "reposar donde hay sol", "gris con negro", "ojos amarillentos");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Nikki", "Ricochet", 4.3, 4, "no tiene", "gris", "ojos verdes claros");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Ricochet", "Nikki", 4.7, 4, "lugares altos", "blanco con gris", "ojos celestes");

INSERT INTO gatos (nombre_del_gato, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Onyx", 3.3, 7, "comida","naranja con marron", "ojos amarillentos");

INSERT INTO gatos (nombre_del_gato, nombre_del_acompaniante, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Seiko", "Emelia", 3.7, 2, "dormir junto a otros gatos", "blanco con gris", "ojos verdosos");

INSERT INTO gatos (nombre_del_gato, apodo, peso, anios, gustos_del_gato, pelaje, color_ojos) 
VALUE ("Nathan", "Ninja Nate", 4.5, 7, "esconderse", "color negro", "ojos amarillentos");


/* 2º
> Como no todos los gatitos tienen un apodo entonces
> modificar la tabla para que por defecto aparezca
> que no tienen  */

ALTER TABLE gatos
MODIFY COLUMN apodo VARCHAR(30) DEFAULT "no tiene";

/* 3º
> Encargarse de asignar el valor por defecto a los
> gatitos con valores NULL en su apodo */

UPDATE gatos SET apodo = "no tiene" WHERE id_gato = 2;
UPDATE gatos SET apodo = "no tiene" WHERE id_gato = 4;
UPDATE gatos SET apodo = "no tiene" WHERE id_gato = 6;
UPDATE gatos SET apodo = "no tiene" WHERE id_gato = 7;
UPDATE gatos SET apodo = "no tiene" WHERE id_gato = 8;

 /* Debería haber hecho ---> actualizar la columna apodo para que se modifique con los cambios */
    UPDATE gatos SET apodo = DEFAULT;

/* 4º
> Teniendo en cuenta que no todos los gatitos llegaron
> acompañados modificar la tabla para que por defecto
> aparezca que llegaron solitos */

ALTER TABLE gatos
MODIFY COLUMN nombre_del_acompaniante VARCHAR(30) DEFAULT "Solito";

/* 5º
> IDEM 3º */

UPDATE gatos SET nombre_del_acompaniante = "Solito" WHERE id_gato = 3;
UPDATE gatos SET nombre_del_acompaniante = "Solito" WHERE id_gato = 7;
UPDATE gatos SET nombre_del_acompaniante = "Solito" WHERE id_gato = 9;

/* Debería haber hecho ---> actualizar la columna nombre_del_acompaniante para que se modifique con los cambios */
    UPDATE gatos SET nombre_del_acompaniante = DEFAULT;

/* 6º
> Nos comunicaron que tambien hace falta tener en cuenta
> el peso de los michis, por lo que si su peso es mayor
> a 4 entonces asignar TRUE o FALSE para saber si estan
> con dieta (debe aparecer al lado del peso) */

    /* creo columna : dieta*/

    ALTER TABLE table_name
    ADD column_name datatype;

    ALTER TABLE gatos
    ADD dieta BOOLEAN;

    /*cambia la ubicación de la columna*/
    ALTER TABLE gatos MODIFY dieta BOOLEAN AFTER peso;

    /*si su peso es mayor
    > a 4 entonces asignar TRUE o FALSE para saber si estan
    > con dieta (debe aparecer al lado del peso) */

    ALTER TABLE gatos
    MODIFY COLUMN dieta BOOLEAN DEFAULT (peso >4);

    /* actualizar la columna dieta para que se modifique con los cambios */
    UPDATE gatos SET dieta = DEFAULT;

/* 7º
> Por ultimo nos piden agregar los años que faltan para que
> los michis se jubilen, que es a los 11 años 
> (debe aparecer al lado de edad) */

    /* creo columna : jubilacion*/

    ALTER TABLE gatos
    ADD jubilacion FLOAT;

    /*cambia la ubicación de la columna*/
    ALTER TABLE gatos MODIFY jubilacion FLOAT AFTER anios;

    ALTER TABLE gatos
    MODIFY jubilacion INT;

    /* agregar los años que faltan para que
    > los michis se jubilen, que es a los 11 años  */

    ALTER TABLE gatos
    MODIFY COLUMN jubilacion INT DEFAULT (11 - anios);

    /* actualizar la columna dieta para que se modifique con los cambios */
    UPDATE gatos SET jubilacion = DEFAULT;

/* 8º 
Agregar a dos ultimos gatitos
- Toffee (Tofisito): tiene 4 años, pesa 3,4kg, le gusta jugar y estar solo a veces, es de color blanco con gris y tiene ojos verdosos
- Chucky: tiene 10 años, pesa 4,3kg, le gusta dormir y caminar, es de color naranja con blanco y tiene ojos amarillentos */

 
INSERT INTO gatos (nombre_del_gato, apodo, peso, anios, pelaje, color_ojos, gustos_del_gato) 
VALUE ("Toffe", "Tofisito", 3.4, 4, "jugar y estar solo a veces", "blanco con gris", "verdosos");

INSERT INTO gatos (nombre_del_gato, peso, anios, pelaje, color_ojos, gustos_del_gato) 
VALUE ("Chucky", 4.3, 10, "naranja con blanco", "amarillentos", "dormir y caminar");


/* cambié el nombre de un par de columnas para que no sea redundante ni tan ancha. */

ALTER TABLE nombre_tabla RENAME COLUMN nombre_columna_vieja to nombre_columna_nueva;

ALTER TABLE gatos RENAME COLUMN nombre_del_gato to nombre;

ALTER TABLE gatos RENAME COLUMN nombre_del_acompaniante to acompaniante;

ALTER TABLE gatos RENAME COLUMN gustos_del_gato to gustos;