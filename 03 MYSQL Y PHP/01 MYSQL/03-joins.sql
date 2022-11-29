-- ⚡⚡ JOINS ⚡⚡

SELECT *
    FROM actores a, personajes b
        WHERE a.act_id = b.per_act_id
----------------------------------------------------------------
-- ⚡⚡ 2 TABLAS
SELECT *
    FROM actores a
        INNER JOIN personajes b
            ON a.act_id = b.per_act_id
-------------------------------------------------------------------
-- DIRECTORES +  PELICULAS
SELECT *
    FROM directores a
        INNER JOIN peliculas b
            ON a.dire_id = b.peli_dire_id
----------------------------------------------------------------------
-- PELICULAS + PERSONAJES
SELECT *
    FROM peliculas a
        INNER JOIN personajes b
            ON a.peli_id = b.per_peli_id
-----------------------------------------------------------------------
-- ⚡⚡ LEFT
SELECT *
    FROM directores a
        LEFT JOIN peliculas b
            ON a.dire_id = b.peli_dire_id

SELECT *
    FROM peliculas a
        LEFT JOIN directores b
            ON a.peli_dire_id = b.dire_id

SELECT *
    FROM actores a
        LEFT JOIN personajes b
            ON a.act_id = b.per_act_id

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restricciones) VALUES
    ('Batman', 'Ciencia Ficción', '2022-03-05', 'PG-16')

INSERT INTO directores (dire_nombres, dire_apellidos) VALUES
    ('Ron', 'Howard'),
    ('Steven', 'Spilberg'),
    ('Quentin', 'Tarantino'),
    ('Night', 'Salaman')

SELECT *
    FROM peliculas a
        RIGHT JOIN directores b
            ON a.peli_dire_id = b.dire_id

------------------------------------------------------------------------------
-- ⚡⚡ 3 TABLAS
-- PELICULAS - PERSONAJES - ACTORES
SELECT *
    FROM peliculas a
        INNER JOIN personajes b ON a.peli_id = b.per_peli_id
        INNER JOIN actores c ON c.act_id = b.per_act_id

-- PELICULAS - PERSONAJES - DIRECTORES
SELECT *
    FROM peliculas a
        INNER JOIN personajes b ON a.peli_id = b.per_peli_id
        INNER JOIN directores c ON a.peli_dire_id = c.dire_id 
-------------------------------------------------------------------
SELECT *
    FROM peliculas a
        LEFT JOIN personajes b ON a.peli_id = b.per_peli_id
        LEFT JOIN actores c ON c.act_id = b.per_act_id
------------------------------------------------------------------
SELECT * 
    FROM personajes a
        INNER JOIN actores b ON a.per_act_id = b.act_id
        INNER JOIN peliculas c ON a.per_peli_id = c.peli_id -- A
        RIGHT JOIN directores d ON c.peli_dire_id = d.dire_id -- B