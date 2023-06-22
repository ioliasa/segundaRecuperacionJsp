-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 22-06-2023 a las 06:02:26
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recetas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE DATABASE RECETAS;
USE RECETAS;


CREATE TABLE `ingrediente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `unidad_medida` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nombre`, `unidad_medida`) VALUES
(2, 'Papa', NULL),
(3, 'Limón', NULL),
(4, 'Orégano', NULL),
(5, 'Pasta', NULL),
(6, 'Tomate', NULL),
(7, 'Cebolla', NULL),
(8, 'Ajo', NULL),
(9, 'Aceite de oliva', NULL),
(10, 'Lechuga', NULL),
(11, 'Pechuga de pollo', NULL),
(12, 'Croutons', NULL),
(13, 'Queso parmesano rallado', NULL),
(14, 'Tortillas de maíz', NULL),
(15, 'Aguacate', NULL),
(16, 'Tomate', NULL),
(17, 'Cebolla', NULL),
(18, 'Cilantro', NULL),
(19, 'Azúcar', NULL),
(20, 'Mantequilla', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`id`, `nombre`, `descripcion`, `imagen`, `username`) VALUES
(1, 'Pollo al horno con papas', 'Pollo al horno con papas, limón y especias.', 'https://i.imgur.com/PKgRhA4.jpg', 'jperez'),
(2, 'Pasta con salsa de tomate', 'Una pasta con salsa de tomate casera.', 'https://i.imgur.com/dpffKfj.jpg', 'mrodriguez'),
(3, 'Ensalada César', 'Una ensalada César con pollo y aderezo casero.', 'https://i.imgur.com/Vb3r1BG.jpg', 'jperez'),
(4, 'Tacos de pollo', 'Tacos de pollo con salsa de aguacate.', 'https://i.imgur.com/P7TKmJx.jpg', 'mrodriguez'),
(5, 'Burrito de frijoles', 'Un burrito vegetariano con frijoles, arroz y queso.', 'https://i.imgur.com/q0vVwJ1.jpg', 'jperez'),
(6, 'Hamburguesa con aguacate', 'Una hamburguesa con aguacate, queso y tocino.', 'https://i.imgur.com/JBkR6V1.jpg', 'mrodriguez'),
(7, 'Pollo a la plancha', 'Un pollo a la plancha con limón y especias.', 'https://i.imgur.com/0N4OcyR.jpg', 'jperez'),
(8, 'Papas al horno', 'Papas al horno con aceite de oliva y hierbas.', 'https://i.imgur.com/L41IRqT.jpg', 'mrodriguez'),
(9, 'Ensalada de quinoa', 'Una ensalada de quinoa con verduras y aderezo de limón.', 'https://i.imgur.com/nn9zgln.jpg', 'jperez'),
(10, 'Pollo en salsa de soja', 'Pollo en salsa de soja con cebolla y pimiento.', 'https://i.imgur.com/BmPKVfX.jpg', 'mrodriguez'),
(11, 'Ensalada de atún', 'Una ensalada de atún con lechuga, tomate y huevo.', 'https://i.imgur.com/wxXzf4K.jpg', 'mrodriguez'),
(12, 'Lasaña de carne', 'Una lasaña de carne con salsa de tomate y queso.', 'https://i.imgur.com/AGFxbZF.jpg', 'sramirez'),
(13, 'Pizza hawaiana', 'Una pizza hawaiana con piña y jamón.', 'https://i.imgur.com/2htK7sP.jpg', 'sramirez'),
(14, 'Sándwich de pollo', 'Un sándwich de pollo con lechuga y mayonesa.', 'https://i.imgur.com/6qD9nBt.jpg', 'sramirez'),
(15, 'Sopa de pollo y verduras', 'Una sopa de pollo y verduras con fideos.', 'https://i.imgur.com/3wAv8vP.jpg', 'sramirez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta_ingrediente`
--

CREATE TABLE `receta_ingrediente` (
  `receta_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `unidad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `receta_ingrediente`
--

INSERT INTO `receta_ingrediente` (`receta_id`, `ingrediente_id`, `cantidad`, `unidad`) VALUES
(2, 5, '500.00', 'gr de pasta'),
(2, 6, '6.00', 'tomates maduros'),
(2, 7, '1.00', 'cebolla'),
(2, 8, '3.00', 'dientes de ajo'),
(2, 9, '0.50', 'taza de aceite de oliva'),
(3, 10, '1.00', 'lechuga'),
(3, 11, '2.00', 'pechugas de pollo'),
(3, 12, '1.00', 'taza de croutons'),
(3, 13, '0.50', 'taza de queso parmesano rallado'),
(3, 14, '0.50', 'taza de aceite de oliva'),
(4, 15, '4.00', 'tortillas de maíz'),
(4, 16, '2.00', 'pechugas de pollo'),
(4, 17, '1.00', 'aguacate'),
(4, 18, '1.00', 'tomate'),
(4, 19, '1.00', 'cebolla'),
(4, 20, '0.25', 'taza de cilantro picado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `nombre`, `correo`, `password`, `role`) VALUES
('atorres', 'Ana Torres', 'ana@example.com', 'atorres', 'ADMIN'),
('cgomez', 'Carlos Gomez', 'carlos@example.com', 'password1234', 'USER'),
('iolia5sa1', 'ioliasa', 'pesssspe@example.com', 'pepe', 'USER'),
('ioliasa', 'pepe', 'pepe@example.com', 'pepe', 'USER'),
('jperez', 'Juan Perez', 'juan@example.com', 'password123', 'ADMIN'),
('lgarcia', 'Luis Garcia', 'luis@example.com', 'password789', 'ADMIN'),
('lhernandez', 'Lucia Hernandez', 'lucia@example.com', 'securepassword123', 'USER'),
('mrodriguez', 'Maria Rodriguez', 'maria@example.com', '1234abcd', 'ADMIN'),
('psanchez', 'Pedro Sanchez', 'pedro@example.com', 'securepassword', 'USER'),
('sramirez', 'Sofia Ramirez', 'sofia@example.com', 'pass123word', 'ADMIN');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indices de la tabla `receta_ingrediente`
--
ALTER TABLE `receta_ingrediente`
  ADD PRIMARY KEY (`receta_id`,`ingrediente_id`),
  ADD KEY `ingrediente_id` (`ingrediente_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `receta_ibfk_1` FOREIGN KEY (`username`) REFERENCES `usuario` (`username`);

--
-- Filtros para la tabla `receta_ingrediente`
--
ALTER TABLE `receta_ingrediente`
  ADD CONSTRAINT `receta_ingrediente_ibfk_1` FOREIGN KEY (`receta_id`) REFERENCES `receta` (`id`),
  ADD CONSTRAINT `receta_ingrediente_ibfk_2` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingrediente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
