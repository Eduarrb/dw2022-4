-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 01:36:05
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
-- Base de datos: `dw2022_5`
--
CREATE DATABASE IF NOT EXISTS `dw2022_5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dw2022_5`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Colleman'),
(3, 'Keanu', 'Reeves'),
(4, 'Carrie-Anne', 'Moss'),
(5, 'Leonardo', 'Dicaprio'),
(6, 'kate', 'Winslet'),
(7, 'Jack', 'Nicolson'),
(8, 'Shelly', 'Duvall'),
(9, 'Pierce', 'Brosnan'),
(10, 'Izabella', 'Scorupco'),
(11, 'Vincent', 'D\'onofrio'),
(12, 'Tobbye', 'Maguire');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

DROP TABLE IF EXISTS `directores`;
CREATE TABLE `directores` (
  `dire_id` int(10) UNSIGNED NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`) VALUES
(1, 'Jon', 'Watts'),
(2, 'Lana', 'Wachowsky'),
(3, 'James', 'Cameron'),
(4, 'Christopher', 'Nolan'),
(5, 'Stanley', 'Kubric'),
(6, 'John', 'Krasinski'),
(7, 'Martin', 'Campbell');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_dire_id` int(11) DEFAULT NULL,
  `peli_nombre` varchar(255) NOT NULL,
  `peli_genero` varchar(100) NOT NULL,
  `peli_estreno` date NOT NULL,
  `peli_restricciones` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_dire_id`, `peli_nombre`, `peli_genero`, `peli_estreno`, `peli_restricciones`) VALUES
(1, 1, 'Spiderman: No way Home', 'Ciencia Ficción', '2021-12-15', 'PG-13'),
(2, 2, 'Matrix', 'ciencia ficcion', '1999-12-24', 'PG-13'),
(3, NULL, 'El Código Enigma', 'Bélica', '2017-08-29', 'PG-16'),
(4, 3, 'Titanic', 'Drama romantico', '1997-09-09', 'PG-16'),
(5, 4, 'Interstellar', 'Ciencia Ficción', '2014-10-10', 'PG'),
(6, 5, 'El Resplandor', 'Terror', '1980-05-05', 'PG-18'),
(7, NULL, 'Un lugar en silencio', 'terror', '1996-05-05', 'PG-16'),
(8, 3, 'Avatar', 'ciencia ficcion', '2009-10-18', 'PG'),
(9, 4, 'Inception', 'ciencia ficción', '2010-05-09', 'PG'),
(10, 6, 'Nacidos para matar', 'Acción', '2000-01-01', 'PG-16'),
(11, 7, '007: golden eye', 'accion', '1992-02-02', 'PG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

DROP TABLE IF EXISTS `personajes`;
CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'Spiderman'),
(2, 1, 'MJ'),
(3, 2, 'Neo'),
(4, 2, 'Trinity'),
(5, 4, 'Jack'),
(6, 4, 'Rose'),
(9, 11, 'James Bond'),
(10, 11, 'Chica Bond'),
(12, 1, 'Spiderman Tobbie');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
