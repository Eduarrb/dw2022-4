CREATE DATABASE agencia;

USE agencia

CREATE TABLE header (
    hea_logo VARCHAR(50) NOT NULL,
    hea_subtitulo VARCHAR(100) NOT NULL,
    hea_titulo VARCHAR(100) NOT NULL
)
-- tabla auditoria
--tipo: add, edit, delete
--id usuario,
--fecha
--modulo
INSERT INTO header (hea_logo, hea_subtitulo, hea_titulo) VALUES
    ('Eduardo Arroyo', 'Bienvenido(a) A Nuestro Estudio', 'ES GRATO CONOCERTE')
