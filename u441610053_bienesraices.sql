-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2022 a las 04:34:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u441610053_bienesraices`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `imagen` text DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'casa', NULL, '2022-03-30', '2022-03-30'),
(2, 'Departamento', NULL, '2022-03-30', '2022-03-30'),
(3, 'condominio', NULL, '2022-03-30', '2022-03-30'),
(4, 'pedro', NULL, '2022-03-31', '2022-03-31'),
(5, 'casa Habitacion 2', NULL, '2022-03-30', '2022-03-30'),
(6, 'pedro', NULL, '2022-03-31', '2022-03-31'),
(7, 'pedro', NULL, '2022-03-31', '2022-03-31'),
(8, 'pedro3', NULL, '2022-03-31', '2022-03-31'),
(9, 'pedro33', NULL, '2022-03-31', '2022-03-31'),
(10, 'pedro333', NULL, '2022-03-31', '2022-03-31'),
(11, 'pedro3333', NULL, '2022-03-31', '2022-03-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'En Venta', '2022-03-25', '2022-03-25'),
(2, 'Vendido', '2022-03-25', '2022-03-25'),
(73, 'test9', '2022-04-11', '2022-04-11'),
(74, 'casa con jardin', '2022-04-11', '2022-04-13'),
(75, 'test2', '2022-04-11', '2022-04-11'),
(76, 'casa de campo', '2022-04-11', '2022-04-13'),
(77, 'casa grande', '2022-04-11', '2022-04-13'),
(78, 'test5', '2022-04-11', '2022-04-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`imagen`)),
  `urlvideo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`urlvideo`)),
  `descripcion` text NOT NULL,
  `habitaciones` int(2) NOT NULL,
  `wc` int(2) NOT NULL,
  `estacionamiento` int(1) NOT NULL,
  `estadoid` int(11) NOT NULL,
  `categoriaid` int(11) NOT NULL,
  `ubicacion` text NOT NULL,
  `coordenadas` text DEFAULT NULL,
  `tipoid` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `titulo`, `precio`, `imagen`, `urlvideo`, `descripcion`, `habitaciones`, `wc`, `estacionamiento`, `estadoid`, `categoriaid`, `ubicacion`, `coordenadas`, `tipoid`, `updated_at`, `created_at`) VALUES
(1, 'casa en la playa', '99999.99', 'null', 'null', 'hermosa casa en lka playa', 8, 2, 2, 1, 2, 'desconocida', NULL, 2, '2022-03-31', '2022-03-31'),
(2, 'casa en la playa', '12345.00', 'null', 'null', 'hermosa casa en lka playa', 8, 2, 2, 1, 2, 'desconocida', NULL, 2, '2022-03-31', '2022-03-31'),
(3, 'casa en la playa', '1234567.00', 'null', 'null', 'hermosa casa en lka playa', 8, 2, 2, 1, 2, 'desconocida', NULL, 2, '2022-03-31', '2022-03-31'),
(4, 'casa en la playa', '12345678.00', 'null', 'null', 'hermosa casa en lka playa', 8, 2, 2, 1, 2, 'desconocida', NULL, 2, '2022-03-31', '2022-03-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentas`
--

CREATE TABLE `rentas` (
  `id` int(11) NOT NULL,
  `propiedadid` int(11) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `nombrecliente` varchar(70) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `adelanto` decimal(7,2) NOT NULL,
  `totalpagar` decimal(7,2) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `updated_at`, `created_at`) VALUES
(1, 'Venta', '2022-03-30', '2022-03-30'),
(2, 'Renta', '2022-03-30', '2022-03-30'),
(3, 'Renta Vacacional', '2022-03-30', '2022-03-30'),
(4, 'pedro3333', '2022-03-31', '2022-03-31'),
(5, 'Renta Nueva 3', '2022-03-30', '2022-03-30'),
(6, 'Renta Nueva', '2022-03-30', '2022-03-30'),
(9, 'renta para caballo', '2022-04-13', '2022-04-13'),
(10, 'renta pra caballo2', '2022-04-13', '2022-04-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(70) NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `token` varchar(60) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `tipo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'veronica', 'lizarraga ramos', 'veronica@bienesraices.com', '$2y$10$YIfeEZBRXijeoiU1e57C5uC//PCUsTR9nQBvw/vnG6gs8M1KoNVOy', 1, '', NULL, NULL),
(3, 'ismael', 'lizarraga ramos', 'ismael@bienesraices.com', '$2y$10$RHb15Ie7S9ZlvVG66ymzP.PiIOEGy.ojm59DBdRBF5DSf9Q7BX0ay', 1, '62577be9520fc', NULL, '2022-04-14'),
(4, 'erick', 'lizarraga ramos', 'erick@root.com', '$2y$10$1SV90Vk2WaJyAqnNE7kVcOu17mfbBrdDbM6Fv/8ZZ1C/Ljt7e/Z8G', 1, '6252322a6f0c1', '2022-03-21', '2022-04-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoriaid`),
  ADD KEY `tipoid` (`tipoid`),
  ADD KEY `estadoid` (`estadoid`);

--
-- Indices de la tabla `rentas`
--
ALTER TABLE `rentas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propiedadid` (`propiedadid`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rentas`
--
ALTER TABLE `rentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD CONSTRAINT `propiedades_ibfk_1` FOREIGN KEY (`tipoid`) REFERENCES `tipos` (`id`),
  ADD CONSTRAINT `propiedades_ibfk_2` FOREIGN KEY (`estadoid`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `rentas`
--
ALTER TABLE `rentas`
  ADD CONSTRAINT `rentas_ibfk_1` FOREIGN KEY (`propiedadid`) REFERENCES `propiedades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
