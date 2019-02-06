-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2019 a las 05:45:36
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basedata_python`
--
CREATE DATABASE IF NOT EXISTS `basedata_python` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `basedata_python`;
--
-- Base de datos: `bd_practica`
--
CREATE DATABASE IF NOT EXISTS `bd_practica` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_practica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `names` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nationality` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `names`, `email`, `nationality`) VALUES
(1, 'Uriel Peña Estel', 'urielpena.e@hotmail.com', 'Mexico'),
(2, 'Edgar Peña Saldivar', 'edgar97@hotmail.com', 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `DNI` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `DNI`, `Nombres`) VALUES
(4, '201523082', 'Uriel Pena Estel'),
(5, '212236284', 'Uriel Peña Estel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_`
--

CREATE TABLE `usuario_` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_`
--

INSERT INTO `usuario_` (`id`, `name`, `lastname`) VALUES
(1, 'Uriel', 'Peña Estel'),
(2, 'Edgar', 'PeÃ±a Saldivar'),
(3, 'Maria', 'PeÃ?Â±a Cervantes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_`
--
ALTER TABLE `usuario_`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_`
--
ALTER TABLE `usuario_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `db_image`
--
CREATE DATABASE IF NOT EXISTS `db_image` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_image`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `name`, `file`) VALUES
(1, 'test01', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000000473424954080808087c086488000000097048597300000b1300000b1301009a9c18000005e8494441545885b5975d5055d715c77f6b9f73efe55ba245c4581552c18f0c28f85526568796a895e9b4b676526946fbe24c3fd287bcd074a6add3641ac7ce38edf4e3a593542786c66aa849c56a26313563b5a9b4828ca4190768472a5c510882c2bdf79cbdfa70052ede8b8093aca773d6de7bfd7f7b9dbdd7de4798a6addd529be3b95a834a15a26556b510210700310306dba99866c49e8984bc136d478f0e4d27ae4cd561f5976a4bac6a9db5f29431a44f27a8c5de15a45e1c7fdfbf8e1f697f28808a9a3d192a775eb0f08c01773ac249206a630673207bd0dd7bf6eca1916903946e7dbad835b601c38a87114e81d262ac6c6f6aacef9812a0bca6b6dc0aa70d7ceae3118f9b5ac28a6c6e6e3cdc322940e9d6a78b8d6bfff6718b27423868656226cce84345cd9e0cd7d8864f4a1c400cf9d6c8eb1b37ee4a4b0250197a7ebadf7c5676169f5df5f8c372acbc9d13fbc9e88b03f1ade623872401e841f6a3efece22b5ff81c73673fc23f2eb7cd984055d72d5852faeaf5abadfd06c0aad6cd64abadf84c210055ebcb79f967cfb1ecb1c533023062029e481d80acdd529b1375e8996e917966753155bb774ff0890837fb073875ee7d4ebc7b9e914864ea40962191cc7cd773b5c6888c896763f1300c27f45d663c161b4bb51b252f2794144b5599939b436d4d35dfdabe8dceae6eba7b6f313c12211070c99b9dcbc282793cfbe22fe8eae9bd9706b27c7be78b6ebcb68f077b3670872512451110105500d25d8798afb074f2c5678c21180c5252b48892a24549ed2391e87d99a3ca205a96e80c6b9c46d0317100df2a11df2758f81800973f6ce7073fff0dc74ebf3bd6c775275f46437787b9d93f30d1a9941aab5a98e8bbe44d0c328ca107174f152f1442d23300c8cf9bc3136b5671eabd0b9c3c7b0100c7712605f8b0e3bf493e155be48e1da9f7eca20da0c44be4212f932b04f9a17b1b55c506c7bf7ffeec5c6a365552b3a99298e72322388ec3854badfcf2e06bc4a231f6ecdccee60deb0168fee06a3295302b69dffbc610d6781676b977d8eff6938b8f026a6dcad9055c0763e2a1e6e5cde1cb4f6e62e1c24739f0bb57e8edfb088073ff6c491a67405dc40c90507e05e18f5e88ef07bca401e1401a79f79e3ddfc7719cb1f53b9afec205f3295c309fa7b6553374771855e583f6ffd0d5732399dc9a01d7603bc14ca8ffefdb201f314c2ee333de1b9b457b8f47c368a67ccb8eef3e47654529d51bd6313b3797258b3f4d2061216665c47777c35b7f4d99396be870e69594ad11a8486c10112ec71c3eef4611a01b9715c6e7ebce20c14545387973711d870d6b56f2fb3f9de29df317693c738e6327dfa6adbd93dc9c6ce6cf8dcfa9e3dafff8ede1d7d11400a2faa653b0f4f14c41be767fe36d71e8b350e178646379447c0046fa6e91b1fe090072b232f9eae64d2c28c867381aa3606e1e65cb8ad9b8b61cd771b0aafcf4572f71a3af3f650650d927cb77ecc80a8eb86183c948d183651ae57ba161661107e8f77c1eddff6b246dec4425140a11080492461f6c68e4d5374fa7d6b67630941ecb777adbdaa20525a5858294a7481237c5e5a417e2782cc45b3648839f496777980d6b564e00109978b93afa977738d8d0987ae6f1d02f351d3ff28603307ff9f2366bf9b688a4ae2422a83144c5418ca1abe706172f5f61d58aa564a6a7110a8dd7876bdd610ebcfc078ebffddee4e210c1e71b3d575b07c6b0cb6b6af721d43d6854a2a92ad6f7c80805295cb8808cb434c2b7fae80af722f2e06b85aa3e7fe944fd8f21e10e903de8ee1dcc896e015336f9d07113111c3740c457fedd792dc13fc59d46b529921e7b61ac7f62dbea6d3b8b7ce4bc18f2a7033163b35c57d5ca4b27ebc70e8609b84d8df51d8a6c564bf89310f78dff64a27812004073e3e11607ad049b5cbc1fd6549b54b5b2e5cfaf5db9bf29e5aabf7eb5b5bfb8a0e26024e4bbaaba6ed2dd31b54554f5c5487a6c77eb1b47fa527598fae774dbce224fa4ce283b31644d4755ad1dc4c82bf8ecbf3fe5330618b5d2ea6f669aa06e15a10aa554c516dd3bcf156b06aca1c3a836a37226981e39f5f763c786a78e0aff07c6e735469b6a5d820000000049454e44ae426082);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `ecommerce_db`
--
CREATE DATABASE IF NOT EXISTS `ecommerce_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `categoria_superior` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`codigo`, `nombre`, `visible`, `categoria_superior`) VALUES
(1, 'Ropa Deportiva', 1, 1),
(2, 'Nike', 1, 1),
(3, 'Adidas', 1, 1),
(4, 'Puma', 1, 1),
(5, 'Hombres', 1, 5),
(6, 'Sacos', 1, 5),
(7, 'Pantalones', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_marca`
--

CREATE TABLE `tbl_marca` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_marca`
--

INSERT INTO `tbl_marca` (`codigo`, `nombre`, `visible`) VALUES
(1, 'Nike', 1),
(2, 'Adidas', 1),
(3, 'Puma', 1),
(4, 'Lacoste', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE `tbl_producto` (
  `webid` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `precio_nuevo` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '1',
  `nuevo` tinyint(1) DEFAULT '1',
  `recomendado` tinyint(1) DEFAULT '0',
  `descripcion` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `codigo_marca` int(11) DEFAULT NULL,
  `codigo_categoria` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT 'demo.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_revision`
--

CREATE TABLE `tbl_revision` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `estrellas` int(11) DEFAULT '3',
  `fecha` datetime DEFAULT NULL,
  `webid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `categoria_superior` (`categoria_superior`);

--
-- Indices de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD PRIMARY KEY (`webid`),
  ADD KEY `codigo_marca` (`codigo_marca`),
  ADD KEY `codigo_categoria` (`codigo_categoria`);

--
-- Indices de la tabla `tbl_revision`
--
ALTER TABLE `tbl_revision`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `webid` (`webid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_marca`
--
ALTER TABLE `tbl_marca`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  MODIFY `webid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_revision`
--
ALTER TABLE `tbl_revision`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD CONSTRAINT `tbl_categoria_ibfk_1` FOREIGN KEY (`categoria_superior`) REFERENCES `tbl_categoria` (`codigo`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`codigo_marca`) REFERENCES `tbl_marca` (`codigo`),
  ADD CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`codigo_categoria`) REFERENCES `tbl_categoria` (`codigo`);

--
-- Filtros para la tabla `tbl_revision`
--
ALTER TABLE `tbl_revision`
  ADD CONSTRAINT `tbl_revision_ibfk_1` FOREIGN KEY (`webid`) REFERENCES `tbl_producto` (`webid`);
--
-- Base de datos: `examen002`
--
CREATE DATABASE IF NOT EXISTS `examen002` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `examen002`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `precio`, `description`, `image`) VALUES
(1, 'Coca-cola', 12.5, 'Bebida', ''),
(2, 'Red-cola', 12.5, 'Bebida', ''),
(3, 'Spray', 12.5, 'Bebida', ''),
(4, 'RedBull', 12.5, 'Bebida energetica', ''),
(5, 'Sabritas', 12.5, 'Aperitivo', ''),
(6, 'Donas de azucar', 12.5, 'Aperitivo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `password`) VALUES
(1, 'urielpena@hotmail.com', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `libros`
--
CREATE DATABASE IF NOT EXISTS `libros` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `libros`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `IDAutor` int(11) NOT NULL,
  `NombrePila` varchar(30) NOT NULL,
  `ApellidoPaterno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`IDAutor`, `NombrePila`, `ApellidoPaterno`) VALUES
(1, 'Harvey', 'Deitel'),
(2, 'Paul', 'Deitel'),
(3, 'Andrew', 'Goldberg'),
(4, 'David', 'Choffnes'),
(7, 'Uriel', 'Peña'),
(10, 'Edgar', 'Peña'),
(11, 'Edgar', 'Peña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `isbnautor`
--

CREATE TABLE `isbnautor` (
  `IDAutor` int(11) NOT NULL,
  `ISBN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `isbnautor`
--

INSERT INTO `isbnautor` (`IDAutor`, `ISBN`) VALUES
(1, '0131869000'),
(2, '0131869000'),
(1, '0131525239'),
(2, '0131525239'),
(1, '0132222205'),
(2, '0132222205'),
(1, '0131857576'),
(2, '0131857576'),
(1, '0132404168'),
(2, '0132404168'),
(1, '0131450913'),
(2, '0131450913'),
(3, '0131450913'),
(1, '0131828274'),
(2, '0131828274'),
(4, '0131828274');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos`
--

CREATE TABLE `titulos` (
  `ISBN` varchar(20) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `NumeroEdicion` int(11) NOT NULL,
  `Copyright` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `titulos`
--

INSERT INTO `titulos` (`ISBN`, `Titulo`, `NumeroEdicion`, `Copyright`) VALUES
('0131450913', 'Internet & World Wide Web How to Program', 3, '2004'),
('0131525239', 'Visual C# 2005 How to Program', 2, '2006'),
('0131828274', 'Operating Systems', 3, '2004'),
('0131857576', 'C++ How to Program', 5, '2005'),
('0131869000', 'Visual Basic 2005 How to Program', 3, '2006'),
('0132222205', 'Java How to Program', 7, '2007'),
('0132404168', 'C How to Program', 5, '2007');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`IDAutor`);

--
-- Indices de la tabla `isbnautor`
--
ALTER TABLE `isbnautor`
  ADD KEY `IDAutor` (`IDAutor`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indices de la tabla `titulos`
--
ALTER TABLE `titulos`
  ADD PRIMARY KEY (`ISBN`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `IDAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `isbnautor`
--
ALTER TABLE `isbnautor`
  ADD CONSTRAINT `isbnautor_ibfk_1` FOREIGN KEY (`IDAutor`) REFERENCES `autores` (`IDAutor`),
  ADD CONSTRAINT `isbnautor_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `titulos` (`ISBN`);
--
-- Base de datos: `parcial_examen`
--
CREATE DATABASE IF NOT EXISTS `parcial_examen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `parcial_examen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `precio`, `descripcion`, `stock`) VALUES
(2, 'Coca Cola', 32, 'Refresco', 10),
(3, 'Sabritas', 10, 'Botana', 10),
(4, 'Manzana Roja', 1.5, '10 por 1Kg.', 30),
(8, 'Manzana Amarilla', 1.5, '10 por 1Kg.', 30);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'libros', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"autores\",\"isbnautor\",\"titulos\"],\"table_structure[]\":[\"autores\",\"isbnautor\",\"titulos\"],\"table_data[]\":[\"autores\",\"isbnautor\",\"titulos\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continÃºa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continÃºa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tickets\",\"table\":\"registros\"},{\"db\":\"tickets\",\"table\":\"actividades\"},{\"db\":\"tickets\",\"table\":\"participantes\"},{\"db\":\"examen002\",\"table\":\"user\"},{\"db\":\"examen002\",\"table\":\"product\"},{\"db\":\"servicio_proyecto\",\"table\":\"carta\"},{\"db\":\"prueba\",\"table\":\"usuarios\"},{\"db\":\"proyecto_jsp\",\"table\":\"productos\"},{\"db\":\"servicio_proyecto\",\"table\":\"termino\"},{\"db\":\"servicio_proyecto\",\"table\":\"cartar\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-04-07 02:59:06', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_general_ci\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `practica_reportes_jsp`
--
CREATE DATABASE IF NOT EXISTS `practica_reportes_jsp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `practica_reportes_jsp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_surname` varchar(50) NOT NULL,
  `mother_last_name` varchar(50) NOT NULL,
  `control_number` int(11) NOT NULL,
  `picture_name` tinytext,
  `picture` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `father_surname`, `mother_last_name`, `control_number`, `picture_name`, `picture`) VALUES
(1, 'Uriel', 'Peña', 'Estel', 201523082, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `proyecto_jsp`
--
CREATE DATABASE IF NOT EXISTS `proyecto_jsp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyecto_jsp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `salario` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre_empleado`, `puesto`, `salario`) VALUES
(1, 'Uriel Peña Estel', 'ISC', 7500),
(2, 'Edgar Peña Saldivar', 'Adm.BD', 45000),
(3, 'Perla Peña Saldivar', 'Jefe de Desarrollo', 35000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `CÓDIGOARTÍCULO` varchar(4) DEFAULT NULL,
  `SECCIÓN` varchar(10) DEFAULT NULL,
  `NOMBREARTÍCULO` varchar(19) DEFAULT NULL,
  `PRECIO` varchar(10) DEFAULT NULL,
  `FECHA` varchar(10) DEFAULT NULL,
  `IMPORTADO` varchar(9) DEFAULT NULL,
  `PAÍSDEORIGEN` varchar(9) DEFAULT NULL,
  `FOTO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CÓDIGOARTÍCULO`, `SECCIÓN`, `NOMBREARTÍCULO`, `PRECIO`, `FECHA`, `IMPORTADO`, `PAÍSDEORIGEN`, `FOTO`) VALUES
('AR01', 'FERRETERÏA', 'DESTORNILLADOR', '6.63', '22/10/2000', 'VERDADERO', 'ESPAÑA', NULL),
('AR02', 'CONFECCIÓN', 'TRAJE CABALLERO', '284.58', '11/03/2002', 'VERDADERO', 'ITALIA', NULL),
('AR03', 'JUGUETERÍA', 'COCHE TELEDIRIGIDO', '159.45', '26/05/2002', 'VERDADERO', 'MARRUECOS', NULL),
('AR04', 'DEPORTES', 'RAQUETA TENIS', '93.47', '20/03/2000', 'VERDADERO', 'USA', NULL),
('AR06', 'DEPORTES', 'MANCUERNAS', '60.00', '13/09/2000', 'VERDADERO', 'USA', NULL),
('AR07', 'CONFECCIÓN', 'SERRUCHO', '30.20', '23/03/2001', 'VERDADERO', 'FRANCIA', NULL),
('AR08', 'JUGUETERÍA', 'CORREPASILLOS', '103.34', '11/04/2000', 'VERDADERO', 'JAPÓN', NULL),
('AR09', 'CONFECCIÓN', 'PANTALÓN SEÑORA', '174.23', '10/01/2000', 'VERDADERO', 'MARRUECOS', NULL),
('AR10', 'JUGUETERÍA', 'CONSOLA VIDEO', '442.54', '24/09/2002', 'VERDADERO', 'USA', NULL),
('AR11', 'CERÁMICA', 'TUBOS', '168.43', '04/02/2000', 'VERDADERO', 'CHINA', NULL),
('AR12', 'FERRETERÍA', 'LLAVE INGLESA', '24.40', '23/05/2001', 'VERDADERO', 'USA', NULL),
('AR13', 'CONFECCIÓN', 'CAMISA CABALLERO', '67.13', '11/08/2002', 'FALSO', 'ESPAÑA', NULL),
('AR14', 'JUGUETERÍA', 'TREN ELÉCTRICO', '1,505.38', '03/07/2001', 'VERDADERO', 'JAPÓN', NULL),
('AR15', 'CERÁMICA', 'PLATO DECORATIVO', '54.09', '07/06/2000', 'VERDADERO', 'CHINA', NULL),
('AR16', 'FERRETERÍA', 'ALICATES', '6.74', '17/04/2000', 'VERDADERO', 'ITALIA', NULL),
('AR17', 'JUGUETERÍA', 'MUÑECA ANDADORA', '105.06', '04/01/2001', 'FALSO', 'ESPAÑA', NULL),
('AR18', 'DEPORTES', 'PISTOLA OLÍMPICA', '46.73', '02/02/2001', 'VERDADERO', 'SUECIA', NULL),
('AR19', 'CONFECCIÓN', 'BLUSA SRA.', '101.06', '18/03/2000', 'VERDADERO', 'CHINA', NULL),
('AR20', 'CERÁMICA', 'JUEGO DE TE', '43.27', '15/01/2001', 'VERDADERO', 'CHINA', NULL),
('AR21', 'CERÁMICA', 'CENICERO', '19.75', '02/07/2001', 'VERDADERO', 'JAPÓN', NULL),
('AR22', 'FERRETERÍA', 'MARTILLO', '11.40', '04/09/2001', 'FALSO', 'ESPAÑA', NULL),
('AR23', 'CONFECCIÓN', 'CAZADORA PIEL', '522.69', '10/07/2001', 'VERDADERO', 'ITALIA', NULL),
('AR25', 'DEPORTES', 'BALÓN BALONCESTO', '75.27', '25/06/2001', 'VERDADERO', 'JAPÓN', NULL),
('AR26', 'JUGUETERÍA', 'FUERTE DE SOLDADOS', '143.70', '25/11/2000', 'VERDADERO', 'JAPÓN', NULL),
('AR27', 'CONFECCIÓN', 'ABRIGO CABALLERO', '500,000.00', '05/04/2002', 'VERDADERO', 'ITALIA', NULL),
('AR28', 'DEPORTES', 'BALÓN FÚTBOL', '43.91', '04/07/2002', 'FALSO', 'ESPAÑA', NULL),
('AR29', 'CONFECCIÓN', 'ABRIGO SRA', '360.07', '03/05/2001', 'VERDADERO', 'MARRUECOS', NULL),
('AR30', 'FERRETERÍA', 'DESTORNILLADOR', '9.06', '20/02/2002', 'VERDADERO', 'FRANCIA', NULL),
('AR31', 'JUGUETERÍA', 'PISTOLA CON SONIDOS', '57.25', '15/04/2001', 'FALSO', 'ESPAÑA', NULL),
('AR32', 'DEPORTES', 'CRONÓMETRO', '439.18', '03/01/2002', 'VERDADERO', 'USA', NULL),
('AR33', 'CERÁMICA', 'MACETA', '29.04', '23/02/2000', 'FALSO', 'ESPAÑA', NULL),
('AR34', 'OFICINA', 'PIE DE LÁMPARA', '39.76', '27/05/2001', 'VERDADERO', 'TURQUÍA', NULL),
('AR35', 'FERRETERÍA', 'LIMA GRANDE', '22.07', '10/08/2002', 'FALSO', 'ESPAÑA', NULL),
('AR36', 'FERRETERÍA', 'JUEGO DE BROCAS', '15.10', '04/07/2002', 'VERDADERO', 'TAIWÁN', NULL),
('AR37', 'CONFECCIÓN', 'CINTURÓN DE PIEL', '4.33', '12/05/2002', 'FALSO', 'ESPAÑA', NULL),
('AR38', 'DEPORTES', 'CAÑA DE PESCA', '270.00', '14/02/2000', 'VERDADERO', 'USA', NULL),
('AR39', 'CERÁMICA', 'JARRA CHINA', '127.77', '02/09/2002', 'VERDADERO', 'CHINA', NULL),
('AR40', 'DEPORTES', 'BOTA ALPINISMO', '144.00', '05/05/2002', 'FALSO', 'ESPAÑA', NULL),
('AR41', 'DEPORTES', 'PALAS DE PING PONG', '21.60', '02/02/2002', 'FALSO', 'ESPAÑA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasenia` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `tecnologia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `usuario`, `contrasenia`, `pais`, `tecnologia`) VALUES
(1, 'uriel', 'peña', 'uriel', '170897', 'México', 'Java');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`) VALUES
(1, 'uriel', 'peña'),
(2, 'Joel', 'Lara');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);
--
-- Base de datos: `servicio_proyecto`
--
CREATE DATABASE IF NOT EXISTS `servicio_proyecto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `servicio_proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Nombre` varchar(80) NOT NULL,
  `Carrera` varchar(40) NOT NULL,
  `Matricula` varchar(10) NOT NULL,
  `Semestre` varchar(2) NOT NULL,
  `Correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Nombre`, `Carrera`, `Matricula`, `Semestre`, `Correo`) VALUES
('Uriel Juena', 'Ingeniería en Sistemas Computacionales', '2012651656', '7', 'urielpena.e@hotmail.com'),
('Edgar Peña Saldivar', 'Ingeniero en Sistemas Computacionales', '201523083', '6', 'edgarpena.s@hotmail.com'),
('Uriel Peña Estel', 'Ingeniero en Sistemas Computacionales', '2015230837', '6', 'urielpena.e@hotmail.com'),
('jUAN PACO', 'IM', '201525680', '8', 'juanPaco@test.edu.mx'),
('Jose Pablo Peña Vega', 'Ingeniero en Sistemas Computacionales', '201527670', '6', 'JosePabloPV@test.edu.mx'),
('Pedro Pica Papas', 'Gastronomía', '201535568', '7', 'pedro_picaPapas@hotmail.com'),
('Eduardo Cejudo Mejía', 'Ingeniero en Sistemas Computacionales', '201723206', '4', 'briu_fob@hotmail.com'),
('Ariel Alejandro', 'Ingeniero en Sistemas Computacionales', '20182305', '4', 'urielpena.e@hotmail.com'),
('Uriel Pëña', 'Ingeniero en Sistemas Computacionales', '21758998', '4', 'urielpena.e@hotmail.com'),
('Edgar Peña Saldivar', 'Ingeniero en Sistemas Computacionales', '217589987', '6', 'urielpena.e@hotmail.com'),
('Uriel Pëña', 'Ingeniero en Sistemas Computacionales', '2175899877', '6', 'urielpena.e@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `NombreDirige` varchar(80) NOT NULL,
  `Grado` varchar(50) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Empresa` varchar(50) NOT NULL,
  `Matricula` varchar(20) NOT NULL,
  `Genera` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`NombreDirige`, `Grado`, `Cargo`, `Empresa`, `Matricula`, `Genera`) VALUES
('Uriel Peña Estel', 'Universidad', 'Administrador de Base de Datos', 'tecnológico de estudios superiores de tianguistenc', '201523083', 1),
('Uriel Lucifer  Peña Estel', 'Ing. Sistemas Comput', 'Jefe de proyectos', 'Microsoft', '2015230837', 1),
('vicente marcial', 'Ingeniero en SIstema', 'jefe de proyectos', 'tecnológico de estudios superiores de tianguistenc', '201525680', 1),
('Uriel Peña Estel', 'Ingeniero en SIstema', 'Administrador de Base de Datos', 'DIS', '201723206', 1),
('Uriel Peña Estel', 'ISC', 'jefe de proyectos', 'tecnológico de estudios superiores de tianguistenc', '21758998', 0),
('vicente marcial', 'Ingeniero en SIstema', 'Administrador de Base de Datos', 'tecnológico de estudios superiores de tianguistenc', '217589987', 0),
('Uriel Peña Estel', 'Universidad', 'Administrador de Base de Datos', 'tecnológico de estudios superiores de tianguistenc', '2175899877', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartar`
--

CREATE TABLE `cartar` (
  `NombreDirige` varchar(80) NOT NULL,
  `Grado` varchar(20) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Empresa` varchar(50) NOT NULL,
  `NombreProyecto` varchar(60) NOT NULL,
  `Matricula` varchar(20) NOT NULL,
  `Genera` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cartar`
--

INSERT INTO `cartar` (`NombreDirige`, `Grado`, `Cargo`, `Empresa`, `NombreProyecto`, `Matricula`, `Genera`) VALUES
('URIEL PEÑA ESTEL', 'INGENIERO EN SISTEMA', 'JEFE DE PROYECTOS', 'MICROSOFT', 'SISTEMA DE CONTROL ESCOLAR', '2015230837', 0),
('Uriel Pëña', 'Ingeniero en SIstema', 'Administrador de Base de Datos', 'TEST', 'La locomotora', '201525680', 0),
('Uriel Peña Estel', 'Ingeniero en Sistema', 'Administrador de Base de Datos', 'El loquito', 'Página web', '201723206', 1),
('Uriel Pëña', 'Ingeniero en SIstema', 'Administrador de Base de Datos', 'TEST', 'Pëña', '217589987', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `Matricula` varchar(10) NOT NULL,
  `Clave` varchar(20) NOT NULL,
  `Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`Matricula`, `Clave`, `Tipo`) VALUES
('2012651656', '2012651656', 1),
('201523082', '123456789', 0),
('201523083', '201523083', 1),
('2015230837', '2015230837', 1),
('201525680', '201525680', 1),
('201527670', '201527670', 1),
('201535568', '201535568', 1),
('201723206', '201723206', 1),
('20182305', '20182305', 1),
('21758998', '21758998', 1),
('217589987', '217589987', 1),
('2175899877', '2175899877', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `termino`
--

CREATE TABLE `termino` (
  `Lugar` varchar(80) NOT NULL,
  `Programa` varchar(50) NOT NULL,
  `FechaInicio` varchar(10) NOT NULL,
  `FechaTermino` varchar(10) NOT NULL,
  `FechaEnvio` varchar(10) NOT NULL,
  `Matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `cartar`
--
ALTER TABLE `cartar`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `termino`
--
ALTER TABLE `termino`
  ADD PRIMARY KEY (`Matricula`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `R_4` FOREIGN KEY (`Matricula`) REFERENCES `login` (`Matricula`);

--
-- Filtros para la tabla `carta`
--
ALTER TABLE `carta`
  ADD CONSTRAINT `R_5` FOREIGN KEY (`Matricula`) REFERENCES `login` (`Matricula`);

--
-- Filtros para la tabla `cartar`
--
ALTER TABLE `cartar`
  ADD CONSTRAINT `R_7` FOREIGN KEY (`Matricula`) REFERENCES `login` (`Matricula`);

--
-- Filtros para la tabla `termino`
--
ALTER TABLE `termino`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`Matricula`) REFERENCES `login` (`Matricula`);
--
-- Base de datos: `sit_task_app`
--
CREATE DATABASE IF NOT EXISTS `sit_task_app` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sit_task_app`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`id`, `name`, `description`) VALUES
(1, 'Learning AJAX', 'Ajax with PHP and MYSQL'),
(2, 'Learning AngularJS', 'PHP and MYSQL'),
(6, 'Learning ReactJs', 'How to create a API Rest with Spring5.'),
(7, 'Create Web Site', 'WordPress and PHP'),
(9, 'Create Template', 'Photoshop and WordPress.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `springbd`
--
CREATE DATABASE IF NOT EXISTS `springbd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `springbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `idAd` int(11) NOT NULL,
  `nombre` varchar(85) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAd`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `idAd` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `tec_proyect_residencias`
--
CREATE DATABASE IF NOT EXISTS `tec_proyect_residencias` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tec_proyect_residencias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sit_login_user`
--

CREATE TABLE `sit_login_user` (
  `id` int(11) NOT NULL,
  `id_user_profile` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sit_login_user`
--

INSERT INTO `sit_login_user` (`id`, `id_user_profile`, `password`) VALUES
(1, 1, '123456'),
(2, 2, '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sit_user_category`
--

CREATE TABLE `sit_user_category` (
  `id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sit_user_category`
--

INSERT INTO `sit_user_category` (`id`, `category`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sit_user_profile`
--

CREATE TABLE `sit_user_profile` (
  `id` int(11) NOT NULL,
  `id_user_category` int(11) NOT NULL,
  `key_user` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sit_user_profile`
--

INSERT INTO `sit_user_profile` (`id`, `id_user_category`, `key_user`, `name`) VALUES
(1, 1, '201523082', 'Uriel'),
(2, 2, '200023085', 'Edgar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sit_login_user`
--
ALTER TABLE `sit_login_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_profile` (`id_user_profile`);

--
-- Indices de la tabla `sit_user_category`
--
ALTER TABLE `sit_user_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sit_user_profile`
--
ALTER TABLE `sit_user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_category` (`id_user_category`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sit_login_user`
--
ALTER TABLE `sit_login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sit_user_category`
--
ALTER TABLE `sit_user_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sit_user_profile`
--
ALTER TABLE `sit_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sit_login_user`
--
ALTER TABLE `sit_login_user`
  ADD CONSTRAINT `sit_login_user_ibfk_1` FOREIGN KEY (`id_user_profile`) REFERENCES `sit_user_profile` (`id`);

--
-- Filtros para la tabla `sit_user_profile`
--
ALTER TABLE `sit_user_profile`
  ADD CONSTRAINT `sit_user_profile_ibfk_1` FOREIGN KEY (`id_user_category`) REFERENCES `sit_user_category` (`id`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tickets`
--
CREATE DATABASE IF NOT EXISTS `tickets` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tickets`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `actividad_id` char(2) NOT NULL,
  `bloque` enum('Bloque 1','Bloque 2','Bloque 3') NOT NULL,
  `disciplina` enum('KICK BOXING','YOGA','PILATES','ZUMBA') NOT NULL,
  `horario` varchar(30) NOT NULL,
  `cupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`actividad_id`, `bloque`, `disciplina`, `horario`, `cupo`) VALUES
('1K', 'Bloque 1', 'KICK BOXING', '9:00 a 12:00', 10),
('1P', 'Bloque 1', 'PILATES', '9:00 a 12:00', 10),
('1Y', 'Bloque 1', 'YOGA', '9:00 a 12:00', 20),
('1Z', 'Bloque 1', 'ZUMBA', '9:00 a 12:00', 10),
('2K', 'Bloque 2', 'KICK BOXING', '14:00 a 17:00', 10),
('2P', 'Bloque 2', 'PILATES', '14:00 a 17:00', 10),
('2Y', 'Bloque 2', 'YOGA', '14:00 a 17:00', 20),
('2Z', 'Bloque 2', 'ZUMBA', '14:00 a 17:00', 10),
('3K', 'Bloque 3', 'KICK BOXING', '18:00 a 21:00', 10),
('3P', 'Bloque 3', 'PILATES', '18:00 a 21:00', 10),
('3Y', 'Bloque 3', 'YOGA', '18:00 a 21:00', 20),
('3Z', 'Bloque 3', 'ZUMBA', '18:00 a 21:00', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `email` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`email`, `nombre`, `apellidos`, `nacimiento`) VALUES
('urielpena.e@hotmail.com', 'Uriel', 'Peña', '1997-08-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `registro_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `actividad` char(2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`registro_id`, `email`, `actividad`, `fecha`) VALUES
(1, 'urielpena.e@hotmail.com', '1K', '2019-01-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`actividad_id`);

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`registro_id`),
  ADD KEY `email` (`email`),
  ADD KEY `actividad` (`actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `registro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`email`) REFERENCES `participantes` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registros_ibfk_2` FOREIGN KEY (`actividad`) REFERENCES `actividades` (`actividad_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `uruarios_`
--
CREATE DATABASE IF NOT EXISTS `uruarios_` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uruarios_`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `description` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `description`) VALUES
(1, 'Aprobado'),
(2, 'Reprobado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `hora_` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`hora_`) VALUES
('13:03:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_`
--

CREATE TABLE `usuarios_` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `am` varchar(50) NOT NULL,
  `num_control` int(11) NOT NULL,
  `promedio` int(11) NOT NULL DEFAULT '0',
  `id_categoria` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_`
--

INSERT INTO `usuarios_` (`id`, `name`, `ap`, `am`, `num_control`, `promedio`, `id_categoria`) VALUES
(4, 'Jesus', 'Montes', 'Vazquez', 201523020, 8, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_`
--
ALTER TABLE `usuarios_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios_`
--
ALTER TABLE `usuarios_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios_`
--
ALTER TABLE `usuarios_`
  ADD CONSTRAINT `usuarios__ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
--
-- Base de datos: `usuarios_y_contrasenias`
--
CREATE DATABASE IF NOT EXISTS `usuarios_y_contrasenias` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usuarios_y_contrasenias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_p` varchar(30) NOT NULL,
  `apellido_m` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido_p`, `apellido_m`, `edad`, `usuario`, `password`) VALUES
(1, 'URIEL', 'PEÑA', 'ESTEL', 20, 'URIEL117', 'Qd113cE9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
