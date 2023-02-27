use proyecto_integrador;

INSERT INTO `usuario` (`nombrecompleto`,`usuario`,`telefono`,`email`,`contrasenia`) 
VALUES ("Raygoza Zamudio Rafael","Rafa","3330349623", "raygoza.zamudio.rafael@gmail.com","Contraseña segura");
INSERT INTO `administrador`(`idusuario`)
SELECT `idusuario` FROM usuario WHERE `nombrecompleto` = "Raygoza Zamudio Rafael";

INSERT INTO `usuario` (`nombrecompleto`,`usuario`,`telefono`,`email`,`contrasenia`)
VALUES("Juan Marcos Gonzalez Romo","JuanMGonRo","3316935436","gonzalezromojm@gmail.com","juanito1997");
INSERT INTO `administrador`(`idusuario`)
SELECT `idusuario` FROM usuario WHERE `nombrecompleto` = "Juan Marcos Gonzalez Romo";

INSERT INTO `usuario` (`nombrecompleto`,`usuario`,`telefono`,`email`,`contrasenia`)
VALUES("Karen Chavando Perez","KarenCP","3316935296","chavandokaren09@gmail.com","karen1234");
INSERT INTO `administrador`(`idusuario`)
SELECT `idusuario` FROM usuario WHERE `nombrecompleto` = "Karen Chavando Perez";

INSERT INTO `usuario` (`nombrecompleto`,`usuario`,`telefono`,`email`,`contrasenia`)
VALUES("María Fernanda Rosales Ortega", "FerRos","5544517592","fernanda.rosales.ortega@gmail.com","F312066064");
INSERT INTO `administrador`(`idusuario`)
SELECT `idusuario` FROM usuario WHERE `nombrecompleto` = "María Fernanda Rosales Ortega";

INSERT INTO `usuario` (`nombrecompleto`,`usuario`,`telefono`,`email`,`contrasenia`)
VALUES("Alejandro Morales","alex19","7295183114","moralesa043@gmail.com","1234");
INSERT INTO `administrador`(`idusuario`)
SELECT `idusuario` FROM usuario WHERE `nombrecompleto` = "Alejandro Morales";