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
    ('Eduardo Arroyo', 'Bienvenido(a) A Nuestro Estudio', 'ES GRATO CONOCERTE');

CREATE TABLE usuarios (
    user_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_nombres VARCHAR(100) NOT NULL,
    user_apellidos VARCHAR(100) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_img TEXT,
    user_pass VARCHAR(255) NOT NULL,
    user_token TEXT,
    user_status TINYINT DEFAULT 0 COMMENT 'status 0: usuario no activo, status 1: usuario activo',
    user_rol VARCHAR(50) NOT NULL DEFAULT 'suscriptor'
);

INSERT INTO usuarios (user_nombres, user_apellidos, user_email, user_pass, user_rol) VALUES
    ('Eduardo', 'Arroyo', 'eduardo@gmail.com', '123', 'admin');

CREATE TABLE portafolio (
    por_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    por_user_id INT NOT NULL,
    por_titulo VARCHAR(50) NOT NULL,
    por_subtitulo VARCHAR(50) NOT NULL,
    por_imgSmall TEXT NOT NULL,
    por_imgLarge TEXT NOT NULL,
    por_contenido TEXT NOT NULL,
    por_fecha DATE NOT NULL,
    por_status VARCHAR(20) NOT NULL,
    por_vistas INT DEFAULT 0,
    por_delete TINYINT DEFAULT 1 COMMENT '0: desactivado, 1: activo'
);

INSERT INTO portafolio (por_user_id, por_titulo, por_subtitulo, por_imgSmall, por_imgLarge, por_contenido, por_fecha, por_status) VALUES
    (1, 'Threads', 'Illustration', '01-thumbnail.jpg', '01-full.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat nulla eos explicabo quidem nesciunt quod ipsa laborum numquam, provident ab consectetur atque consequatur porro, molestias, alias at. Accusamus, iste voluptas!', NOW(), 'publicado');

CREATE TABLE comentarios (
    com_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    com_user_id INT NOT NULL,
    com_por_id INT NOT NULL,
    com_mensaje VARCHAR(100) NOT NULL,
    com_fecha DATETIME NOT NULL,
    com_status TINYINT DEFAULT 0 NOT NULL COMMENT '0: pendiente, 1: aprobado'
);

SELECT * FROM portafolio;
SELECT SUM(por_vistas) FROM portafolio WHERE por_user_id = 1;

SELECT * FROM portafolio a INNER JOIN comentarios b ON a.por_id = b.com_por_id WHERE a.por_user_id = 1