-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-04-2015 a las 00:35:20
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `redsocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE IF NOT EXISTS `amigos` (
  `idamigo` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailamigo` varchar(100) NOT NULL,
  PRIMARY KEY (`idamigo`),
  UNIQUE KEY `idamigo` (`idamigo`),
  UNIQUE KEY `idamigo_2` (`idamigo`),
  KEY `email` (`email`,`emailamigo`),
  KEY `emailamigo` (`emailamigo`),
  KEY `email_2` (`email`,`emailamigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bandas`
--

CREATE TABLE IF NOT EXISTS `bandas` (
  `id_nombre` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `idcom` int(11) NOT NULL AUTO_INCREMENT,
  `idpub` int(11) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcom`),
  KEY `idpub` (`idpub`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idcom`, `idpub`, `texto`, `email`, `fecha`) VALUES
(1, 2, 'hola\r\n', 'perroscallejeros12@gmail.com', '2013-05-09 18:21:16'),
(2, 4, 'hola', 'perroscallejeros12@gmail.com', '2013-05-13 15:14:03'),
(3, 4, 'kjgkjgh', 'perroscallejeros12@gmail.com', '2013-05-13 15:14:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `idfotos` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `idmf` int(11) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(70) NOT NULL,
  PRIMARY KEY (`idfotos`),
  KEY `email` (`email`,`idmf`),
  KEY `idmf` (`idmf`),
  KEY `idmf_2` (`idmf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE IF NOT EXISTS `grupos` (
  `idg` int(30) NOT NULL AUTO_INCREMENT,
  `idmg` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`idg`),
  UNIQUE KEY `idg` (`idg`),
  KEY `idmg` (`idmg`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE IF NOT EXISTS `intereses` (
  `idintereses` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idintereses`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrupos`
--

CREATE TABLE IF NOT EXISTS `migrupos` (
  `idmg` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmg`),
  KEY `idmg` (`idmg`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misfotos`
--

CREATE TABLE IF NOT EXISTS `misfotos` (
  `idmf` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nombrealbum` varchar(50) NOT NULL,
  PRIMARY KEY (`idmf`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `idperfil` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `edocivil` varchar(50) NOT NULL,
  `ocupacion` varchar(50) NOT NULL,
  `estudios` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`idperfil`),
  KEY `idperfil` (`idperfil`),
  KEY `email` (`email`),
  KEY `idperfil_2` (`idperfil`),
  KEY `email_2` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE IF NOT EXISTS `publicaciones` (
  `idpub` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `imagen` varchar(30) NOT NULL,
  `video` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpub`),
  KEY `idpub` (`idpub`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`idpub`, `email`, `texto`, `imagen`, `video`, `fecha`) VALUES
(1, 'perroscallejeros12@gmail.com', 'hola', '', '', '2013-05-09 18:20:52'),
(2, 'perroscallejeros12@gmail.com', 'jkgkgkjhgj', '', '', '2013-05-09 18:21:05'),
(3, 'perroscallejeros12@gmail.com', 'dfgw,k', '', '', '2013-05-13 15:13:47'),
(4, 'perroscallejeros12@gmail.com', 'hola', '', '', '2013-05-13 15:13:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
  `idconf` int(30) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `emailamigo` varchar(30) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`idconf`),
  KEY `email` (`email`,`emailamigo`),
  KEY `emailamigo` (`emailamigo`),
  KEY `email_2` (`email`,`emailamigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fechanac` date NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `fotos` varchar(30) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `pass`, `fechanac`, `nombre`, `sexo`, `status`, `fotos`) VALUES
('perroscallejeros12@gmail.com', '12345', '2009-05-13', 'charly', 'Hombre', 'no se', 'uno.jpg');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD CONSTRAINT `amigos_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `amigos_ibfk_2` FOREIGN KEY (`emailamigo`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `bandas`
--
ALTER TABLE `bandas`
  ADD CONSTRAINT `bandas_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idpub`) REFERENCES `publicaciones` (`idpub`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fotos_ibfk_2` FOREIGN KEY (`idmf`) REFERENCES `misfotos` (`idmf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`idmg`) REFERENCES `migrupos` (`idmg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grupos_ibfk_2` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD CONSTRAINT `intereses_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `migrupos`
--
ALTER TABLE `migrupos`
  ADD CONSTRAINT `migrupos_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `perfil_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
