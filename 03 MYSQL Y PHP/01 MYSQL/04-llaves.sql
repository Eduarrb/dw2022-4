ALTER TABLE peliculas CHANGE COLUMN peli_dire_id peli_dire_id INT(10) UNSIGNED

-- 🔥🔥 RESTRICCIONES
-- RESTRICT
    -- por defecto, impide realizar modificaciones que atenten la 
    -- integridad referencial de las tablas, no permite borrar
-- CASCADE
    -- al actualizar o borrar los datos referenciados, tambien se actualiza o se borra los
    -- datos de la tabla dependiente
-- SET NULL
    -- se establece campos NULL a la tabla dependiente al momento de cambiar o borrar el campo
-- NO ACTION: no hace nada

ALTER TABLE peliculas
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id)
    REFERENCES directores (dire_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT

DELETE FROM directores WHERE dire_id = 11;

DELETE FROM peliculas WHERE peli_id = 1

UPDATE peliculas SET peli_dire_id = 1 WHERE peli_id = 13

ALTER TABLE peliculas DROP CONSTRAINT fk_direId

ALTER TABLE peliculas
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id)
    REFERENCES directores (dire_id)
    ON DELETE CASCADE ON UPDATE CASCADE

DELETE FROM directores WHERE dire_id = 3