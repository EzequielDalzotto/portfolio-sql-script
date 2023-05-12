-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 06:03:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `about_me`
--

CREATE TABLE `about_me` (
  `idabout_me` int(11) NOT NULL,
  `ft_perfil` varchar(255) NOT NULL,
  `oficio` varchar(30) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `descripcion` longtext NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `about_me`
--

INSERT INTO `about_me` (`idabout_me`, `ft_perfil`, `oficio`, `ubicacion`, `descripcion`, `nombre`, `apellido`, `banner_url`, `usuario_username`) VALUES
(1, '../../../assets/perfil2.jpg', 'Estudiante', 'Entre Rios (Argentina)', 'Soy un estudiante de sistemas en FCAL UNER que le apasiona la programación en general y con muchas ganas de aprender cada vez más sobre desarrollo web. Me encanta explorar sobre nuevas tecnologías para entenderlas y poder adquirir nuevas herramientas por curiosidad y para mejorar la calidad y optimización de mi código.', 'Ezequiel', 'Dalzotto', '../../../assets/banner-example2.jpg', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `idcertificado` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `img` varchar(255) NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`idcertificado`, `nombre`, `img`, `usuario_username`) VALUES
(1, 'Secundario', '../../../assets/sample certificate 1.jpg', 'dalzottoe'),
(2, 'Ingles', '../../../assets/sample certificate 2.jpg', 'dalzottoe'),
(3, '#YoProgramo', '../../../assets/sample certificate 3.jpg', 'dalzottoe'),
(4, 'Titulo Secundario', 'https://marketplace.canva.com/EAE7srfpYAo/1/0/1600w/canva-brown-decorative-certificate-of-completion-YAwShCEKfVg.jpg', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `ideducacion` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `detalle` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`ideducacion`, `tipo`, `periodo`, `nombre`, `detalle`, `usuario_username`) VALUES
(1, 'Secundario', '2014-2019', 'Comercio 1', 'Escuela secundaria Nro 16 Profesor Gerardo Victorin', 'dalzottoe'),
(2, 'Inglés', '2013-2019', 'Instituto E.L.A Inglés', 'Con First Certificate in English evaluado por Cambridge Assessment', 'dalzottoe'),
(3, 'Argentina Programa', '2021-2022', '#YoProgramo', 'Primera etapa de Argentina Programa', 'dalzottoe'),
(4, 'Universidad', '2021-Actualidad', 'Facultad de Ciencias de la Administracion - UNER', 'Actualmente en tercer a?o de Licenciatura en Sistemas', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idexperiencia` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`idexperiencia`, `img`, `titulo`, `descripcion`, `usuario_username`) VALUES
(1, '../../../assets/experiencia1.jpeg', 'Facultad', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui fuga cupiditate laudantium ullam sed libero nulla harum. Optio eligendi, necessitatibus explicabo nulla exercitationem aliquam ex et ratione, facilis, reprehenderit fugiat.', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidad`
--

CREATE TABLE `habilidad` (
  `idhabilidad` int(11) NOT NULL,
  `tipo` enum('soft','hard') NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `porcentaje` tinyint(3) UNSIGNED NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `habilidad`
--

INSERT INTO `habilidad` (`idhabilidad`, `tipo`, `nombre`, `porcentaje`, `usuario_username`) VALUES
(1, 'soft', 'Trabajo en Equipo', 60, 'dalzottoe'),
(2, 'soft', 'Comunicacion', 90, 'dalzottoe'),
(3, 'soft', 'Proactivo', 88, 'dalzottoe'),
(4, 'soft', 'Resolucion de problemas', 78, 'dalzottoe'),
(5, 'soft', 'Flexibilidad', 97, 'dalzottoe'),
(6, 'soft', 'Autooorganizacion', 58, 'dalzottoe'),
(7, 'hard', 'HTML', 97, 'dalzottoe'),
(8, 'hard', 'CSS', 85, 'dalzottoe'),
(9, 'hard', 'JS', 80, 'dalzottoe'),
(10, 'hard', 'Typescript', 76, 'dalzottoe'),
(11, 'hard', 'Angular', 79, 'dalzottoe'),
(12, 'hard', 'SQL', 70, 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idproyecto` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `portada` varchar(255) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `descripcion` longtext NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idproyecto`, `url`, `portada`, `titulo`, `descripcion`, `usuario_username`) VALUES
(1, 'https://github.com/EzequielDalzotto/todo-list', '../../../assets/todoListImage.png', 'To Do List', 'Una simple Lista de tareas a realizar que fui haciendo mientras aprendía a utilizar Angular', 'dalzottoe'),
(2, '#', '../../../assets/calculator.jpg', 'Calculadora', 'This is a short card.', 'dalzottoe'),
(3, '#', '../../../assets/sampleCompany.png', 'Proyecto 3', 'This is a longer card with supporting text below as a natural lead-in to additional content.', 'dalzottoe'),
(4, '#', '../../../assets/sampleCompany.png', 'Proyecto 4', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'dalzottoe'),
(5, 'https://github.com/Jeremias0421/Sistema-Informatico-Biblioteca-UNER', 'https://editor.analyticsvidhya.com/uploads/66982lms.jpg', 'Sistema de Gestion de Biblioteca UNER', 'Practico de la facultad para la materia Programacion Orientada a Objetos', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_social`
--

CREATE TABLE `red_social` (
  `idred_social` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `usuario_username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `red_social`
--

INSERT INTO `red_social` (`idred_social`, `nombre`, `url`, `icon`, `usuario_username`) VALUES
(1, 'Linkedin', 'https://www.linkedin.com/in/ezequiel-dalzotto-a52bb7250/', 'icons8-linkedin-circled-50.png', 'dalzottoe'),
(2, 'Instagram', 'https://www.instagram.com/EzequielDalzotto/', 'instagram-icon.png', 'dalzottoe'),
(3, 'Github', 'https://github.com/EzequielDalzotto', 'icons8-github-60.png', 'dalzottoe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `password`, `mail`) VALUES
('dalzottoe', 'eze123', 'dalzottoezequiel@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`idabout_me`,`usuario_username`),
  ADD KEY `fk_about_me_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`idcertificado`,`usuario_username`),
  ADD KEY `fk_certificado_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`ideducacion`,`usuario_username`),
  ADD KEY `fk_educacion_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idexperiencia`,`usuario_username`),
  ADD KEY `fk_experiencia_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`idhabilidad`,`usuario_username`),
  ADD KEY `fk_habilidad_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idproyecto`,`usuario_username`),
  ADD KEY `fk_proyecto_usuario1_idx` (`usuario_username`);

--
-- Indices de la tabla `red_social`
--
ALTER TABLE `red_social`
  ADD PRIMARY KEY (`idred_social`,`usuario_username`),
  ADD KEY `fk_red_social_usuario_idx` (`usuario_username`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `mail_UNIQUE` (`mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `about_me`
--
ALTER TABLE `about_me`
  MODIFY `idabout_me` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `idcertificado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `ideducacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `idexperiencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `habilidad`
--
ALTER TABLE `habilidad`
  MODIFY `idhabilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idproyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `red_social`
--
ALTER TABLE `red_social`
  MODIFY `idred_social` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `about_me`
--
ALTER TABLE `about_me`
  ADD CONSTRAINT `fk_about_me_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `fk_certificado_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_educacion_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_experiencia_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habilidad`
--
ALTER TABLE `habilidad`
  ADD CONSTRAINT `fk_habilidad_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `fk_proyecto_usuario1` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `red_social`
--
ALTER TABLE `red_social`
  ADD CONSTRAINT `fk_red_social_usuario` FOREIGN KEY (`usuario_username`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
