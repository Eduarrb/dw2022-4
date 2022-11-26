# mysql -u root --> consola
# mysql -u <user> -p --> para que pida contraseña

-- ⚡⚡ COMANDOS INICIALES ⚡⚡
-- QUERIES -> CONSULTAS
show databases;

SHOW DATABASES;

CREATE DATABASE dw2022_5;

-- 👁👁👁 ALERTA EJECUTAR ESTE COMANDO CON CUIDADO 💥💥💥
DROP DATABASE dw2022_5;

USE dw2022_5;

CREATE TABLE personas (
    per_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    per_nombres VARCHAR(100) NOT NULL,
    per_apellidos VARCHAR(100) NOT NULL,
    per_dni CHAR(8) UNIQUE NOT NULL,
    per_fec_nac DATETIME
);

--- ALERTA 💥💥💥
DROP TABLE personas;

SHOW TABLES;
DESC personas;

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(25) AFTER per_dni;
-- F, M, O
ALTER TABLE personas CHANGE COLUMN per_genero per_gen CHAR(1) NOT NULL;

ALTER TABLE personas DROP COLUMN per_gen;

INSERT INTO personas (per_nombres, per_apellidos, per_dni, per_fec_nac) VALUES
    ('Sofia', 'Casas', '11111111', '1990-12-12');

SELECT * FROM personas;
SELECT per_nombres, per_apellidos FROM personas;

INSERT INTO personas (per_nombres, per_apellidos, per_dni, per_fec_nac) VALUES
    ('Malena', 'Ruiz', '22222222', '1991-12-12 01:00:00'),
    ('Pedro', 'Rodriguez', '33333333', '1992-12-12 01:00:00'),
    ('Javier', 'Perez', '44444444', '1993-12-12 02:00:00');

-- UPDATE personas SET per_id = 4 WHERE per_id = 6;

INSERT INTO personas (per_nombres, per_apellidos, per_dni, per_fec_nac) VALUES
    ('Sebastian', 'Piñera', '55555555', '1980-12-12');

-- 💥💥💥 CON MUCHO CUIDADO DELETE 👁👁👁
DELETE FROM personas WHERE per_id = 7;

INSERT INTO personas (per_nombres, per_apellidos, per_dni, per_fec_nac) VALUES
    ('Javier', 'Perez', '44444444', '1993-12-12 02:00:00'),
    ('Sebastian', 'Piñera', '55555555', '1980-12-12');

DELETE FROM personas;

TRUNCATE personas;

-----------------------------------------------------------------
CREATE TABLE peliculas (
    peli_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    peli_nombre VARCHAR(255) NOT NULL,
    peli_genero VARCHAR(100) NOT NULL,
    peli_estreno DATE NOT NULL,
    peli_restricciones VARCHAR(5)
)

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones) VALUES
    ('Spiderman: No way Home', 'Ciencia Ficción', '2021-12-15', 'PG-13'),
    ('Matrix', 'ciencia ficcion', '1999-12-24', 'PG-13'),
    ('El Código Enigma', 'Bélica', '2017-08-29', 'PG-16'),
    ('Titanic', 'Drama romantico', '1997-09-09', 'PG-16'),
    ('Interstellar', 'Ciencia Ficción', '2014-10-10', 'PG'),
    ('El Resplandor', 'Terror', '1980-05-05', 'PG-18'),
    ('Un lugar en silencio', 'terror', '1996-05-05', 'PG-16'),
    ('Avatar', 'ciencia ficcion', '2009-10-18', 'PG'),
    ('Inception', 'ciencia ficción', '2010-05-09', 'PG'),
    ('Nacidos para matar', 'Acción', '2000-01-01', 'PG-16');

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones) VALUES
    ('007: golden eye', 'accion', '1992-02-02', 'PG');

-- ⚡⚡ WHERE
SELECT * FROM peliculas WHERE peli_id = 5;
SELECT * FROM peliculas WHERE peli_nombre = 'interstellar';
SELECT * FROM peliculas WHERE peli_genero = 'ciencia ficcion';
SELECT * FROM peliculas WHERE peli_restricciones = 'pg';

-- ⚡⚡ ORDER BY
SELECT * FROM peliculas;
SELECT * FROM peliculas ORDER BY peli_id DESC;
SELECT * FROM peliculas ORDER BY peli_nombre DESC;
SELECT * FROM peliculas WHERE peli_genero = 'ciencia ficcion' ORDER BY peli_nombre DESC;

------------------------------------------
CREATE TABLE actores (
    act_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    act_nombres VARCHAR(100) NOT NULL,
    act_apellidos VARCHAR(100) NOT NULL
);

INSERT INTO actores (act_nombres, act_apellidos) VALUES
    ('Tom', 'Holland'),
    ('Zendaya','Colleman'),
    ('Keanu','Reeves'),
    ('Carrie-Anne','Moss'),
    ('Leonardo', 'Dicaprio'),
    ('kate', 'Winslet'),
    ('Jack', 'Nicolson'),
    ('Shelly', 'Duvall'),
    ('Pierce', 'Brosnan'),
    ('Izabella', 'Scorupco'),
    ('Vincent', "D'onofrio"),
    ('Tobbye', 'Maguire');

-- HACER UN QUERY DONDE ME DEVUELVA LOS NOMBRES Y APELLIDOS
-- Y QUE ESTEN EN UNA SOLA COLUMNA
SELECT act_nombres, act_apellidos FROM actores;
SELECT CONCAT(act_nombres, ' ', act_apellidos) FROM actores;

-- ⚡⚡ ALIAS DE CAMPOS
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor FROM actores;
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor_de_reparto FROM actores;

-- HACER UN QUERY DONDE ME DEVUELVA LOS NOMBRES Y APELLIDOS, QUE ESTEN EN UNA SOLA COLUMNA Y QUE ESTEN ORDENADOS POR APELLIDOS DE FORMA DESCENDENTE
SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor FROM actores ORDER BY act_apellidos DESC;

-- HACER UN QUERY DONDE MUESTRE EL POSIBLE CORREO CORPORATIVO
-- APELLIDOS Y NOMBRES | POSIBLE CORREO
-- Eduardo Arroyo | earroyo@continental.edu.pe

SELECT SUBSTRING(act_nombres, 1, 1) FROM actores;

SELECT
    CONCAT(act_apellidos, ' ', act_nombres) AS actor,
    CONCAT(SUBSTRING(act_nombres, 1, 1), act_apellidos, '@dominio.com') AS correo
    FROM actores;

-- ⚡⚡ GROUP BY

SELECT COUNT(peli_genero) AS cantidad, peli_genero FROM peliculas GROUP BY peli_genero;

-- HACER UN QUERY QUE NOS DEVUELVA LA CANTIDAD DE PELICULAS QUE SON CIENCIA FICCION
-- CANTIDAD | GENERO
SELECT 
    COUNT(peli_genero) AS cantidad, 
    peli_genero 
FROM peliculas 
    WHERE peli_genero = 'ciencia ficcion'
    GROUP BY peli_genero;

-- HACER UN QUERY QUE NOS DEVUELVA LA CANTIDAD DE PELICULAS QUE SON RESTRICCION PG-13
-- CANTIDAD | RESTRICCION
SELECT
    COUNT(peli_restricciones) AS canti,
    peli_restricciones
FROM peliculas
    WHERE peli_restricciones = 'pg-16'
    GROUP BY peli_restricciones;

-- ⚡⚡ COMODINES
SELECT * FROM peliculas WHERE peli_nombre LIKE 'e%';
SELECT * FROM peliculas WHERE peli_nombre LIKE '%e';
SELECT * FROM peliculas WHERE peli_nombre LIKE '%e%';

