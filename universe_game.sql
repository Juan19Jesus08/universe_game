-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2017 a las 01:54:36
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universe_game`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriavideojuego`
--

CREATE TABLE `categoriavideojuego` (
  `idCategoriaVideojuego` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriavideojuego`
--

INSERT INTO `categoriavideojuego` (`idCategoriaVideojuego`, `descripcion`) VALUES
(1, 'Deportes'),
(2, 'Musical'),
(3, 'Vehiculos'),
(4, 'Peleas'),
(5, 'Disparos'),
(6, 'Aventura'),
(7, 'Accion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `idClasificacion` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`idClasificacion`, `descripcion`) VALUES
(1, 'NiÃ±os'),
(2, 'Adolescentes'),
(3, 'Adultos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `email` varchar(100) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`email`, `nombre`, `apellidos`, `edad`, `sexo`) VALUES
('14030619@itcelaya.edu.mx', 'juan', 'padron', 21, 'M'),
('juanjesuspadrondiaz@gmail.com', 'juan jesus', 'padron diaz', 21, 'M'),
('universegame@gmail.com', 'prueba', 'prueba', 18, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companiaconsola`
--

CREATE TABLE `companiaconsola` (
  `idCompaniaConsola` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `companiaconsola`
--

INSERT INTO `companiaconsola` (`idCompaniaConsola`, `descripcion`) VALUES
(1, 'xbox360'),
(2, 'xboxone'),
(3, 'ps3'),
(4, 'ps4'),
(5, 'wiiu'),
(6, 'switch');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrolladora`
--

CREATE TABLE `desarrolladora` (
  `idDesarrolladora` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `desarrolladora`
--

INSERT INTO `desarrolladora` (`idDesarrolladora`, `descripcion`) VALUES
(1, 'Ubisoft'),
(2, 'Activision'),
(3, 'Capcom'),
(4, 'Konami'),
(5, 'Electronic Arts'),
(6, 'Techland'),
(7, 'Blizzard Entertainment');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `idVenta` int(11) NOT NULL,
  `idVideojuego` int(11) NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`idVenta`, `idVideojuego`, `total`, `cantidad`) VALUES
(12, 4, '4000', 4),
(13, 1, '30000', 30),
(14, 1, '1000', 1),
(15, 19, '1600', 2),
(16, 15, '500', 1),
(17, 15, '1000', 2),
(18, 15, '2500', 5),
(19, 3, '4000', 4),
(20, 1, '3000', 3),
(21, 4, '2000', 2),
(22, 1, '2000', 2),
(23, 4, '6000', 6),
(24, 4, '6000', 6),
(25, 4, '6000', 6),
(26, 4, '6000', 6),
(27, 1, '9000', 9),
(28, 1, '2000', 2),
(29, 1, '5000', 5),
(30, 1, '2000', 2),
(31, 1, '2000', 2),
(32, 2, '2000', 2),
(33, 2, '2000', 2),
(34, 5, '2500', 5),
(35, 5, '500', 1),
(36, 1, '2000', 2),
(37, 1, '2000', 2),
(38, 1, '2000', 2),
(39, 1, '7000', 7),
(40, 1, '9000', 9),
(41, 1, '2000', 2),
(42, 3, '2000', 2),
(43, 45, '890', 1),
(44, 49, '6720', 7),
(45, 150, '11000', 11),
(46, 3, '1000', 1),
(47, 4, '3000', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `idnews` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`idnews`, `titulo`, `imagen`, `descripcion`) VALUES
(2, 'Call of Duty ', 'call.jpg', 'EL 15 de Diciembre se revelaran los nuevos DLC de zombies'),
(3, 'BattleField1', 'halo.jpg', 'Gran juego de la segunda guerra mundial WW2'),
(4, 'Halo XX', 'halox.jpg', 'Bungie Regresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `imagen`, `descripcion`) VALUES
(1, 'Detallan las novedades de Street Fighter V: Arcade Edition', 'news1.jpg', 'Street Fighter V: Arcade Edition debutarÃ¡ el prÃ³ximo 16 de enero de 2018 en PlayStation 4 y PC. Si contemplas adquirir esta nueva versiÃ³n del juego o descargar los extras, sin duda te interesarÃ¡ conocer las novedades que te ofrecerÃ¡ el tÃ­tulo. Como su nombre lo indica, el aÃ±adido principal es el esperado modo Arcade.\r\n\r\nDe acuerdo con Capcom, esta modalidad te ofrecerÃ¡ bastantes horas de contenido, no sÃ³lo por la gran cantidad de personajes disponibles ahora, sino tambiÃ©n porque habrÃ¡ 6 rutas diferentes. '),
(2, 'WWE 2K18 ya tiene fecha de lanzamiento para Switch', 'news2.jpg', 'Para los fans de la lucha libre de la WWE y que son poseedores de un Switch hay excelentes noticias pues 2K Games anunciÃ³ la fecha de lanzamiento oficial de WWE 2K18 para la consola de Nintendo.\r\n\r\nHoy 2K Games informÃ³, mediante un comunicado de prensa, que la versiÃ³n de WWE 2K18 para Switch ya estÃ¡ lista y debutarÃ¡ el 6 de diciembre, o sea, en cuestiÃ³n de horas. El tÃ­tulo debutÃ³ el 17 de octubre para PS4, Xbox One y PC pero aunque se habÃ­a confirmado su presencia en la consola de Nintendo, no se tenga fecha oficial. SegÃºn el comunicado, WWE 2K18 en Switch tendrÃ¡ los principales modos de juego incluyendo MyCareer, Road to Glory y Universe Mode. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL,
  `permiso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `permiso`) VALUES
(1, 'Cliente'),
(2, 'Categoria_Videojuego'),
(3, 'Clasificacion'),
(4, 'Compania_Consola'),
(5, 'Desarrolladora'),
(6, 'Detalle_Venta'),
(7, 'Noticias'),
(8, 'Permiso'),
(9, 'Rol'),
(10, 'Rol_Permiso'),
(11, 'Usuario'),
(12, 'Usuario_Rol'),
(13, 'Perfil'),
(14, 'Venta'),
(15, 'Detalle_Venta'),
(16, 'Videojuegos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permiso`
--

CREATE TABLE `rol_permiso` (
  `id_rol` int(11) DEFAULT NULL,
  `id_permiso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol_permiso`
--

INSERT INTO `rol_permiso` (`id_rol`, `id_permiso`) VALUES
(2, 13),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 15),
(1, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(32) NOT NULL,
  `contrasena_temp` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `contrasena`, `contrasena_temp`) VALUES
('14030619@itcelaya.edu.mx', 'a2a1706aa8a9ca6f76bb47cbee4c0070', 'dde5e0712ecb7d1363403db2795f70ae'),
('juanjesuspadrondiaz@gmail.com', '71e368c1cd2ed3b458cc2a6dd505b208', 'c8eb935b0468a5a86f99f33129fa3915'),
('luislao@itcelaya.edu.mx', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
('universegame@gmail.com', 'c5ab99fdcb266f18a3c476f0e4999dc4', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `email` varchar(100) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`email`, `id_rol`) VALUES
('luislao@itcelaya.edu.mx', 1),
('juanjesuspadrondiaz@gmail.com', 2),
('universegame@gmail.com', 2),
('universegame@gmail.com', 2),
('14030619@itcelaya.edu.mx', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `fechaventa` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `total`, `fechaventa`, `email`) VALUES
(1, '888', '2017-12-07', 'juanjesuspadrondiaz@gmail.com'),
(2, '1000', '2017-12-01', 'Universegame@gmail.com'),
(10, '4000', '2017-12-10', 'Universegame@gmail.com'),
(11, '4000', '2017-12-10', 'Universegame@gmail.com'),
(12, '4000', '2017-12-10', 'Universegame@gmail.com'),
(13, '30000', '2017-12-10', 'Universegame@gmail.com'),
(14, '1000', '2017-12-10', 'Universegame@gmail.com'),
(15, '1600', '2017-12-11', 'Universegame@gmail.com'),
(16, '500', '2017-12-11', 'Universegame@gmail.com'),
(17, '1000', '2017-12-11', 'Universegame@gmail.com'),
(18, '2500', '2017-12-11', 'Universegame@gmail.com'),
(19, '4000', '2017-12-11', 'Universegame@gmail.com'),
(20, '3000', '2017-12-11', 'Universegame@gmail.com'),
(21, '2000', '2017-12-13', 'Universegame@gmail.com'),
(22, '2000', '2017-12-13', 'Universegame@gmail.com'),
(23, '6000', '2017-12-13', 'Universegame@gmail.com'),
(24, '6000', '2017-12-13', 'juanjesuspadrondiaz@gmail.com'),
(25, '6000', '2017-12-13', 'juanjesuspadrondiaz@gmail.com'),
(26, '6000', '2017-12-13', 'Universegame@gmail.com'),
(27, '9000', '2017-12-13', 'Universegame@gmail.com'),
(28, '2000', '2017-12-13', 'Universegame@gmail.com'),
(29, '5000', '2017-12-13', 'Universegame@gmail.com'),
(30, '2000', '2017-12-13', 'Universegame@gmail.com'),
(31, '2000', '2017-12-13', 'Universegame@gmail.com'),
(32, '2000', '2017-12-13', 'Universegame@gmail.com'),
(33, '2000', '2017-12-13', 'Universegame@gmail.com'),
(34, '2500', '2017-12-13', 'Universegame@gmail.com'),
(35, '500', '2017-12-13', 'Universegame@gmail.com'),
(36, '2000', '2017-12-13', 'Universegame@gmail.com'),
(37, '2000', '2017-12-13', NULL),
(38, '2000', '2017-12-13', NULL),
(39, '7000', '2017-12-13', 'juanjesuspadrondiaz@gmail.com'),
(40, '9000', '2017-12-13', NULL),
(41, '2000', '2017-12-13', 'juanjesuspadrondiaz@gmail.com'),
(42, '2000', '2017-12-14', 'juanjesuspadrondiaz@gmail.com'),
(43, '890', '2017-12-14', NULL),
(44, '6720', '2017-12-14', 'juanjesuspadrondiaz@gmail.com'),
(45, '11000', '2017-12-14', '14030619@itcelaya.edu.mx'),
(46, '1000', '2017-12-14', NULL),
(47, '3000', '2017-12-14', 'juanjesuspadrondiaz@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `idVideojuego` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fechaLanzamiento` date DEFAULT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `idClasificacion` int(11) DEFAULT NULL,
  `idDesarrolladora` int(11) DEFAULT NULL,
  `idCategoriaVideojuego` int(11) DEFAULT NULL,
  `idCompaniaConsola` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`idVideojuego`, `nombre`, `fechaLanzamiento`, `portada`, `precio`, `idClasificacion`, `idDesarrolladora`, `idCategoriaVideojuego`, `idCompaniaConsola`) VALUES
(1, 'Fifa Soccer 2018', '2017-12-14', 'dep1.png', '1000', 2, 5, 1, 1),
(2, 'Pes 2018', '2017-12-09', 'dep2.png', '1000', 2, 4, 1, 1),
(3, 'Fifa 2015', '2017-12-27', 'dep3.png', '1000', 2, 1, 1, 1),
(4, 'NBA 2K18', '2017-12-19', 'dep4.png', '1000', 3, 2, 1, 1),
(5, 'MADDEN NFL 17', '2017-12-03', 'dep5.png', '500', 2, 5, 1, 1),
(6, 'FIFA STREET', '2017-12-01', 'dep6.png', '600', 2, 5, 1, 1),
(7, 'DANCE CENTRAL 3', '2017-12-15', 'mus1.png', '400', 2, 2, 2, 1),
(8, 'DANCE MASTER KINNECT', '2017-12-09', 'mus2.png', '500', 2, 2, 2, 1),
(9, 'LIPS NUMBER ONE HITS', '2017-12-02', 'mus3.png', '600', 2, 6, 2, 1),
(10, 'MICHAEL JACKSON THE EXPERINCE KINECT', '2017-12-07', 'mus4.png', '570', 2, 1, 2, 1),
(11, 'ZUMBA FITNESS WORLD PARTY', '2017-12-04', 'mus5.png', '600', 2, 6, 2, 1),
(12, 'DJ HERO 2', '2017-12-11', 'mus6.png', '300', 2, 2, 2, 1),
(13, 'FORZA HORIZON', '2017-12-05', 'car1.png', '400', 2, 3, 3, 1),
(14, 'CARS 3 DRIVEN TO WIN', '2017-12-06', 'car2.png', '600', 1, 4, 3, 1),
(15, 'FORZA HORIZON 2', '2017-12-09', 'car3.png', '500', 2, 4, 3, 1),
(16, 'FORZA MOTORSPORT 4', '2017-12-03', 'car4.png', '670', 2, 2, 3, 1),
(17, 'FORZA MOTROSPORT 3', '2017-12-13', 'car5.png', '700', 2, 1, 3, 1),
(18, 'NEED FOR SPEED RIVAL S', '2017-12-05', 'car6.png', '500', 2, 1, 3, 1),
(19, 'INJUSTICE GOODS AMONG US GOTY', '2017-12-16', 'peleas1.png', '800', 3, 3, 4, 1),
(20, 'WWE 2K17', '2017-12-16', 'peleas2.png', '890', 2, 2, 4, 1),
(21, 'DRAGON BALL Z', '2017-12-21', 'peleas3.png', '800', 2, 3, 4, 1),
(22, 'MORTAL KOMBAT VS DC', '2017-12-06', 'peleas4.png', '290', 2, 2, 4, 1),
(23, 'MORTAL KOMBAT', '2017-12-23', 'peleas5.png', '600', 2, 3, 4, 1),
(24, 'STREET FIGHTER', '2017-12-16', 'peleas6.png', '900', 2, 3, 4, 1),
(25, 'HALO 3 ODST', '2017-12-19', 'disparos1.png', '500', 2, 2, 5, 1),
(26, 'CALL OF DUTY', '2017-12-09', 'disparos2.png', '500', 2, 2, 5, 1),
(27, 'GEARS', '2017-12-09', 'disparos3.png', '500', 2, 2, 5, 1),
(28, 'GEARS4', '2017-12-09', 'disparos4.png', '500', 2, 2, 5, 1),
(29, 'HALO REACH', '2017-12-09', 'disparos5.png', '500', 2, 2, 5, 1),
(30, 'DESTINY', '2017-12-09', 'disparos6.png', '500', 2, 2, 5, 1),
(31, 'KINECT STARWARS', '2017-12-23', 'aventura1.png', '400', 1, 4, 6, 1),
(32, 'KINECT RUSH', '2017-12-23', 'aventura2.png', '400', 1, 4, 6, 1),
(33, 'LEGO MARVEL 2', '2017-12-23', 'aventura3.png', '400', 1, 4, 6, 1),
(34, 'LEGO STARWARS', '2017-12-23', 'aventura4.png', '400', 1, 4, 6, 1),
(35, 'LEGO MARVEL 1', '2017-12-23', 'aventura5.png', '400', 1, 4, 6, 1),
(36, 'LEGO JURASSIC', '2017-12-23', 'aventura6.png', '400', 1, 4, 6, 1),
(37, 'GRAND THEFT AUTO V', '2017-12-23', 'accion1.png', '780', 2, 2, 7, 1),
(38, 'ASSASINS CREED II', '2017-12-23', 'accion2.png', '780', 2, 2, 7, 1),
(39, 'ASSASINS CREED IV', '2017-12-23', 'accion3.png', '780', 2, 2, 7, 1),
(40, 'RESIDENT EVIL 6', '2017-12-23', 'accion4.png', '780', 2, 2, 7, 1),
(41, 'GRAND THEFT AUTO IV', '2017-12-23', 'accion5.png', '780', 2, 2, 7, 1),
(42, 'WATCH DOGS', '2017-12-23', 'accion6.png', '780', 2, 2, 7, 1),
(43, 'FIFA SOCCER 18', '2017-12-16', 'dep7.png', '890', 1, 2, 1, 2),
(44, 'WWE 2K 18', '2017-12-16', 'dep12.png', '890', 1, 2, 1, 2),
(45, 'NBA 2K 18', '2017-12-16', 'dep8.png', '890', 1, 2, 1, 2),
(46, 'MADDEN NFL 18', '2017-12-16', 'dep9.png', '890', 1, 2, 1, 2),
(47, 'PES 2018', '2017-12-16', 'dep10.png', '890', 1, 2, 1, 2),
(48, 'FIFA 17', '2017-12-16', 'dep11.png', '890', 1, 2, 1, 2),
(49, 'JUST DANCE 2016', '2017-12-22', 'mus7.png', '960', 1, 1, 2, 2),
(50, 'JUST DANCE 2018', '2017-12-16', 'mus8.png', '900', 2, 2, 2, 2),
(51, 'JUST DANCE 2015', '2017-12-16', 'mus9.png', '900', 2, 2, 2, 2),
(52, 'ZUMBA FITNESS', '2017-12-16', 'mus10.png', '900', 2, 2, 2, 2),
(53, 'JUST SING', '2017-12-16', 'mus11.png', '900', 2, 2, 2, 2),
(54, 'JUST DANCE 2017', '2017-12-16', 'mus12.png', '900', 2, 2, 2, 2),
(55, 'FORZA MOTORSPORT 7', '2017-12-23', 'car7.png', '990', 2, 2, 3, 2),
(56, 'FORZA HORIZON 3', '2017-12-16', 'car8.png', '980', 2, 2, 3, 2),
(57, 'NEED FOR SPEED ', '2017-12-16', 'car9.png', '980', 2, 2, 3, 2),
(58, 'CARS 3 ', '2017-12-16', 'car10.png', '980', 2, 2, 3, 2),
(59, 'FORZA 6 ', '2017-12-16', 'car11.png', '980', 2, 2, 3, 2),
(60, 'FORZA MOTORSPORT 5 ', '2017-12-16', 'car12.png', '980', 2, 2, 3, 2),
(61, 'MARVEL VS CAPCOM', '2017-12-23', 'peleas7.png', '1000', 2, 3, 4, 2),
(62, 'MORTAL KOMBAT XL', '2017-12-23', 'peleas8.png', '1000', 2, 3, 4, 2),
(63, 'INJUSTICE 2', '2017-12-23', 'peleas9.png', '1000', 2, 3, 4, 2),
(64, 'DRAGON BALL 2', '2017-12-23', 'peleas10.png', '1000', 2, 3, 4, 2),
(65, 'NARUTO SHIPPUDEN', '2017-12-23', 'peleas11.png', '1000', 2, 3, 4, 2),
(66, 'UFC', '2017-12-23', 'peleas12.png', '1000', 2, 3, 4, 2),
(67, 'CALL OF DUTY INFINITE WARFARE', '2017-12-23', 'disparos7.png', '980', 3, 2, 5, 2),
(68, 'DESTINY 2', '2017-12-23', 'disparos8.png', '980', 3, 2, 5, 2),
(69, 'TITANFALL 2', '2017-12-23', 'disparos9.png', '980', 3, 2, 5, 2),
(70, 'CALL OF DUTY BLACK OPS 3', '2017-12-23', 'disparos10.png', '980', 3, 2, 5, 2),
(71, 'BATTLEFIELD 1', '2017-12-23', 'disparos11.png', '980', 3, 2, 5, 2),
(72, 'CALL OF DUTY WWII', '2017-12-23', 'disparos12.png', '980', 3, 2, 5, 2),
(73, 'MINECRAFT', '2017-12-09', 'aventura7.png', '850', 1, 6, 6, 2),
(74, 'NINJAGO', '2017-12-09', 'aventura8.png', '850', 1, 6, 6, 2),
(75, 'LEGO MARVEL 1', '2017-12-09', 'aventura9.png', '850', 1, 6, 6, 2),
(76, 'ACASSINS CREED', '2017-12-09', 'aventura10.png', '850', 1, 6, 6, 2),
(77, 'SONIC FORCES', '2017-12-09', 'aventura11.png', '850', 1, 6, 6, 2),
(78, 'NARUTO SHIPPUDEN', '2017-12-09', 'aventura12.png', '850', 1, 6, 6, 2),
(79, 'STAR WARS BATTLEFRONT', '2017-12-16', 'accion7.png', '900', 2, 1, 7, 2),
(80, 'STAR WARS BATTLEFRON II', '2017-12-16', 'accion8.png', '900', 2, 1, 7, 2),
(81, 'WATCH DOGS 2', '2017-12-16', 'accion9.png', '900', 2, 1, 7, 2),
(82, 'DARK SOULS III', '2017-12-16', 'accion10.png', '900', 2, 1, 7, 2),
(83, 'STAR WARS BATTLE', '2017-12-16', 'accion11.png', '900', 2, 1, 7, 2),
(84, 'RISE OF THE TOMB RIDER', '2017-12-16', 'accion12.png', '900', 2, 1, 7, 2),
(85, 'FIFA 2018', '2017-12-09', 'dep13.png', '1000', 2, 5, 1, 3),
(86, 'PES 2018', '2017-12-09', 'dep14.png', '500', 2, 5, 1, 3),
(87, 'AAA', '2017-12-09', 'dep15.png', '500', 2, 5, 1, 3),
(88, 'FIFA 17', '2017-12-09', 'dep16.png', '500', 2, 5, 1, 3),
(89, 'NBA 2K17', '2017-12-09', 'dep17.png', '500', 2, 5, 1, 3),
(90, 'MADDEN NFL 17', '2017-12-09', 'dep18.png', '500', 2, 5, 1, 3),
(91, 'JUST DANCE 2016', '2017-12-16', 'mus13.png', '850', 2, 5, 2, 3),
(92, 'JUST DANCE 2017', '2017-12-16', 'mus14.png', '850', 2, 5, 2, 3),
(93, 'GUITAR HERO WARRIORS', '2017-12-16', 'mus15.png', '850', 2, 5, 2, 3),
(94, 'MICHAEL JACKSON', '2017-12-16', 'mus16.png', '850', 2, 5, 2, 3),
(95, 'DANCE ON BROADWAY', '2017-12-16', 'mus17.png', '850', 2, 5, 2, 3),
(96, 'DJ HERO 2', '2017-12-16', 'mus18.png', '850', 2, 5, 2, 3),
(97, 'NEED FOR SPEED HOT PURSUIT', '2017-12-23', 'car13.png', '900', 2, 5, 3, 3),
(98, 'NEED FOR SPEED MOST WANTED', '2017-12-23', 'car14.png', '900', 2, 5, 3, 3),
(99, 'NEED FOR SPEED RIVALS', '2017-12-23', 'car15.png', '900', 2, 5, 3, 3),
(100, 'GRAN TURISMO 6', '2017-12-23', 'car16.png', '900', 2, 5, 3, 3),
(101, 'PURE', '2017-12-23', 'car17.png', '900', 2, 5, 3, 3),
(102, 'F1 2010', '2017-12-23', 'car18.png', '900', 2, 5, 3, 3),
(103, 'INJUSTICE GODS', '2017-12-09', 'peleas13.png', '600', 1, 3, 4, 3),
(104, 'MORTAL KOMBAT', '2017-12-09', 'peleas14.png', '600', 1, 3, 4, 3),
(105, 'DRAGON BALL X', '2017-12-09', 'peleas15.png', '600', 1, 3, 4, 3),
(106, 'MORTAL KOMBAT', '2017-12-09', 'peleas16.png', '600', 1, 3, 4, 3),
(107, 'SUPER STREET FIGHTER IV', '2017-12-09', 'peleas17.png', '600', 1, 3, 4, 3),
(108, 'NARUTO SHIPPUDEN', '2017-12-09', 'peleas18.png', '600', 1, 3, 4, 3),
(109, 'CALL OF DUTY BLACK OPS 2', '2017-12-16', 'disparos13.png', '800', 2, 2, 5, 3),
(110, 'BATTLEFIELD 4', '2017-12-16', 'disparos14.png', '800', 2, 2, 5, 3),
(111, 'CALL OF DUTY GHOSTS ', '2017-12-16', 'disparos15.png', '800', 2, 2, 5, 3),
(112, 'CALL OF DUTY COLLECTION', '2017-12-16', 'disparos16.png', '800', 2, 2, 5, 3),
(113, 'MEDAL OF HONOR', '2017-12-16', 'disparos17.png', '800', 2, 2, 5, 3),
(114, 'DESTINY LEGENDARY', '2017-12-16', 'disparos18.png', '800', 2, 2, 5, 3),
(115, 'LEGO JURASSIC', '2017-12-09', 'aventura13.png', '780', 1, 5, 6, 3),
(116, 'SUPER HERO SQUAD', '2017-12-09', 'aventura14.png', '780', 1, 5, 6, 3),
(117, 'LEGO BATMAN 2', '2017-12-09', 'aventura15.png', '780', 1, 5, 6, 3),
(118, 'LEGO STARWARS', '2017-12-09', 'aventura16.png', '780', 1, 5, 6, 3),
(119, 'BATMAN ARKHAM ORIGINS', '2017-12-09', 'aventura17.png', '780', 1, 5, 6, 3),
(120, 'SONIC ', '2017-12-09', 'aventura18.png', '780', 1, 5, 6, 3),
(121, 'GRAND THEFT AUTO ', '2017-12-09', 'accion13.png', '780', 2, 4, 7, 3),
(122, ' GOD OF WAR', '2017-12-09', 'accion14.png', '780', 2, 4, 7, 3),
(123, ' UNCHARTED 2', '2017-12-09', 'accion15.png', '780', 2, 4, 7, 3),
(124, ' ASSASINS CREED II', '2017-12-09', 'accion16.png', '780', 2, 4, 7, 3),
(125, ' DANTES INFIERNO', '2017-12-09', 'accion17.png', '780', 2, 4, 7, 3),
(126, ' GOD OF WAR COLLECTION', '2017-12-09', 'accion18.png', '780', 2, 4, 7, 3),
(127, 'FIFA 18', '2017-12-16', 'dep19.png', '1000', 2, 5, 1, 4),
(128, 'PES 2018', '2017-12-16', 'dep20.png', '1000', 2, 5, 1, 4),
(129, 'MADDEN NFL 2018', '2017-12-16', 'dep21.png', '1000', 2, 5, 1, 4),
(130, 'NBA 2K18', '2017-12-16', 'dep22.png', '1000', 2, 5, 1, 4),
(131, 'WWE 2K18', '2017-12-16', 'dep23.png', '1000', 2, 5, 1, 4),
(132, 'FIFA 17', '2017-12-16', 'dep20.png', '1000', 2, 5, 1, 4),
(133, 'JUST DANCE 2016', '2017-12-16', 'mus19.png', '1000', 2, 6, 2, 4),
(134, 'JUST DANCE 2017', '2017-12-16', 'mus20.png', '1000', 2, 6, 2, 4),
(135, 'JUST DANCE 2015', '2017-12-16', 'mus21.png', '1000', 2, 6, 2, 4),
(136, 'JUST DANCE 2018', '2017-12-16', 'mus22.png', '1000', 2, 6, 2, 4),
(137, 'JUST DANCE 2014', '2017-12-16', 'mus23.png', '1000', 2, 6, 2, 4),
(138, 'JUST SING', '2017-12-16', 'mus24.png', '1000', 2, 6, 2, 4),
(139, 'PROJECT CARS 2', '2017-12-16', 'car19.png', '1000', 2, 6, 3, 4),
(140, 'CARS 3', '2017-12-16', 'car20.png', '1000', 2, 6, 3, 4),
(141, 'NEED FOR SPEED', '2017-12-16', 'car21.png', '1000', 2, 6, 3, 4),
(142, 'DRIVE CLUB', '2017-12-16', 'car22.png', '1000', 2, 6, 3, 4),
(143, 'THE CREW', '2017-12-16', 'car23.png', '1000', 2, 6, 3, 4),
(144, 'NEED FOR SPEED RIVALS', '2017-12-16', 'car24.png', '1000', 2, 6, 3, 4),
(145, 'MARVEL VS CAPCOM', '2017-12-16', 'peleas19.png', '1000', 2, 6, 4, 4),
(146, 'MORTAL KOMBAT XL', '2017-12-16', 'peleas20.png', '1000', 2, 6, 4, 4),
(147, 'INJUSTICE 2', '2017-12-16', 'peleas21.png', '1000', 2, 6, 4, 4),
(148, 'DRAGON BALL 2', '2017-12-16', 'peleas22.png', '1000', 2, 6, 4, 4),
(149, 'SAINT SEIYA', '2017-12-16', 'peleas23.png', '1000', 2, 6, 4, 4),
(150, 'NARUTO SHIPPUDEN', '2017-12-16', 'peleas24.png', '1000', 2, 6, 4, 4),
(151, 'CALL OF DUTY INFINITE', '2017-12-16', 'disparos19.png', '1000', 2, 6, 5, 4),
(152, 'DESTINY 2', '2017-12-16', 'disparos20.png', '1000', 2, 6, 5, 4),
(153, 'CALL OF DUTY WWII', '2017-12-16', 'disparos21.png', '1000', 2, 6, 5, 4),
(154, 'BATTLEFIELD 1', '2017-12-16', 'disparos22.png', '1000', 2, 6, 5, 4),
(155, 'GW2', '2017-12-16', 'disparos23.png', '1000', 2, 6, 5, 4),
(156, 'TITANFALL 2', '2017-12-16', 'disparos24.png', '1000', 2, 6, 5, 4),
(157, 'UNCHARTED', '2017-12-16', 'aventura19.png', '1000', 2, 6, 6, 4),
(158, 'LEGO NINJAGO', '2017-12-16', 'aventura20.png', '1000', 2, 6, 6, 4),
(159, 'UNCHARTED', '2017-12-16', 'aventura21.png', '1000', 2, 6, 6, 4),
(160, 'ASSASINS CREED', '2017-12-16', 'aventura22.png', '1000', 2, 6, 6, 4),
(161, 'NARUTO SHIPPUDEN', '2017-12-16', 'aventura23.png', '1000', 2, 6, 6, 4),
(162, 'LEGO MARVEL 2', '2017-12-16', 'aventura24.png', '1000', 2, 6, 6, 4),
(163, 'GRAND THEFT AUTO V', '2017-12-16', 'accion19.png', '1000', 2, 6, 7, 4),
(164, 'CRASH', '2017-12-16', 'accion20.png', '1000', 2, 6, 7, 4),
(165, 'STAR WARS', '2017-12-16', 'accion21.png', '1000', 2, 6, 7, 4),
(166, 'THE LAST OF US', '2017-12-16', 'accion22.png', '1000', 2, 6, 7, 4),
(167, 'RISE OF THE TOMB RIDER', '2017-12-16', 'accion23.png', '1000', 2, 6, 7, 4),
(168, 'BATMAN RETURN TO ARKHAM', '2017-12-16', 'accion24.png', '1000', 2, 6, 7, 4),
(169, 'MARIO TENNIS', '2017-12-16', 'dep25.png', '1000', 2, 5, 1, 5),
(170, 'YOUR SHAPE FITNESS', '2017-12-16', 'dep26.png', '1000', 2, 5, 1, 5),
(171, 'MARIO AND SONIC', '2017-12-16', 'dep27.png', '1000', 2, 5, 1, 5),
(172, 'MADDEN NFL 13', '2017-12-16', 'dep28.png', '1000', 2, 5, 1, 5),
(173, 'NBA 2K 13', '2017-12-16', 'dep29.png', '1000', 2, 5, 1, 5),
(174, 'ESPN', '2017-12-16', 'dep30.png', '1000', 2, 5, 1, 5),
(175, 'MARIO PARTY 10', '2017-12-16', 'mus25.png', '1000', 2, 6, 2, 5),
(176, 'JUST DANCE 2016', '2017-12-16', 'mus26.png', '1000', 2, 6, 2, 5),
(177, 'JUST DANCE 2018', '2017-12-16', 'mus27.png', '1000', 2, 6, 2, 5),
(178, 'JUST DANCE 4', '2017-12-16', 'mus28.png', '1000', 2, 6, 2, 5),
(179, 'JUST DANCE 2015', '2017-12-16', 'mus29.png', '1000', 2, 6, 2, 5),
(180, 'JUST DANCE DISNEY 2', '2017-12-16', 'mus30.png', '1000', 2, 6, 2, 5),
(181, 'CARS 3', '2017-12-16', 'car25.png', '1000', 2, 6, 3, 5),
(182, 'MARIO KART 8', '2017-12-16', 'car26.png', '1000', 2, 6, 3, 5),
(183, 'HOT WHEELS', '2017-12-16', 'car27.png', '1000', 2, 6, 3, 5),
(184, 'FAST & FURIOUS', '2017-12-16', 'car28.png', '1000', 2, 6, 3, 5),
(185, 'SONIC', '2017-12-16', 'car29.png', '1000', 2, 6, 3, 5),
(186, 'MARIO KART', '2017-12-16', 'car30.png', '1000', 2, 6, 3, 5),
(187, 'POKEMON TOURNAMENT', '2017-12-16', 'peleas25.png', '1000', 2, 6, 4, 5),
(188, 'SUPER SMASH BROS 2', '2017-12-16', 'peleas26.png', '1000', 2, 6, 4, 5),
(189, 'INJUSTICE', '2017-12-16', 'peleas27.png', '1000', 2, 6, 4, 5),
(190, 'TEKKEN TAG 2', '2017-12-16', 'peleas28.png', '1000', 2, 6, 4, 5),
(191, 'SUPER SMASH BROS', '2017-12-16', 'peleas29.png', '1000', 2, 6, 4, 5),
(192, 'POKEMON', '2017-12-16', 'peleas30.png', '1000', 2, 6, 4, 5),
(193, 'SPLATOON', '2017-12-16', 'disparos25.png', '1000', 2, 6, 5, 5),
(194, 'CALL OF DUTY GHOSTS', '2017-12-16', 'disparos26.png', '1000', 2, 6, 5, 5),
(195, '007 LEGENDS', '2017-12-16', 'disparos27.png', '1000', 2, 6, 5, 5),
(196, 'CALL OF DUTY BLACK OPS II', '2017-12-16', 'disparos28.png', '1000', 2, 6, 5, 5),
(197, 'ZOMBI U', '2017-12-16', 'disparos29.png', '1000', 2, 6, 5, 5),
(198, 'SNIPER ELITE', '2017-12-16', 'disparos30.png', '1000', 2, 6, 5, 5),
(199, 'ZELDA', '2017-12-16', 'aventura25.png', '1000', 2, 6, 6, 5),
(200, 'RAYMAN', '2017-12-16', 'aventura26.png', '1000', 2, 6, 6, 5),
(201, 'LEGO STAR WARS', '2017-12-16', 'aventura27.png', '1000', 2, 6, 6, 5),
(202, 'SUPER MARIO', '2017-12-16', 'aventura28.png', '1000', 2, 6, 6, 5),
(203, 'SUPER MARIO MAKER', '2017-12-16', 'aventura29.png', '1000', 2, 6, 6, 5),
(204, 'YOSHIS', '2017-12-16', 'aventura30.png', '1000', 2, 6, 6, 5),
(205, 'ASSASINS CREED IV', '2017-12-16', 'accion25.png', '1000', 2, 6, 7, 5),
(206, 'HYRULE WARRIORS', '2017-12-16', 'accion26.png', '1000', 2, 6, 7, 5),
(207, 'WATCH DOGS', '2017-12-16', 'accion27.png', '1000', 2, 6, 7, 5),
(208, 'SUPER MARIO BROS', '2017-12-16', 'accion28.png', '1000', 2, 6, 7, 5),
(209, 'STAR FOX', '2017-12-16', 'accion29.png', '1000', 2, 6, 7, 5),
(210, 'BAYONETTA', '2017-12-16', 'accion30.png', '1000', 2, 6, 7, 5),
(211, 'MARIO', '2017-12-16', 'aventura31.png', '1000', 2, 6, 6, 6),
(212, 'SUPER MARIO', '2017-12-16', 'aventura32.png', '1000', 2, 6, 6, 6),
(213, 'LEGO NINJAGO', '2017-12-16', 'aventura33.png', '1000', 2, 6, 6, 6),
(214, 'MARIO KART 8', '2017-12-16', 'aventura34.png', '1000', 2, 6, 6, 6),
(215, 'SPLATOON 2', '2017-12-16', 'aventura35.png', '1000', 2, 6, 6, 6),
(216, 'ARMS', '2017-12-16', 'aventura37.png', '1000', 2, 6, 6, 6),
(217, 'STREET FIGHTER ', '2017-12-16', 'accion31.png', '1000', 2, 6, 7, 6),
(218, 'ZELDA', '2017-12-16', 'accion32.png', '1000', 2, 6, 7, 6),
(219, 'SWITCH', '2017-12-16', 'accion33.png', '1000', 2, 6, 7, 6),
(220, 'TROLL', '2017-12-16', 'accion34.png', '1000', 2, 6, 7, 6),
(221, 'BOMBERMAN', '2017-12-16', 'accion35.png', '1000', 2, 6, 7, 6),
(222, 'XENOBLE', '2017-12-16', 'accion36.png', '1000', 2, 6, 7, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriavideojuego`
--
ALTER TABLE `categoriavideojuego`
  ADD PRIMARY KEY (`idCategoriaVideojuego`);

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`idClasificacion`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `companiaconsola`
--
ALTER TABLE `companiaconsola`
  ADD PRIMARY KEY (`idCompaniaConsola`);

--
-- Indices de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  ADD PRIMARY KEY (`idDesarrolladora`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD KEY `detalleventaFK` (`idVenta`),
  ADD KEY `detalleventaFK2` (`idVideojuego`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `VentaFK` (`email`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`idVideojuego`),
  ADD KEY `videojuegosFK` (`idClasificacion`),
  ADD KEY `videojuegosFK2` (`idDesarrolladora`),
  ADD KEY `videojuegosFK3` (`idCategoriaVideojuego`),
  ADD KEY `videojuegosFK4` (`idCompaniaConsola`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriavideojuego`
--
ALTER TABLE `categoriavideojuego`
  MODIFY `idCategoriaVideojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  MODIFY `idClasificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `companiaconsola`
--
ALTER TABLE `companiaconsola`
  MODIFY `idCompaniaConsola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `desarrolladora`
--
ALTER TABLE `desarrolladora`
  MODIFY `idDesarrolladora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `idVideojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventaFK` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`),
  ADD CONSTRAINT `detalleventaFK2` FOREIGN KEY (`idVideojuego`) REFERENCES `videojuegos` (`idVideojuego`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `VentaFK` FOREIGN KEY (`email`) REFERENCES `cliente` (`email`);

--
-- Filtros para la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD CONSTRAINT `videojuegosFK` FOREIGN KEY (`idClasificacion`) REFERENCES `clasificacion` (`idClasificacion`),
  ADD CONSTRAINT `videojuegosFK2` FOREIGN KEY (`idDesarrolladora`) REFERENCES `desarrolladora` (`idDesarrolladora`),
  ADD CONSTRAINT `videojuegosFK3` FOREIGN KEY (`idCategoriaVideojuego`) REFERENCES `categoriavideojuego` (`idCategoriaVideojuego`),
  ADD CONSTRAINT `videojuegosFK4` FOREIGN KEY (`idCompaniaConsola`) REFERENCES `companiaconsola` (`idCompaniaConsola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
