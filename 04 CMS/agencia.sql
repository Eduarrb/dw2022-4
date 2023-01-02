-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-01-2023 a las 18:00:07
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia`
--
CREATE DATABASE IF NOT EXISTS `agencia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agencia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_por_id` int(11) NOT NULL,
  `com_mensaje` varchar(100) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: pendiente, 1: aprobado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`com_id`, `com_user_id`, `com_por_id`, `com_mensaje`, `com_fecha`, `com_status`) VALUES
(1, 2, 3, 'este es el primer comentario', '2022-12-23 22:24:32', 1),
(2, 1, 3, '', '2022-12-26 19:42:06', 2),
(3, 1, 2, 'Este es mi comentario', '2022-12-26 21:40:59', 1),
(4, 3, 3, 'Este es el comentario de carlos', '2022-12-28 19:40:29', 0),
(5, 3, 4, 'Este es el comentario del mismo carlos', '2022-12-28 20:52:53', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `hea_logo` varchar(50) NOT NULL,
  `hea_subtitulo` varchar(100) NOT NULL,
  `hea_titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `header`
--

INSERT INTO `header` (`hea_logo`, `hea_subtitulo`, `hea_titulo`) VALUES
('Eduardo el Ninja Web', 'Bienvenido A Nuestro Estudio', 'es grato conocerte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

DROP TABLE IF EXISTS `portafolio`;
CREATE TABLE `portafolio` (
  `por_id` int(10) UNSIGNED NOT NULL,
  `por_user_id` int(11) NOT NULL,
  `por_titulo` varchar(50) NOT NULL,
  `por_subtitulo` varchar(50) NOT NULL,
  `por_imgSmall` text NOT NULL,
  `por_imgLarge` text NOT NULL,
  `por_contenido` text NOT NULL,
  `por_fecha` date NOT NULL,
  `por_status` varchar(20) NOT NULL,
  `por_vistas` int(11) DEFAULT 0,
  `por_delete` tinyint(4) DEFAULT 1 COMMENT '0: desactivado, 1: activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `portafolio`
--

INSERT INTO `portafolio` (`por_id`, `por_user_id`, `por_titulo`, `por_subtitulo`, `por_imgSmall`, `por_imgLarge`, `por_contenido`, `por_fecha`, `por_status`, `por_vistas`, `por_delete`) VALUES
(1, 1, 'Threads', 'Illustration', '01-thumbnail.jpg', '01-full.jpg', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat nulla eos explicabo quidem nesciunt quod ipsa laborum numquam, provident ab consectetur atque consequatur porro, molestias, alias at. Accusamus, iste voluptas!', '2022-12-16', 'publicado', 44, 1),
(2, 1, 'Explore', 'Graphic Design', '8a55577f2f1150415fbe8e65d88ec1ce.jpg', 'ff7af0106e0811e55f97d7fb61049fa2.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis assumenda, labore odit quis explicabo deleniti exercitationem ab molestiae facilis soluta ipsum ipsa, aperiam voluptas impedit quasi asperiores, consequuntur vitae id magni. Itaque, porro? Dolore repellat voluptatibus nulla, culpa mollitia debitis illum non aut animi cumque amet blanditiis similique aliquid, tenetur earum exercitationem excepturi rerum eum quos harum. Voluptatibus fugiat quisquam error earum, culpa sapiente rerum, soluta iste repellendus unde voluptate consequatur saepe quo animi facere odio temporibus perferendis dignissimos aperiam blanditiis delectus a. Sint nobis quas ratione, ut impedit ex nisi beatae dolor cum, temporibus, aliquid soluta cumque magnam id.', '2022-12-21', 'publicado', 8, 1),
(3, 1, 'Finish', 'Identity', '9ef2388b6844504b117ad2f962093572.jpg', 'aa0d4cf10db700032514d4c76db89b50.jpg', 'Contenido', '2022-12-21', 'publicado', 28, 1),
(4, 3, 'Lines', 'Branding', '1178d60353b520f14d6931d24d4bdfff.jpg', '906b42c4373deb90d366c5e15ef71dc5.jpg', 'Contenido hecho por Carlos', '2022-12-28', 'publicado', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_nombres` varchar(100) NOT NULL,
  `user_apellidos` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_img` text DEFAULT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_token` text DEFAULT NULL,
  `user_status` tinyint(4) DEFAULT 0 COMMENT 'status 0: usuario no activo, status 1: usuario activo',
  `user_rol` varchar(50) NOT NULL DEFAULT 'suscriptor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `user_nombres`, `user_apellidos`, `user_email`, `user_img`, `user_pass`, `user_token`, `user_status`, `user_rol`) VALUES
(1, 'Eduardo', 'Arroyo', 'eduardo@gmail.com', NULL, '$2y$12$0zms0hWeabEjI9ZtbXOAYObSASvR7XDafXqD6i.0VogEL5qZv9/mC', '', 1, 'admin'),
(2, 'Jaimito', 'Perez', 'jaimito@gmail.com', NULL, '$2y$12$zb1QPZVOqCbsyMHEybVsTu7M478.kR5OAon1t16uI9Khgp2mjFaIS', '', 1, 'suscriptor'),
(3, 'Carlos', 'Casas', 'carlos@gmail.com', NULL, '$2y$12$su2EFBSHmqcWDwNG3WTadehewkIvZ/raah3uFPE9lPw2pf0Q2bejm', '', 1, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`por_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `por_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
