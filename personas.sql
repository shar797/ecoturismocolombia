-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2024 a las 06:20:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_a` int(10) NOT NULL,
  `actividad` varchar(50) DEFAULT NULL,
  `tipo_a` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` VALUES(1, 'Kayak', 1);
INSERT INTO `actividades` VALUES(3, 'Surf', 1);
INSERT INTO `actividades` VALUES(4, 'Cuatrimoto', 2);
INSERT INTO `actividades` VALUES(5, 'Ciclismo', 2);
INSERT INTO `actividades` VALUES(6, 'Parapente', 3);
INSERT INTO `actividades` VALUES(7, 'Buceo', 1);
INSERT INTO `actividades` VALUES(8, 'Escalada', 2);
INSERT INTO `actividades` VALUES(9, 'Globo', 3);
INSERT INTO `actividades` VALUES(10, 'Escalada', 2);
INSERT INTO `actividades` VALUES(11, 'Paracaidismo', 3);
INSERT INTO `actividades` VALUES(12, 'Avistamiento de aves', 2);
INSERT INTO `actividades` VALUES(13, 'Exploracion ruinas', 2);
INSERT INTO `actividades` VALUES(14, 'Senderismo', 2);
INSERT INTO `actividades` VALUES(15, 'Rafting', 1);
INSERT INTO `actividades` VALUES(16, 'Bunge jumping', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` int(50) NOT NULL,
  `Tipo` binary(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` VALUES(1, 'yusti@gmail.co', 123456, 0x0100);
INSERT INTO `administradores` VALUES(2, 'eduardoealo@gmail.com', 4321, 0x0000);
INSERT INTO `administradores` VALUES(3, 'alba@gmail.com', 1234, 0x0100);
INSERT INTO `administradores` VALUES(4, 'liz@gmail.com', 1212, 0x0000);
INSERT INTO `administradores` VALUES(5, 'stefa@gmail.com', 1234, 0x0000);
INSERT INTO `administradores` VALUES(6, 'maria@gmail.com', 2345, 0x0000);
INSERT INTO `administradores` VALUES(7, 'mama@gmail.com', 23456, 0x0000);
INSERT INTO `administradores` VALUES(8, 'Gabriela@gmail.com', 1212, 0x0000);
INSERT INTO `administradores` VALUES(9, 'alicia@gmail.com', 1234, 0x0000);
INSERT INTO `administradores` VALUES(10, 'nuevousuario@gmail.com', 1234, 0x0000);
INSERT INTO `administradores` VALUES(11, 'meliss@gmail.com', 1234, 0x0000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(10) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` VALUES(1, 'Agua');
INSERT INTO `categoria` VALUES(2, 'Tierra');
INSERT INTO `categoria` VALUES(3, 'Aire');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `id_r` int(10) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` VALUES(1, 'Region Caribe', 'Descripcion Region Caribe\r\n Conformada por siete departamentos (Atlántico, Bolívar, Magdalena, La Guajira, Cesar, Córdoba y Sucre).Temperatura 25° a 30°, La Región Caribe se caracteriza por su clima cálido y sus espectaculares playas. En su mayoría se compone de territorio plano, pero también alberga la formación montañosa litoral más alta del mundo: la Sierra Nevada de Santa Marta. Parque Nacional Natural Tayrona, cuenta con 11 parques nacionales.');
INSERT INTO `destino` VALUES(3, 'Region Pacifico', 'Descripcion Region Pacifico\r\nConformada por departamentos (Cauca, Chocó, Nariño y Valle del Cauca).Se caracteriza por su privilegiada ubicación en la costa del Océano Pacífico, su biodiversidad y riqueza hídrica. con una pronunciada estación seca entre los meses de diciembre y abril y una estación lluviosa entre los meses de mayo a noviembre.\r\n \r\n');
INSERT INTO `destino` VALUES(4, 'Region Andina', 'Descripcion Region Andina\r\nconformada por los departamentos de Norte de Santander, Santander, Boyacá, Cundinamarca, Tolima, Huila y la ciudad de Bogotá.  más de veinte reservas ecológicas conocidas como parques nacionales naturales donde habita una gran cantidad de especies de fauna y flora. Se caracteriza por sus imponentes cadenas montañosas, la riqueza de su biodiversidad, valles fértiles y la diversidad cultural de sus habitantes. Situada en la zona de convergencia intertropical.');
INSERT INTO `destino` VALUES(5, 'Region Orinoquia', 'Descripcion Region Orinoquia\r\nconformada por los departamentos de Norte de Santander, Santander, Boyacá, Cundinamarca, Tolima, Huila y la ciudad de Bogotá.  más de veinte reservas ecológicas conocidas como parques nacionales naturales donde habita una gran cantidad de especies de fauna y flora. Se caracteriza por sus imponentes cadenas montañosas, la riqueza de su biodiversidad, valles fértiles y la diversidad cultural de sus habitantes. Situada en la zona de convergencia intertropical, es una de las áreas más húmedas de Suramérica, lo que favorece su vegetación exuberante y su papel central en la agricultura del país. ');
INSERT INTO `destino` VALUES(6, 'Region Amazonia', 'Descripcion Region Amazonia\r\nEstá compuesta por los departamentos de Amazonas, Caquetá, Guainía, Guaviare, Putumayo y Vaupés. La Amazonía alberga una gran variedad de especies de flora y fauna, que ha permitido establecer marcas mundiales de diversidad biológica. También es un área importante de endemismos, lo que hace de ella una reserva genética de importancia mundial para el desarrollo de la humanidad.');
INSERT INTO `destino` VALUES(7, 'Region Insular', 'Descripcion Region Insular\r\nEn esta región se incluyen las islas del mar Caribe y las del océano Pacífico. El clima es tropical, y cada una de las islas son lugares turísticos muy destacados en Colombia. Puedes encontrar en esta región la extraordinaria isla de San Andrés, que tiene arrecifes de coral muy famosos. Conformada por 4 departamentos: San Andrés y Providencia, Bolívar, Cauca,  Valle del Cauca.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorio`
--

CREATE TABLE `directorio` (
  `id_d` int(11) NOT NULL,
  `nombre` varchar(1000) DEFAULT NULL,
  `empresa` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `tipo_dir` int(11) DEFAULT NULL,
  `categoria_dir` int(11) DEFAULT NULL,
  `region_dir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directorio`
--

INSERT INTO `directorio` VALUES(4, 'Cuatrimoto\r\nDisfuta de una emocionante aventura,observando hermosos paisajes,de Santa Marta Colombia, reorrido en cuatrimoto, pasando montañas y rios,llegando a lugares magicos,donde podras disfrutar de baños en hermosas playas y aguas cristalinas.', 'UniqueColombia.com\r\nEmpresa ColomboHolandesa, creada por dos jovenes emprendedores, con amplia exper', '+57-3134274434\r\ninfo@uniquecolombia.co', 'Santa Marta es una ciudad ubicada en el mar Caribe, en el departamento de Magdalena en el norte de C', 4, 2, 1);
INSERT INTO `directorio` VALUES(5, 'surf\r\nAprende a surfear mientras estás de vacaciones en El Laguito Boca Grande, aprovechando al máximo tu tiempo en Colombia. Incluso los principiantes absolutos pueden sentirse seguros en compañía de los instructores, que brindan informes de seguridad, orientación al entorno y todas las instrucciones. Se proporciona todo el equipo y la lección comienza con una introducción en tierra firme, después de la cual golpearás las suaves olas y dominarás las olas de pie y montando. Todos los equipos y el uso de tablas de surf incluidas Instrucción y supervisión por un instructor calificado Experimenta las aguas de Colombia en una clase de surf Otros deportes acuáticos y acceso al bar local después de la lección\r\n\r\nLee más sobre Experiencia SURF - https://www.viator.com/es-CO/tours/Cartagena/Surfing-lessons/d4498-30332P12?mcid=56757\r\n', '\r\nViator es una plataforma que le permite crear experiencias reservables que los viajeros de todo el', 'Viator Soporte de Correo Electrónico. feedback@viator.com.\r\nViator Soporte de Chat en Vivo. N/A.\r\nVi', '\r\n\r\nCartagena es una ciudad portuaria en la costa caribeña de Colombia. Junto al mar, se encuentra l', 3, 1, 1);
INSERT INTO `directorio` VALUES(6, 'Paracaidismo\r\nIncluye: 1 salto en paracaídas desde 10.000 pies aprox*, derecho a disfrutar de la zona (Playa privada, parqueadero, restaurante y pista privada), acompañamiento de los instructores, alquiler de los equipos, póliza de seguro y certificado digital de Aventurer@. Como obsequio te daremos fotos y videos con cámara GoPro desde la muñeca del instructor. Adicional: servicio de cámara externa.\r\nNo es necesario contar con experiencia previa, en todo momento tendrás un equipo de instructores a tu disposición.', '\r\nwww.colombiavuela.com\r\nSomos la única zona de paracaidismo en Colombia que opera todos los días co', 'Colombiavuela.com\r\nEscríbenos: (57) 3128542664', '\r\nCartagena Es una ciudad portuaria en la costa caribeña de Colombia. Junto al mar, se encuentra la ', 11, 3, 1);
INSERT INTO `directorio` VALUES(7, 'Explorar ruinas prisión Gorgona\r\nQué hacer en el Pacífico | En Gorgona, podrás explorar las ruinas de la antigua prisión de máxima seguridad que operó en la isla en la década de 1970. Caminar por la selva tropical hasta las hermosas playas de Palmeras y Yundigua. De julio a octubre, ver ballenas, y el resto del año, puedes bucear.\r\n\r\nIsla Gorgona es una de las islas del Pacífico colombiano a la que sólo puedes acceder por vía marítima. Puedes llegar en lancha desde el municipio caucano de Guapi en aproximadamente 1 hora y media, o desde Buenaventura en un viaje que toma alrededor de 5 horas. Para llegar a Guapi, puedes tomar un vuelo desde Cali.\r\n\r\nImportante | Gorgona es uno de los lugares turísticos del Pacífico colombiano más solicitados durante la temporada de ballenas y para las vacaciones de fin de año. Además, la isla solo permite el ingreso de un número reducido de visitantes, por lo que es necesario reservar tu visita con anticipación.', 'Travelgrafía\r\nEn Travelgrafía, conectamos a viajeros apasionados por la naturaleza y la cultura con ', ' correo contacto@travelgrafia.co.', 'Región del pacífico\r\nGorgona es una isla ubicada a 28 km al oeste de la costa del Pacífico colombian', 14, 2, 3);
INSERT INTO `directorio` VALUES(8, 'Buceo\r\nMuchos consideran a Malpelo uno de los lugares más remotos e inexplorados para los buceadores. Es una isla deshabitada en medio del Pacífico (ubicada a 250 millas / 330 km al este de la costa colombiana) con más de 395 especies diferentes de peces. Algunos favoritos incluyen tiburones martillo, una variedad de tortugas, mantas gigantes y tiburones ballena, entre muchas otras especies. Como es un destino muy remoto y tiene fuertes corrientes, este viaje se recomienda solo para Advanced Open Water Divers (conoce más sobre el curso PADI Advanced Open Water Diver aquí).\r\n\r\nSegún los buceadores que la han visitado, el viaje en barco de 35 horas hasta la isla vale la pena y hace de este un lugar verdaderamente inexplorado y lleno de vida. Las mejores épocas del año para visitar dependen de lo que quieras ver. Los tiburones martillo y los tiburones de Galápagos se ven durante todo el año; en los meses de verano se avistan tiburones ballena gigantes y mantarrayas; y grandes bancos de ti', 'Proclolombia\r\nPROCOLOMBIA es la organización encargada de promover el turismo, la inversión extranje', 'info_turismo@procolombia.co\r\n+57 602 6687222 ext. 52901', 'Cali (ubicada en la región del pacifico) es una ciudad colombiana ubicada en el departamento del Val', 7, 1, 3);
INSERT INTO `directorio` VALUES(9, 'Parapente\r\n¡Despega de increíbles montañas y vive la magia! SIncluye: 1 Vuelo en parapente de entre 15 y 20 minutos aprox, fotos y video full HD Sin Brandear!. También, Transporte en la zona, Certificado digital de Aventurer@. Adicional a eso, la adrenalina y la libertad son gratis! Importante: No es necesario contar con experiencia previa, en todo momento tendrás un equipo de instructores a tu disposición.', 'En Despégate queremos que conozcas Colombia desde el aire, por eso te ofrecemos varias opciones en d', 'Centro de paracaidismo de caída libre en Cali\r\nDirección: Calle 65norte, # 3BN-87 Barrio La Flora, C', 'Valle del Cauca es un departamento del suroeste de Colombia. Tiene playas a lo largo de su costa en ', 6, 3, 3);
INSERT INTO `directorio` VALUES(10, 'Senderismo: Los departamentos de Boyacá y Arauca ofrece algunos de los paisajes más espectaculares de Colombia, con picos nevados, lagunas turquesas y páramos místicos. Las rutas de trekking, como la caminata hacia la Laguna Grande de la Sierra, permiten a los excursionistas explorar un entorno natural casi prístino. El desafío físico y la tranquilidad de la naturaleza brindan una experiencia revitalizante. Además, es una oportunidad para observar la biodiversidad andina y aprender sobre la cultura de las comunidades locales.', 'Yate.co\r\nNuestro objetivo es ofrecer un servicio especializado de alta calidad y confiabilidad, crea', 'Para cualquier consulta, no dudes en escribirnos o contactarnos a través de nuestros diversos canale', 'Boyaca pertenece a la region Andina.\r\nBoyacá es un departamento del centro de Colombia que se ubica ', 14, 2, 4);
INSERT INTO `directorio` VALUES(11, 'Rafting\r\nHacer Rafting en Utica en el cañón del Río Negro, es navegar en medio de verdes y empinadas montañas, en un bote inflable a través de emocionantes y divertidos rápidos donde el riesgo y la adrenalina son protagonistas en cada aventura.', 'Dosis Verde fue la empresa que por primer vez  navego sus aguas en un bote inflable. En estos años  ', '+57 311-846-36-44\r\ninfo@dosisverde.com\r\n\r\n\r\n', '\r\nBoyacá es un departamento del centro de Colombia que se ubica principalmente dentro de la cordille', 15, 1, 4);
INSERT INTO `directorio` VALUES(12, 'Bunge Jumping\r\nUn servicio exclusivo y con la experiencia de Colombia Bungee Jumping. Se trata de saltar al vacío desde una plataforma especialmente construida para saltos desde grúa, siendo elevada a través de una grúa telescópica de 50 metros de altura obteniendo una mejor altura y una caída al vacío más larga, pero puede variar de acuerdo a los requerimientos del evento, Para el desarrollo de esta actividad, nuestra empresa utiliza cuerdas elásticas por tallas, elaboradas con fibras especiales de látex y silicona que proporciona durabilidad, resistencia y elasticidad.  Estás propiedades hacen que la cuerda tenga una elongación del 300% de su tamaño en reposo, permitiendo, primero, caer a máxima velocidad, luego amortiguar la caída desacelerando progresivamente y por ultimo provocar rebotes.​ Como protocolo de seguridad utilizamos un gran colchón inflable de alta densidad especialmente diseñado para prevenir cualquier caída y es una medida de redundancia que se utiliza por norma de s', 'COLOMBIA BUNGEE JUMPING\r\nEs una empresa legalmente constituida, que otorga máxima seguridad en el se', 'San Gil: 300 770 9700 | 316 416 7246\r\n       12 Años y más de 60.000 saltos comerciales.', 'Santander\r\nSan Gil es una pequeña ciudad andina en el norte de Colombia que atraviesa el río Fonce. ', 16, 3, 4);
INSERT INTO `directorio` VALUES(13, 'Senderismo\r\nCerros de Mavicure: Descubre la Estrella Fluvial, Selva Matavén y Reserva Natural Moru\r\n', 'Awake.travel\r\nBuscamos desarrollar un turismo que asegure y potencie sistemas de gobernanza colabora', 'General (+57) 3223655135\r\nAgencia (+57) 3104684267\r\nEmail info@awake.travel', 'Guainia\r\nLos Cerros de Mavicure son un conjunto de tres monolitos ubicados al suroriente de Colombia', 14, 2, 5);
INSERT INTO `directorio` VALUES(14, 'Rafting\r\nUna vez llegamos al municipio de Mesetas, el punto de partida se encuentra prácticamente a 5 minutos o menos, puente el Limón. Justo en este lugar, los guías preparan e instruyen a los turistas para la travesía, dan a cada persona un casco de seguridad, un chaleco flotador y un remo que posteriormente con una breve instrucción sobre cómo remar será suficiente para iniciar la travesía. También se debe poner especial atención a las recomendaciones dadas por los guías para saber actuar ante una situación de emergencia.\r\n\r\n​\r\nEl cañón del río Güejar es uno de los lugares más hermosos que puedes visitar en el llano. La actividad de Rafting consiste en un descenso de 17 km por el río, con una duración aproximada de 5 horas según los niveles de agua del río. Las personas que deseen realizar el recorrido deben tener en cuenta que la única forma de salir una vez iniciado el descenso es realizando todo el recorrido, dentro del Cañón ya no hay vuelta atrás.', 'Ecoturismo Sierra de la Macarena\r\nAgencia de viajes que promueve el turismo ecológico a nivel nacion', 'turismoecologico@ecoturismomacarena.com  |  Tel: 3143253522 - 3134209257', 'En lo profundo del Departamento del Meta, rodeado de Naturaleza y bosque virgen, se encuentra el Cañ', 15, 1, 5);
INSERT INTO `directorio` VALUES(15, 'Amazonas: Caminata nocturna, Reserva Natural, diversidad y cultura indígena con cabañas en los árboles.\r\nConoce la región del Amazonas colombiano de día y de noche en compañía de guías locales y sus habitantes. En la Reserva Natural de Tanimboca podrás entender y conocer su propuesta en torno a la conservación, la protección y la investigación del medio ambiente.\r\n', 'Awaque.travel', 'General (+57) 3223655135\r\nAgencia (+57) 3104684267\r\nEmail info@awake.travel', 'Llegar a Leticia, capital del Amazonas colombiano, únicamente es posible vía aérea desde las ciudade', 14, 2, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_a`),
  ADD KEY `act_tipo_fk` (`tipo_a`);

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`id_r`);

--
-- Indices de la tabla `directorio`
--
ALTER TABLE `directorio`
  ADD PRIMARY KEY (`id_d`),
  ADD KEY `dir_tipo_fk` (`tipo_dir`),
  ADD KEY `dir_categoria_fk` (`categoria_dir`),
  ADD KEY `dir_region_fk` (`region_dir`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_a` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `destino`
--
ALTER TABLE `destino`
  MODIFY `id_r` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `directorio`
--
ALTER TABLE `directorio`
  MODIFY `id_d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`tipo_a`) REFERENCES `categoria` (`id_cat`);

--
-- Filtros para la tabla `directorio`
--
ALTER TABLE `directorio`
  ADD CONSTRAINT `directorio_ibfk_1` FOREIGN KEY (`categoria_dir`) REFERENCES `categoria` (`id_cat`),
  ADD CONSTRAINT `directorio_ibfk_2` FOREIGN KEY (`region_dir`) REFERENCES `destino` (`id_r`),
  ADD CONSTRAINT `directorio_ibfk_3` FOREIGN KEY (`tipo_dir`) REFERENCES `actividades` (`id_a`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
