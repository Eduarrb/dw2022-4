ALTER TABLE peliculas ADD COLUMN peli_img TEXT AFTER peli_dire_id

UPDATE peliculas SET peli_img = 'https://www.ecartelera.com/carteles/15800/15882/005_m.jpg' WHERE peli_id = 13

SELECT 
    a.peli_img,
    a.peli_nombre,
    CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director,
    a.peli_restricciones
    FROM peliculas a
        INNER JOIN directores b ON a.peli_dire_id = b.dire_id