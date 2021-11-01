# +===================================================================
# |
# | Generado el 25-11-2008 a las 12:11:02 PM
# | Servidor: localhost
# | MySQL Version: 5.0.51b-community-nt
# | PHP Version: 5.2.6
# | Base de datos: 'aqua3_web'
# |
# +-------------------------------------------------------------------
# | Vaciado de tabla 'web_cat'
# +------------------------------------->
DROP TABLE IF EXISTS `web_cat`;


# | Estructura de la tabla 'web_cat'
# +------------------------------------->
CREATE TABLE `web_cat` (
  `cat_id` tinyint(10) NOT NULL auto_increment,
  `cat_usuarios` tinytext collate utf8_unicode_ci,
  `cat_productos` tinytext collate utf8_unicode_ci,
  `cat_servicios` tinytext collate utf8_unicode_ci,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_cat'
# +------------------------------------->
INSERT INTO `web_cat` VALUES ('1', 'admin', 'Productos', 'Servicios');
INSERT INTO `web_cat` VALUES ('2', 'editor', NULL, NULL);


# | Vaciado de tabla 'web_conf'
# +------------------------------------->
DROP TABLE IF EXISTS `web_conf`;


# | Estructura de la tabla 'web_conf'
# +------------------------------------->
CREATE TABLE `web_conf` (
  `conf_id` tinyint(10) NOT NULL,
  `conf_nombre_sitio` tinytext collate utf8_unicode_ci NOT NULL,
  `conf_slogan` tinytext collate utf8_unicode_ci NOT NULL,
  `conf_descripcion` text collate utf8_unicode_ci NOT NULL,
  `conf_mail` tinytext collate utf8_unicode_ci NOT NULL,
  `conf_telefono` tinytext collate utf8_unicode_ci NOT NULL,
  `conf_direccion` tinytext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`conf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_conf'
# +------------------------------------->
INSERT INTO `web_conf` VALUES ('1', 'Aqua3', '', 'Producción de Agua Soda y Agua Pura.', 'contacto@aqua3.cl', '(+56) (032) 222 33 48 - (+56) (032) 284 33 16', 'Los Alelíes Nº 21 - Achupallas - Viña del Mar - Chile');


# | Vaciado de tabla 'web_files'
# +------------------------------------->
DROP TABLE IF EXISTS `web_files`;


# | Estructura de la tabla 'web_files'
# +------------------------------------->
CREATE TABLE `web_files` (
  `files_id` tinyint(10) NOT NULL auto_increment,
  `files_nombre` tinytext collate utf8_unicode_ci NOT NULL,
  `files_file` tinytext collate utf8_unicode_ci NOT NULL,
  `files_size` varchar(255) collate utf8_unicode_ci NOT NULL,
  `files_ext` tinytext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`files_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_files'
# +------------------------------------->
INSERT INTO `web_files` VALUES ('1', 'Proceso AguaPura - Animaci&oacute;n', '16112008-1029_proceso_aguapura.swf', '66014', 'swf');
INSERT INTO `web_files` VALUES ('2', 'Proceso AguaPura - Editable', '16112008-1029_proceso_aguapura.fla', '505344', 'fla');
INSERT INTO `web_files` VALUES ('3', 'Proceso AguaSoda - Animaci&oacute;n', '16112008-1036_proceso_aguasoda.swf', '100140', 'swf');
INSERT INTO `web_files` VALUES ('4', 'Proceso AguaSoda - Editable', '16112008-1036_proceso_aguasoda.fla', '736768', 'fla');
INSERT INTO `web_files` VALUES ('5', 'Animaci&oacute;n Header - Editable', '16112008-1036_arriba.fla', '124416', 'fla');
INSERT INTO `web_files` VALUES ('6', 'Animaci&oacute;n Header', '16112008-1037_arriba.swf', '12286', 'swf');


# | Vaciado de tabla 'web_img'
# +------------------------------------->
DROP TABLE IF EXISTS `web_img`;


# | Estructura de la tabla 'web_img'
# +------------------------------------->
CREATE TABLE `web_img` (
  `img_id` tinyint(10) NOT NULL auto_increment,
  `img_nombre` tinytext collate utf8_unicode_ci NOT NULL,
  `img_imagen` tinytext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_img'
# +------------------------------------->
INSERT INTO `web_img` VALUES ('21', 'Productos', '16112008-1021_productos.jpg');
INSERT INTO `web_img` VALUES ('22', 'Pedidos', '16112008-1023_pedidos.jpg');


# | Vaciado de tabla 'web_info'
# +------------------------------------->
DROP TABLE IF EXISTS `web_info`;


# | Estructura de la tabla 'web_info'
# +------------------------------------->
CREATE TABLE `web_info` (
  `info_id` tinyint(4) NOT NULL,
  `info_inicio` text collate utf8_unicode_ci NOT NULL,
  `info_empresa` text collate utf8_unicode_ci NOT NULL,
  `info_contacto` text collate utf8_unicode_ci NOT NULL,
  `info_contacto_error` text collate utf8_unicode_ci NOT NULL,
  `info_contacto_exito` text collate utf8_unicode_ci NOT NULL,
  `info_404` text collate utf8_unicode_ci NOT NULL,
  `info_aguapura` text collate utf8_unicode_ci NOT NULL,
  `info_aguasoda` text collate utf8_unicode_ci NOT NULL,
  `info_pedidos` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_info'
# +------------------------------------->
INSERT INTO `web_info` VALUES ('0', '<h2>Productos</h2>                                            <div align=\"center\"><a href=\"productos.php\"><img class=\"left\" src=\"imagenes/16112008-1021_productos.jpg\" border=\"0\" alt=\"\" width=\"332\" height=\"332\" /></a>                    </div>                  <p>Aqua3 es un agua de alta calidad  elaborada a través de técnicas de esterilización, ionización y ablandamiento que garantizan la ausencia absoluta de bacterias.            </p>                   <p>Hemos diseñado nuestros productos en diversos formatos y tamaños, con el fin de satisfacer su paladar. </p>                   <div align=\"right\"><a href=\"productos.php\">Conozca todos los productos que ofrecemos »</a></div>  <p> </p> <h2>Formulario de pedidos en línea </h2>          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"90%\">            <tbody><tr>              <td valign=\"bottom\"><a href=\"pedidos.php\"><img class=\"img\" src=\"img/pedidos_ch.png\" border=\"0\" alt=\"Producto Destacado\" width=\"100\" height=\"100\" align=\"left\" /></a></td>              <td valign=\"top\"><p>Haga sus pedidos de agua pura o agua soda desde la comodidad de su casa u oficina, a través de nuestro formulario de pedidos. </p>                   <p>Demora menos de 5 minutos rellenarlo.</p>                  <div align=\"right\"><a href=\"pedidos.php\">Hacer pedido en línea »</a></div></td>            </tr>          </tbody></table>', '<p>En Zocymig nos preocupamos constantemente de la calidad de nuestros procesos productivos. Nuestra implementación tecnológica nos permite asegurar la limpieza y pureza de todos nuestros productos. </p>          <p>Agua pura y agua soda Aqua3 está elaborada a través de técnicas de esterilización, ionización y ablandamiento absolutamente libre de bacterias. </p>          <p>Si desea conocer más a fondo nuestros procesos de creación de <a href=\"aguapura.php\" title=\"Ver Animación del Proceso de Creación de Agua Pura\">agua pura</a> o <a href=\"aguasoda.php\" title=\"Ver Animación del Proceso de Creación de Agua Soda\">agua soda</a>, puede revisar las animaciones que hemos preparado para usted. </p>          <div align=\"right\"><a href=\"aguapura.php\" title=\"Ver Animación del Proceso de Creación de Agua Pura\"><br />          Ver Animación de Agua Pura »</a><br />            <br />              <a href=\"aguasoda.php\" title=\"Ver Animación del Proceso de Creación de Agua Soda\">Ver Animación de Agua Soda »</a></div>', '<p>Puede contactarnos a través de este formulario de contacto, enviando un correo electrónico a <a href=\"mailto:contacto@aqua3.cl\">contacto@aqua3.cl</a> o por teléfono, a los números (032) 222 33 48 - (032) 284 33 16.</p>          <p><strong>Nota: Todos los campos del formulario son necesarios.</strong></p>', '<h2>Error</h2> <p><strong>¡Oh, no!</strong></p> <p>Ha ocurrido un error. Por favor avise del error a <a href=\"mailto:contacto@aqua3.cl\">contacto@aqua3.cl</a> e inténtelo nuevamente más tarde.</p> <p>También puede contactarnos por teléfono, a los números (032) 222 33 48 - (032) 284 33 16.</p><p> </p><p> </p><p> </p>', '<h2>¡Muchas gracias!</h2> <p>Su información ha llegado a nuestro correo. Trataremos de responderle a la brevedad.</p><p>También puede contactarnos en a <a href=\"mailto:contacto@aqua3.cl\">contacto@aqua3.cl</a> o por teléfono, a los números (032) 222 33 48 - (032) 284 33 16.</p><p> </p><p> </p><p> </p><p> </p>', '<h2>Error 404</h2> <p>La página que usted está buscando no existe.</p>', '<h2>Etapa 1. </h2>          <p><strong>Filtro de Profundidad: </strong> Se cristaliza el agua usando cuarzo.</p>          <h2>Etapa 2. </h2>          <p><strong>Filtro de Ablandamiento: </strong> Ablanda el agua utilizando resina vegetal, de espino silvestre.</p>           <h2>Etapa 3. </h2>          <p><strong>Filtro de Carbón: </strong> Utilizando carbón activado, se eliminan los malos olores y el cloro.</p>          <h2>Etapa 4. </h2>          <p><strong>Filtro de Pañete: </strong> Elimina los residuos de carbón que puedan quedar en el agua.</p>           <h2>Etapa 5: </h2>          <p><strong>Filtro Ultravioleta: </strong> Elimina los microbios que puedan existir en el agua.</p>          <h2>Etapa 6: </h2>          <p><strong>Preservantes: </strong> Agrega preservantes al agua, usualmente láminas de plata.</p>           <h2>Etapa 7. </h2>          <p><strong>Embotellado: </strong> El agua pura se envasa para su comercialización. </p>', '<h2>Etapa 1. </h2>          <p><strong>Filtro de Profundidad: </strong> Se cristaliza el agua usando cuarzo.</p>          <h2>Etapa 2. </h2>          <p><strong>Filtro de Ablandamiento: </strong> Ablanda el agua utilizando resina vegetal, de espino silvestre.</p>           <h2>Etapa 3. </h2>          <p><strong>Filtro de Carbón: </strong> Utilizando carbón activado, se eliminan los malos olores y el cloro.</p>          <h2>Etapa 4. </h2>          <p><strong>Filtro de Pañete: </strong>Elimina los residuos de carbón que puedan quedar en el agua.</p>           <h2>Etapa 5: </h2>          <p><strong>Filtro Ultravioleta: </strong>Elimina los microbios que puedan existir en el agua.</p>          <h2>Etapa 6: </h2>          <p><strong>Preservantes: </strong>Agrega preservantes al agua, usualmente láminas de plata.</p>          <h2>Etapa 7. </h2>           <p><strong>Gasificación: </strong> Una máquina mezcla el agua pura con CO2, para crear la soda.</p>          <h2>Etapa 8. </h2>          <p><strong>Embotellado: </strong>El agua soda se envasa en sifones (previamente lavados y esterilizados) para su comercialización. </p>', '<p>A través de este formulario usted puede hacer sus pedidos en línea de agua pura o agua soda. También puede hacerlo por teléfono, a los números (032) 222 33 48 - (032) 284 33 16.</p>          <p>Si necesita más información o si sólo desea contactar con nosotros, visite la <a href=\"contacto.php\">sección de contacto</a>.</p>          <h2><strong>TEMPORALMENTE DESACTIVADO!!! </strong></h2><p> <strong>Nota:  Todos los campos que tengan asterisco (*) son obligatorios.</strong></p>');


# | Vaciado de tabla 'web_not'
# +------------------------------------->
DROP TABLE IF EXISTS `web_not`;


# | Estructura de la tabla 'web_not'
# +------------------------------------->
CREATE TABLE `web_not` (
  `not_id` tinyint(10) NOT NULL auto_increment,
  `not_nombre` tinytext collate utf8_unicode_ci NOT NULL,
  `not_resena` text collate utf8_unicode_ci NOT NULL,
  `not_text` text collate utf8_unicode_ci NOT NULL,
  `not_cat` tinytext collate utf8_unicode_ci NOT NULL,
  `not_pub` tinytext collate utf8_unicode_ci NOT NULL,
  `not_dest` tinytext collate utf8_unicode_ci NOT NULL,
  `not_fecha` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_not'
# +------------------------------------->


# | Vaciado de tabla 'web_prod'
# +------------------------------------->
DROP TABLE IF EXISTS `web_prod`;


# | Estructura de la tabla 'web_prod'
# +------------------------------------->
CREATE TABLE `web_prod` (
  `prod_id` tinyint(10) NOT NULL auto_increment,
  `prod_nombre` tinytext collate utf8_unicode_ci NOT NULL,
  `prod_imagen` tinytext collate utf8_unicode_ci NOT NULL,
  `prod_resena` text collate utf8_unicode_ci NOT NULL,
  `prod_pub` tinytext collate utf8_unicode_ci NOT NULL,
  `prod_cat` tinytext collate utf8_unicode_ci NOT NULL,
  `prod_dest` tinytext collate utf8_unicode_ci NOT NULL,
  `prod_fecha` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_prod'
# +------------------------------------->
INSERT INTO `web_prod` VALUES ('1', 'Bid&oacute;n 20 litros.', '16112008-1147_20000pura.jpg', '&lt;p&gt; 20 litros de Agua Pura (sin gas) de la mejor calidad en envase retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_prod` VALUES ('2', 'Bid&oacute;n 12 litros.', '16112008-1148_12000pura.jpg', '&lt;p&gt; 12 litros de Agua Pura (sin gas) de la mejor calidad  en envase  retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_prod` VALUES ('3', 'Bid&oacute;n 5 litros.', '16112008-1153_5000pura.jpg', '&lt;p&gt;5 litros de Agua Pura (sin gas) de la mejor calidad en envase no retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_prod` VALUES ('4', 'Sif&oacute;n 1500 c.c.', '16112008-1154_sifon2.jpg', '&lt;p&gt;Un litro y medio de  Agua Soda (con gas) de la mejor calidad en envase retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_prod` VALUES ('5', 'Botella 1500 c.c.', '16112008-1155_1500.jpg', '&lt;p&gt;Un  litro y medio de Agua Pura (sin gas) o Agua Soda (con gas) de la mejor calidad en envase no retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_prod` VALUES ('6', 'Botella 500 c.c.', '16112008-1155_500pura.jpg', '&lt;p&gt;Medio litro de Agua Pura (sin gas) o Agua Soda (con gas) de la mejor calidad en envase no retornable.&lt;/p&gt;', 'si', '1', 'si', '1226808000');


# | Vaciado de tabla 'web_serv'
# +------------------------------------->
DROP TABLE IF EXISTS `web_serv`;


# | Estructura de la tabla 'web_serv'
# +------------------------------------->
CREATE TABLE `web_serv` (
  `serv_id` tinyint(10) NOT NULL auto_increment,
  `serv_nombre` tinytext collate utf8_unicode_ci NOT NULL,
  `serv_imagen` tinytext collate utf8_unicode_ci NOT NULL,
  `serv_resena` text collate utf8_unicode_ci NOT NULL,
  `serv_pub` tinytext collate utf8_unicode_ci NOT NULL,
  `serv_cat` tinytext collate utf8_unicode_ci NOT NULL,
  `serv_dest` tinytext collate utf8_unicode_ci NOT NULL,
  `serv_fecha` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`serv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_serv'
# +------------------------------------->
INSERT INTO `web_serv` VALUES ('1', 'Pedidos en l&iacute;nea', '16112008-1124_pedidos_big.png', '&lt;p&gt;Haga sus pedidos de agua pura o agua soda desde la comodidad de su casa u oficina, a trav&amp;eacute;s de nuestro formulario de pedidos. &lt;/p&gt;                &lt;p&gt;Demora menos de 5 minutos rellenarlo.&lt;/p&gt;&lt;div align=&quot;right&quot;&gt;&lt;a href=&quot;pedidos.php&quot;&gt;Hacer pedido en l&amp;iacute;nea &amp;raquo;&lt;/a&gt;&lt;/div&gt;', 'si', '1', 'si', '1226808000');
INSERT INTO `web_serv` VALUES ('2', 'Despacho Gratuito a Domicilio', '16112008-1138_reparto.png', '&lt;p&gt;Reciba Aqua3 en su hogar u oficina a trav&amp;eacute;s de nuestro servicio de reparto gratuito. &lt;/p&gt;                &lt;p&gt;Si necesita solicitar su agua pura o agua soda, puede hacerlo a trav&amp;eacute;s de los tel&amp;eacute;fonos de la secci&amp;oacute;n de contacto o por el formulario de pedidos.&lt;/p&gt;', 'si', '1', 'no', '1226808000');


# | Vaciado de tabla 'web_usuarios'
# +------------------------------------->
DROP TABLE IF EXISTS `web_usuarios`;


# | Estructura de la tabla 'web_usuarios'
# +------------------------------------->
CREATE TABLE `web_usuarios` (
  `usuarios_id` tinyint(10) NOT NULL auto_increment,
  `usuarios_nombre` varchar(25) collate utf8_unicode_ci NOT NULL,
  `usuarios_password` varchar(50) collate utf8_unicode_ci NOT NULL,
  `usuarios_tipo` varchar(50) collate utf8_unicode_ci NOT NULL,
  `usuarios_nombre_completo` text collate utf8_unicode_ci NOT NULL,
  `usuarios_genero` tinytext collate utf8_unicode_ci NOT NULL,
  `usuarios_email` tinytext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`usuarios_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


# | Carga de datos de la tabla 'web_usuarios'
# +------------------------------------->
INSERT INTO `web_usuarios` VALUES ('1', 'gabo', 'c32d3ca1eac61eff475a2dc79e19fe3e', 'admin', 'Gabriel Araya Rocha', 'masculino', 'gabo.araya@gmail.com');
INSERT INTO `web_usuarios` VALUES ('2', 'admin', 'cebd2a809327cd002e01e9abb6dedfc8', 'admin', 'Administrador', 'masculino', 'contacto@aqua3.cl');

