-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2022 a las 00:44:42
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `clave_categoria` int(9) NOT NULL,
  `nombre_categoria` varchar(70) NOT NULL,
  `fecha_categoria` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`clave_categoria`, `nombre_categoria`, `fecha_categoria`) VALUES
(1, 'ropa mujer', '2022-02-14'),
(2, 'ropa niño', '2022-02-14'),
(3, 'ropa hombre', '2022-02-14'),
(4, 'ropa de niña', '2022-02-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `clave_producto` int(9) NOT NULL,
  `nombre_producto` varchar(70) NOT NULL,
  `precio_producto` decimal(5,2) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `imagen_producto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`imagen_producto`)),
  `color_producto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`color_producto`)),
  `stock_producto` int(5) NOT NULL,
  `talla_producto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`talla_producto`)),
  `fecha_producto` date NOT NULL,
  `clave_provedor_producto` int(9) NOT NULL,
  `clave_categoria_producto` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`clave_producto`, `nombre_producto`, `precio_producto`, `descripcion_producto`, `imagen_producto`, `color_producto`, `stock_producto`, `talla_producto`, `fecha_producto`, `clave_provedor_producto`, `clave_categoria_producto`) VALUES
(1, 'CAMISA ADIDA', '999.99', 'UN CAMISA DE BUENA CALIDAD', '[\"901a9e255566056e3a9a6376dbdb800e.jpg\",\"0db53f3868bfed144f9b5c1a72c5ff03.jpg\",\"5e0bc29d6aa2624d2dd4b622e61b1847.jpg\"]', '[\"#2cd0f3\",\"#6574ba\"]', 348, '{\"numero\":[4,5],\"nombre\":[\"ch\",\"med\",\"x\",\"xl\"]}', '2022-02-14', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE `provedor` (
  `clave_provedor` int(9) NOT NULL,
  `nombre_provedor` varchar(70) NOT NULL,
  `fecha_provedor` date NOT NULL,
  `rfc_provedor` varchar(30) NOT NULL,
  `saldo_provedor` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`clave_provedor`, `nombre_provedor`, `fecha_provedor`, `rfc_provedor`, `saldo_provedor`) VALUES
(1, 'cuidado con el perro', '2022-02-14', '1HBJDHJ32RD', '0.00'),
(2, 'ADIDA', '2022-02-14', '243SDF465DFV', '1000.00'),
(3, 'REDBULL', '2022-02-14', '453EG65DGF43R', '4.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`clave_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`clave_producto`),
  ADD KEY `clave_provedor_producto` (`clave_provedor_producto`),
  ADD KEY `clave_categoria_producto` (`clave_categoria_producto`);

--
-- Indices de la tabla `provedor`
--
ALTER TABLE `provedor`
  ADD PRIMARY KEY (`clave_provedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `clave_categoria` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `clave_producto` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `provedor`
--
ALTER TABLE `provedor`
  MODIFY `clave_provedor` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`clave_provedor_producto`) REFERENCES `provedor` (`clave_provedor`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`clave_categoria_producto`) REFERENCES `categoria` (`clave_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
