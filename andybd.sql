-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: isladigital.xyz:3333
-- Tiempo de generación: 14-05-2025 a las 21:02:53
-- Versión del servidor: 9.3.0
-- Versión de PHP: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `andybd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idcarrito` int NOT NULL,
  `idproducto` int DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`idcarrito`, `idproducto`, `iduser`, `cantidad`) VALUES
(7, 1024, 2, 4),
(9, 1038, 2, 1),
(13, 1, 1, 3),
(14, 4, 1, 4),
(18, 1, 17, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `img1` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `img1`) VALUES
(1, 'CASCOS', 'b534109ad1e746628cc79509adf1aa9e.jfif'),
(2, 'IMPERMEABLES', '1b190cf156064fcea5e2a17bb252a459.jfif'),
(3, 'LLANTAS', '7e2293b79d41446cb0063e513da6707d.jfif'),
(4, 'GENERICO', 'categoria.png'),
(5, 'BUJIAS', '184df3fc2a9943fea3e5ecf915f4d67f.jfif'),
(30, 'GUANTES', 'b4c739be53df4b4bb8be5de194579be2.jfif'),
(31, 'VARIOS', 'categoria.png'),
(32, 'FRENOS', '0a4ef60de9f643cf8259e6e9fc2df552.jfif'),
(33, 'ACEITES', 'ffaf27ed58224b6fa1febd7d3ce54e75.jfif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img1` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img2` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img3` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img4` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idcategoria` int DEFAULT NULL,
  `nombre` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int NOT NULL,
  `pordes` int NOT NULL,
  `descuento` float NOT NULL,
  `iva` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `precio`, `descripcion`, `img1`, `img2`, `img3`, `img4`, `idcategoria`, `nombre`, `stock`, `pordes`, `descuento`, `iva`) VALUES
(1, 25000, 'https://docs.conecta.nequi.com.co/#!/Pagos32QR/post_services_paymentservice_generatecodeqr', 'd7fd357e99444982984bf2ed4e4483c1.jfif', '034f543e20ae4783a1300d42d81105c7.jfif', 'a15b34ea37594023a14e6a9ab2881081.jfif', 'productos.png', 32, 'PASTILLA DE FRENO ', 16, 5, 1250, 0),
(4, 15000, 'bujia temperatura', '5d9fec73f3034520a78f40e589ae5c07.jfif', '69fa727f5b3748768d721df0ac4f072b.jfif', 'productos.png', 'productos.png', 5, 'BUJIAS ', 46, 5, 750, 19),
(10, 280000, '', '49e8ed28fbb34147b11f794c796871bd.webp', 'b21cd5edbd0d4ce2b7282692acd1dafd.webp', '50505c231e8d40468ff0b9c979c385d6.webp', '003718514e1a423ea76b1bf52fbd81b9.png', 1, 'CASCO HRO HRO-MX330DV SPACE RACE', 6, 5, 14000, 0),
(11, 10000, 'impermedable general', '9abec08a8c5241459cc5804d8efbee5d.jfif', 'productos.png', 'productos.png', 'productos.png', 2, 'IMPERMEABLE PLASTICO ', 50, 0, 0, 0),
(12, 210000, '', 'fb0922e232e847459a7707a961d845e8.webp', 'cebec2704f0d4ae1a8489a995bd8865e.webp', 'b6d49a7dfb73453383a1c07d50acdcfc.webp', 'productos.png', 2, 'CONJUNTO IMPERMEABLE X_ONE 316 RW', 4, 20, 42000, 0),
(13, 138000, '', '01ec700cdd064b1d84205889ee2078ff.jpg', '08c19738304c46f2913a8fa6256b5656.jpg', '89ec0a5eab4646cf8b6dea38cb2bcf2c.jpg', '1d53e89be2b34f00bb9ac6969bca1f8c.jpg', 1, 'CASCO ZAFETY', 24, 0, 0, 0),
(14, 137000, '', '1ac70e70067b49fb887b79f6096a1e3e.jpg', '6105067136f84ca7bef9462512b1d5b2.jpg', '954b4f2c68e443389a7962935cac0234.jpg', 'productos.png', 1, 'CASCO SK2 ABATIBLE', 17, 0, 0, 0),
(15, 139000, '', '34acb6b740f4412184ea9e31ceb02d86.jpg', 'productos.png', 'productos.png', 'productos.png', 1, 'CASCO ICH 501 NEGRO PLANO', 15, 0, 0, 0),
(16, 145000, '', '675912dc3afb4f1c848f4e3a8ce09677.jpg', 'f829cca1ffe947378c71d2608baa2a6c.jpg', 'b696c158678a412694b85919dc150ac1.jpg', '758fdc52099945d2b1aad87c9a2ba65b.jpg', 1, 'CASCO ICH 501 CALCA ', 15, 0, 0, 0),
(17, 148000, '', '3f4489f9f86245ff9780351b02e87d78.jpg', '53ca911c7823477a9b9ed6dd9b7c8a33.jpg', 'ccfc27f5fd6544899a9d7ee72f6108cb.jpg', '8343a633942841668d6b62fe436969e2.jpg', 1, 'CASCO ICH 3110', 25, 0, 0, 0),
(18, 193000, '', '7ac32c644a784be2904152014febd0bb.jpg', '477f5655fedc48799dbefe1de0e78259.jpg', '06c4a92e44554acc88e1a4ffc6050312.jpg', '5fe097d54dc74e389a99b295d6bd8835.jpg', 1, 'CASCO ICH 3120', 24, 0, 0, 0),
(19, 177000, 'NEGRO PLANO ABATIBLE', '849780c64a874cb88d1166d1fb8d402c.jpg', 'productos.png', 'productos.png', 'productos.png', 1, 'CASCO ICH 3220', 24, 0, 0, 0),
(20, 30000, '20 W 50', '1b1d9089b6a5436db019ab3fd19308ac.jfif', '0', '0', 'P1I2', 33, 'ACEITE MOTUL', 0, 0, 0, 0),
(21, 28000, '20 W 50 4 TIEMPOS', 'productos.png', '0', '0', '', 33, 'ACEITE DICXOIL\r', 0, 0, 0, 0),
(22, 28000, '20 W 50 4 TIEMPOS', '9b164f5077bc41d487898a49fa20851f.jfif', '0', '0', '', 33, 'ACEITE ADVANCE', 0, 0, 0, 0),
(23, 28000, '20 W 50 4 TIEMPOS', '7cd783a1de9e404d96ee3c39e59e9fcb.jfif', '0', '0', '', 33, 'ACEITE SUPER MOVIL', 0, 0, 0, 0),
(24, 25000, '20 W 50 4 TIEMPOS', 'productos.png', '0', '0', '', 33, 'ACEITE CASTROL\r', 0, 0, 0, 0),
(25, 36000, '20 W 50 4 TIEMPOS', 'productos.png', '0', '0', '', 33, 'ACEITE YAMALUBE\r', 0, 0, 0, 0),
(26, 35000, '20 W 50 4 TIEMPOS', 'productos.png', '0', '0', '', 33, 'ACEITE HAVOLINE\r', 0, 0, 0, 0),
(27, 40000, '20 W 50 4 TIEMPOS', 'ef3bb2cf48d347a0a5a9ac50e6d4f05b.jfif', '0', '0', '', 33, 'ACEITE HONDA', 0, 0, 0, 0),
(28, 25000, '20 W 50 4 TIEMPOS', 'productos.png', '0', '0', '', 33, 'ACEITE CELERITY\r', 0, 0, 0, 0),
(1001, 5700, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO VAQUETA REFUERZO PALMA\r', 0, 0, 0, 0),
(1005, 6000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO VAQUETA REFUERZO EN PALMA VAQUETA CON REFUERZO DEDO INDICE Y PULGAR\r', 0, 0, 0, 0),
(1007, 8500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO VAQUETA REFUERZO EN PALMA MANGA LARGA EN VAQUETA\r', 0, 0, 0, 0),
(1008, 7000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO VAQUETA REFUERZO PALMA EN VAQUETA MANGA LARGA EN CARNAZA\r', 0, 0, 0, 0),
(1010, 6200, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE VAQUETA EXTRA LARGO REFUERZO COMPLETO EN VAQUETA\r', 0, 0, 0, 0),
(1011, 5500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO MIXTO REFUERZO EN PALMA CARNAZA\r', 0, 0, 0, 0),
(1012, 6200, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO EXTRA GRANDE MIXTO REFUERZO COMPLETO EN VAQUETA\r', 0, 0, 0, 0),
(1013, 7500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO REFUERZO EN PALMA Y MANGA EN VAQUETA 3/4\r', 0, 0, 0, 0),
(1014, 7200, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO SENCILLO MANGA 3/4 VAQUETA\r', 0, 0, 0, 0),
(1015, 6700, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO REFORZADO EN PALMA VAQUETA Y MANGA EN CARNAZA 3/4\r', 0, 0, 0, 0),
(1016, 5500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO CARNAZA REFUERZO EN VAQUETA COMPLETO\r', 0, 0, 0, 0),
(1017, 5120, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO CARNAZA REFUERZO COMPLETO TRANSEJES\r', 0, 0, 0, 0),
(1018, 4000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO CARNAZA REFUERZO PALMA EN CARNAZA\r', 0, 0, 0, 0),
(1019, 6500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO SENCILLO MANGA 3/4 CARNAZA\r', 0, 0, 0, 0),
(1020, 14700, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO SENCILLO PEGADO A LA MANGA SOLDADOR\r', 0, 0, 0, 0),
(1021, 5900, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO BARRIDO\r', 0, 0, 0, 0),
(1022, 7500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE INGENIERO RECOLECCION\r', 0, 0, 0, 0),
(1023, 12000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE ESPECIAL PALMERO VAQUETA REFUERZO COMPLETO Y MANGA EN VAQUETA\r', 0, 0, 0, 0),
(1024, 6000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PALMERO CARNAZA REFUERCO COMPLETO VAQUETA CORTO\r', 0, 0, 0, 0),
(1025, 7500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PALMERO CARNAZA REFUERZO COMPLETO EN VAQUETA MANGA LARGA\r', 0, 0, 0, 0),
(1026, 7000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PALMERO CARNAZA REFUERZO COMPLETO EN VAQUETA MANGA 3/4\r', 0, 0, 0, 0),
(1027, 8700, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PALMERO CARNAZA REFUERZO COMPLETO EN TULA\r', 0, 0, 0, 0),
(1028, 5500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE CARNAZA PALMERO REFUERZO COMPLETO EN CARNAZA MANGA CORTA\r', 0, 0, 0, 0),
(1029, 6000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE CARNAZA REFUERZO COMPLETO CARNAZA MANGA LARGA\r', 0, 0, 0, 0),
(1030, 9500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE SOLDADOR SENCILLO EN CARNAZA\r', 0, 0, 0, 0),
(1031, 12000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE SOLDADOR CARNAZA REFUERZO COMPLETO EN VAQUETA\r', 0, 0, 0, 0),
(1032, 4800, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE CICLISTA MIXTO\r', 0, 0, 0, 0),
(1033, 8000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE CICLISTA EN VAQUETA\r', 0, 0, 0, 0),
(1034, 7500, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE CICLISTA VAQUETA REFUERZO VAQUETA CON ESPUMA\r', 0, 0, 0, 0),
(1035, 10000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PANADERO\r', 0, 0, 0, 0),
(1036, 15000, 'AnDy', 'productos.png', '0', '0', '', 30, 'GUANTE PARA MOTO\r', 0, 0, 0, 0),
(1037, 9500, 'AnDy', 'productos.png', '0', '0', '', 30, 'POLAINA EN CARNAZA CORTA\r', 0, 0, 0, 0),
(1038, 12000, 'AnDy', 'productos.png', '0', '0', '', 30, 'POLAINA EN CARNAZA LARGA\r', 0, 0, 0, 0),
(1039, 34000, 'AnDy', 'productos.png', '0', '0', '', 30, 'POLAINA TULA\r', 0, 0, 0, 0),
(1040, 9500, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO CARNAZA 90 X 60\r', 0, 0, 0, 0),
(1041, 19000, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO VAQUETA 90 X 60\r', 0, 0, 0, 0),
(1042, 25000, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO VAQUETA 60 X 120\r', 0, 0, 0, 0),
(1043, 12000, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO CARNAZA 60 X 120\r', 0, 0, 0, 0),
(1044, 28000, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO EN TULA 90 X 60\r', 0, 0, 0, 0),
(1045, 19000, 'AnDy', 'productos.png', '0', '0', '', 30, 'PETO CARNAZA DOBLE 90 X 60\r', 0, 0, 0, 0),
(1046, 29000, 'AnDy', 'productos.png', '0', '0', '', 30, 'CHAQUETA VAQUETA SOLDADOR\r', 0, 0, 0, 0),
(1047, 300, 'AnDy', 'productos.png', '0', '0', '', 30, 'TAPABOCAS COMPUTELL\r', 0, 0, 0, 0),
(1048, 9000, 'AnDy', 'productos.png', '0', '0', '', 30, 'MANGA CARNAZA\r', 0, 0, 0, 0),
(1049, 19000, 'AnDy', 'productos.png', '0', '0', '', 30, 'MANGA VAQUETA\r', 0, 0, 0, 0),
(1050, 28000, 'AnDy', 'productos.png', '0', '0', '', 30, 'MANGA TULA\r', 0, 0, 0, 0),
(1051, 5000, 'Administrador d', 'productos.png', '0', '0', '', 30, 'PETICION HORUN MOTORIZADO\r', 0, 0, 0, 0),
(1052, 40000, 'Administrador d', '1000', '0', '0', 'a12', 30, 'BODIARMO\r', 0, 0, 0, 0),
(1053, 130000, 'Administrador d', 'productos.png', '0', '0', 'I1', 30, 'OSOS\r', 0, 0, 0, 0),
(1054, 11000, 'Administrador d', 'productos.png', '0', '0', '', 30, 'CAJAS ZAPATERA\r', 0, 0, 0, 0),
(1055, 10000, 'Administrador d', 'productos.png', '0', '0', '', 30, 'GLOBOS\r', 0, 0, 0, 0),
(1056, 3000, 'Administrador d', 'productos.png', '0', '0', '', 30, 'BOMBAS\r', 0, 0, 0, 0),
(1057, 70000, 'Administrador d', 'productos.png', '0', '0', '', 30, 'EXTINTIOR DE 10 LIBRAS\r', 0, 0, 0, 0),
(1059, 14000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'DIRECCIONALES MOTOS\r', 0, 0, 0, 0),
(1067, 37000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'ACEITE MOTUL\r', 0, 0, 0, 0),
(1069, 22000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'CERA BRILLA MAX\r', 0, 0, 0, 0),
(1070, 22000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'LLANTYL\r', 0, 0, 0, 0),
(1071, 15000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'LIQUIDO DE FRENOS\r', 0, 0, 0, 0),
(1072, 25000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'ACEITE HIDRAULICO\r', 0, 0, 0, 0),
(1073, 10000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'GRASA DE CADENA\r', 0, 0, 0, 0),
(1074, 120000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'FRENO DE DISCO  PULSAR 180\r', 0, 0, 0, 0),
(1075, 180000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'RELACION COMPLETA PLATO, CADENA, PI?ON PULSAR 180\r', 0, 0, 0, 0),
(1076, 115000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'RELACION COMPLETA PULSAR 135\r', 0, 0, 0, 0),
(1077, 150000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'RELACION COMPLETA DT\r', 0, 0, 0, 0),
(1078, 120000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'FRENO DE DISCO 135\r', 0, 0, 0, 0),
(1079, 40000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'PLATO GENERICO\r', 0, 0, 0, 0),
(1080, 33000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'CADENA  428\r', 0, 0, 0, 0),
(1081, 35000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'CADENA 520\r', 0, 0, 0, 0),
(1082, 25000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'PASTILLAS DE FRENO DELANTERA\r', 0, 0, 0, 0),
(1083, 25000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'PASTILLA DE FRENO TRASERO\r', 0, 0, 0, 0),
(1084, 25000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'BANDAS DE FRENO\r', 0, 0, 0, 0),
(1085, 12000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'CAUCHOS CAMPANA FRENO\r', 0, 0, 0, 0),
(1086, 55000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'BOMBAS DE FRENO\r', 0, 0, 0, 0),
(1087, 60000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'DISCOS DE CLOSH\r', 0, 0, 0, 0),
(1088, 12000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'MANILARES\r', 0, 0, 0, 0),
(1089, 25000, 'ANDRES PE?A VEL', 'productos.png', '0', '0', '', 30, 'MANIGUETA\r', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `nameuser` varchar(90) COLLATE utf8mb4_general_ci NOT NULL,
  `passworduser` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cedula` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgper` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feccre` date DEFAULT NULL,
  `tipousu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`iduser`, `nameuser`, `passworduser`, `nombre`, `telefono`, `correo`, `cedula`, `imgper`, `feccre`, `tipousu`) VALUES
(1, 'andy', '1234', 'andy', 'None', 'ANDETAZZ@GMAIL.COM', 'None', NULL, NULL, 2),
(2, 'andres', '1234', 'andres123', '12345', 'ANDETAZZ87@GMAIL.COM', '12356', 'usuario.png', NULL, 1),
(3, 'andres1', '123', 'andres1', '1234', 'ANDETAZZ@GMAIL.COM', '1234', 'usuario.png', NULL, 1),
(5, 'andy1', '123', 'andy1', '123', 'ANDETAZZ@GMAIL.COM', '123', NULL, NULL, NULL),
(6, 'paco', '1234', 'DD', '123', 'ANDETAZZ@GMAIL.COM', '123', 'usuario.png', NULL, NULL),
(7, 'pepe', '1234', 'DD', '123', 'ANDETAZZ@GMAIL.COM', '123', 'usuario.png', NULL, NULL),
(8, 'rosa', '1234', NULL, NULL, NULL, NULL, 'usuario.png', NULL, NULL),
(9, 'miguel1', '1234', NULL, NULL, NULL, NULL, 'usuario.png', NULL, NULL),
(10, 'manolo', '1234', NULL, NULL, NULL, NULL, 'usuario.png', NULL, NULL),
(11, 'prueba', '1234', NULL, NULL, NULL, NULL, 'prueba.jpg', NULL, NULL),
(12, 'PEDROP', '1234', 'DD', '123', 'ANDETAZZ@GMAIL.COM', '123', '123.png', NULL, NULL),
(13, 'PEDROPI', '1234', '123', '123', 'ANDETAZZ@GMAIL.COM', '123', 'usuario.png', NULL, 1),
(17, 'alejandro', '1234', 'None', 'None', 'alejandroreyes@gmail.com', 'None', 'qrandy.png', NULL, 1),
(18, 'pancho', '1234', NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_d`
--

CREATE TABLE `ventas_d` (
  `iddetalle` int NOT NULL,
  `idventa` int DEFAULT NULL,
  `idproducto` int DEFAULT NULL,
  `nro_docu` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` float NOT NULL,
  `cantidad` int NOT NULL,
  `iva` int DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_d`
--

INSERT INTO `ventas_d` (`iddetalle`, `idventa`, `idproducto`, `nro_docu`, `fecha`, `precio`, `cantidad`, `iva`, `descuento`, `total`) VALUES
(1, 1, 1024, NULL, NULL, 6000, 4, 0, 0, 24000),
(3, 2, 1024, NULL, NULL, 6000, 4, 0, 0, 24000),
(7, 5, 1024, NULL, NULL, 6000, 4, 0, 0, 24000),
(8, 5, 1038, NULL, NULL, 12000, 1, 0, 0, 12000),
(9, 6, 1024, NULL, NULL, 6000, 4, 0, 0, 24000),
(10, 6, 1, NULL, NULL, 500000, 5, 0, 0, 2500000),
(11, 7, 1038, NULL, NULL, 12000, 1, 0, 0, 12000),
(12, 7, 1, NULL, NULL, 500000, 7, 0, 0, 3500000),
(13, 8, 1, NULL, NULL, 500000, 7, 0, 0, 3500000),
(15, 10, 1038, NULL, '2025-03-15', 12000, 1, 0, 0, 12000),
(16, 10, 1, NULL, '2025-03-15', 500000, 7, 0, 0, 3500000),
(17, 11, 1038, NULL, '2025-03-15', 12000, 1, 0, 0, 12000),
(18, 11, 1, NULL, '2025-03-15', 500000, 7, 0, 0, 3500000),
(20, 12, 1024, NULL, '2025-03-15', 6000, 4, 0, 0, 24000),
(22, 13, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(23, 14, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(25, 15, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(28, 17, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(30, 18, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(32, 19, 1024, NULL, '2025-03-28', 6000, 4, 0, 0, 24000),
(34, 20, 1024, NULL, '2025-03-28', 6000, 1, 0, 0, 6000),
(35, 21, 1, NULL, '2025-03-28', 500000, 1, 0, 0, 500000),
(37, 22, 1024, NULL, '2025-03-28', 6000, 2, 0, 0, 12000),
(39, 23, 1024, NULL, '2025-03-28', 6000, 7, 0, 0, 42000),
(41, 24, 1024, NULL, '2025-04-07', 6000, 4, 0, 0, 24000),
(42, 25, 4, NULL, '2025-04-28', 12000, 2, 1920, 4800, 21120),
(43, 26, 1, NULL, '2025-05-06', 500000, 5, 0, 0, 2500000),
(44, 27, 4, NULL, '2025-05-08', 12000, 3, 2880, 7200, 36000),
(45, 28, 1, NULL, '2025-05-08', 500000, 1, 9700, 15000, 500000),
(46, 29, 1, NULL, '2025-05-12', 500000, 3, 29100, 45000, 1500000),
(47, 30, 4, NULL, '2025-05-13', 12000, 1, 960, 2400, 12000),
(48, 31, 14, NULL, '2025-05-14', 137000, 3, 0, 0, 411000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_t`
--

CREATE TABLE `ventas_t` (
  `idventa` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `nro_docu` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `f_vto` date DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `iva` float DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `observacion` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_t`
--

INSERT INTO `ventas_t` (`idventa`, `iduser`, `nro_docu`, `fecha`, `f_vto`, `subtotal`, `iva`, `descuento`, `total`, `observacion`) VALUES
(1, 2, NULL, NULL, NULL, 0, 0, 0, 24000, NULL),
(2, 2, NULL, NULL, NULL, 0, 0, 0, 176000, NULL),
(3, 2, NULL, NULL, NULL, 0, 0, 0, 27000, NULL),
(4, 2, NULL, NULL, NULL, 0, 0, 0, 125000, NULL),
(5, 2, NULL, NULL, NULL, 0, 0, 0, 36000, NULL),
(6, 2, NULL, NULL, NULL, 0, 0, 0, 2524000, NULL),
(7, 2, NULL, NULL, NULL, 3512000, 667280, 0, 4179280, NULL),
(8, 2, NULL, '2025-03-15', NULL, 3500000, 665000, 0, 4165000, NULL),
(9, 2, NULL, '2025-03-15', '2025-04-14', 21000, 3990, 0, 24990, 'dfdhdfghfg'),
(10, 2, NULL, '2025-03-15', '2025-04-14', 3512000, 667280, 0, 4179280, 'sgdgfg'),
(11, 2, NULL, '2025-03-15', '2025-04-14', 3512000, 667280, 0, 4179280, ''),
(12, 2, NULL, '2025-03-15', '2025-04-14', 149000, 28310, 0, 177310, ''),
(13, 2, NULL, '2025-03-28', '2025-04-27', 80000, 15200, 0, 95200, ''),
(14, 2, NULL, '2025-03-28', '2025-04-27', 258000, 49020, 0, 307020, ''),
(15, 2, NULL, '2025-03-28', '2025-04-27', 167000, 31730, 0, 198730, ''),
(16, 2, NULL, '2025-03-28', '2025-04-27', 125000, 23750, 0, 148750, ''),
(17, 2, NULL, '2025-03-28', '2025-04-27', 224000, 42560, 0, 266560, ''),
(18, 2, NULL, '2025-03-28', '2025-04-27', 274000, 52060, 0, 326060, ''),
(19, 2, NULL, '2025-03-28', '2025-04-27', 174000, 33060, 0, 207060, ''),
(20, 2, NULL, '2025-03-28', '2025-04-27', 181000, 34390, 0, 215390, ''),
(21, 2, NULL, '2025-03-28', '2025-04-27', 500000, 95000, 0, 595000, ''),
(22, 2, NULL, '2025-03-28', '2025-04-27', 37000, 7030, 0, 44030, ''),
(23, 2, NULL, '2025-03-28', '2025-04-27', 117000, 22230, 0, 139230, ''),
(24, 2, NULL, '2025-04-07', '2025-05-07', 149000, 28310, 0, 177310, ''),
(25, 2, NULL, '2025-04-28', '2025-05-28', 24000, 1920, 4800, 21120, ''),
(26, 2, NULL, '2025-05-06', '2025-06-05', 2500000, 0, 0, 2500000, ''),
(27, 17, NULL, '2025-05-08', '2025-06-07', 36000, 2880, 7200, 31680, ''),
(28, 2, NULL, '2025-05-08', '2025-06-07', 500000, 9700, 15000, 494700, ''),
(29, 2, NULL, '2025-05-12', '2025-06-11', 1500000, 29100, 45000, 1484100, ''),
(30, 18, NULL, '2025-05-13', '2025-06-12', 12000, 960, 2400, 10560, ''),
(31, 2, NULL, '2025-05-14', '2025-06-13', 411000, 0, 0, 411000, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idcarrito`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `nameuser` (`nameuser`);

--
-- Indices de la tabla `ventas_d`
--
ALTER TABLE `ventas_d`
  ADD PRIMARY KEY (`iddetalle`),
  ADD KEY `idventa` (`idventa`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `ventas_t`
--
ALTER TABLE `ventas_t`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `iduser` (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `idcarrito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ventas_d`
--
ALTER TABLE `ventas_d`
  MODIFY `iddetalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `ventas_t`
--
ALTER TABLE `ventas_t`
  MODIFY `idventa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);

--
-- Filtros para la tabla `ventas_d`
--
ALTER TABLE `ventas_d`
  ADD CONSTRAINT `ventas_d_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `ventas_t` (`idventa`),
  ADD CONSTRAINT `ventas_d_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `ventas_t`
--
ALTER TABLE `ventas_t`
  ADD CONSTRAINT `ventas_t_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
