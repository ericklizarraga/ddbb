-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2022 a las 20:02:30
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appsalon_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(9) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuarioid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `fecha`, `hora`, `usuarioid`) VALUES
(1, '2022-02-22', '12:51:00', 2),
(2, '2022-02-16', '13:51:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citasservicos`
--

CREATE TABLE `citasservicos` (
  `id` int(9) NOT NULL,
  `citaid` int(9) NOT NULL,
  `servicioid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citasservicos`
--

INSERT INTO `citasservicos` (`id`, `citaid`, `servicioid`) VALUES
(1, 1, 5),
(2, 1, 3),
(3, 1, 4),
(4, 2, 1),
(5, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(9) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `precio` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `precio`) VALUES
(1, ' corte de pelo mujer', '22.00'),
(2, ' corte de pelo niño', '12.00'),
(3, ' corte de pelo hombre', '213.00'),
(4, ' tinte de pelo del culo', '3.00'),
(5, ' corte de pelo niña', '33.00'),
(6, ' depilacion anal', '1.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `password` varchar(80) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `token` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `admin`, `confirmado`, `password`, `telefono`, `token`) VALUES
(1, ' sebas', 'lizarraga', 'sebas@sebas.com', 1, 1, '$2y$10$FArfH2H4suCf/cKcvzKpmufImEhEyfEOV8SQdGCqNqJOyjpwKZbAW', '123456780', ''),
(2, ' yo', 'lizarrga', 'erick@yo.com', 0, 1, '$2y$10$oJiYFFmEMldkpkSotq7Wq.pQB2SHqEI1CSuMmhtAe97ZXT0ZwSjP.', '1234567890', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citasservicos`
--
ALTER TABLE `citasservicos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `citasservicos`
--
ALTER TABLE `citasservicos`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
