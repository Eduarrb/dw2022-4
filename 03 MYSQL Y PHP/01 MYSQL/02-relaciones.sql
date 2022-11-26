-- 💡💡 RELACIONAR TABLAS SIN EL USO DE LLAVAES PRIMARIAS Y FORANEAS 💡💡
CREATE TABLE personajes (
    per_act_id INT NOT NULL,
    per_peli_id INT NOT NULL,
    per_nombre VARCHAR(100) NOT NULL
);

INSERT INTO personajes (per_act_id, per_peli_id, per_nombre) VALUES
    (1, 1, 'Spiderman'),
    (2, 1, 'MJ'),
    (3, 2, 'Neo'),
    (4, 2, 'Trinity'),
    (5, 4, 'Jack'),
    (6, 4, 'Rose'),
    (9, 11, 'James Bond'),
    (10, 11, 'Chica Bond'),
    (12, 1, 'Spiderman Tobbie');

-- ⚡⚡ REALACIONAR 2 TABLAS
-- PELICULA | PERSONAJES 
-- REFERENCIAS DE TABLAS
SELECT 
    peliculas.peli_nombre,
    personajes.per_nombre
FROM peliculas, personajes
    WHERE peliculas.peli_id = personajes.per_peli_id

-- NOMBRES Y APELLIDOS DEL ACTOR | PERSONAJE

SELECT
    CONCAT(actores.act_nombres, ' ', actores.act_apellidos) AS actor,
    personajes.per_nombre
    FROM personajes, actores
        WHERE personajes.per_act_id = actores.act_id

-- 💡💡 ALIAS DE TABLAS
SELECT
    CONCAT(ac.act_nombres, ' ', ac.act_apellidos) AS actor,
    pe.per_nombre
    FROM personajes pe, actores ac
        WHERE pe.per_act_id = ac.act_id

-- NOMBRE DE PELICULA | PERSONAJE | FECHA ESTRENO | RESTRICION = PG-16
SELECT 
    a.peli_nombre,
    b.per_nombre,
    a.peli_estreno,
    a.peli_restricciones
    FROM peliculas a, personajes b
        WHERE a.peli_id = b.per_peli_id
        AND a.peli_restricciones = 'pg-13'

-- 💡💡 3 TABLAS
SELECT *
    FROM peliculas a, personajes b, actores c
    WHERE a.peli_id = b.per_peli_id
        AND b.per_act_id = c.act_id