-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Proyecto_Integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Proyecto_Integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Proyecto_Integrador` DEFAULT CHARACTER SET utf8 ;
USE `Proyecto_Integrador` ;

-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`usuario` (
  `idusuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombrecompleto` VARCHAR(150) NOT NULL,
  `usuario` VARCHAR(50) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `contrasenia` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `usuario_UNIQUE` (`usuario` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`productos` (
  `idproductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` INT UNSIGNED NOT NULL,
  `categoria` INT UNSIGNED NOT NULL,
  `enlaceimagen` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idproductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`administrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`administrador` (
  `idadministrador` INT NOT NULL AUTO_INCREMENT,
  `idusuario` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idadministrador`),
  INDEX `idusuario_idx` (`idusuario` ASC) VISIBLE,
  CONSTRAINT `idusuario`
    FOREIGN KEY (`idusuario`)
    REFERENCES `Proyecto_Integrador`.`usuario` (`idusuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`registrodeventa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`registrodeventa` (
  `idregistroventa` INT NOT NULL,
  `idproducto` INT UNSIGNED NOT NULL,
  `cantidadvendida` INT UNSIGNED NOT NULL,
  `idusuario` INT UNSIGNED NOT NULL,
  `fechadeventa` DATE NOT NULL,
  PRIMARY KEY (`idregistroventa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`talla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`talla` (
  `idtalla` INT NOT NULL AUTO_INCREMENT,
  `talla` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idtalla`),
  UNIQUE INDEX `idtalla_UNIQUE` (`idtalla` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`productos_has_talla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`productos_has_talla` (
  `productos_idproductos` INT NOT NULL,
  `talla_idtalla` INT NOT NULL,
  PRIMARY KEY (`productos_idproductos`, `talla_idtalla`),
  INDEX `fk_productos_has_talla_talla1_idx` (`talla_idtalla` ASC) VISIBLE,
  INDEX `fk_productos_has_talla_productos1_idx` (`productos_idproductos` ASC) VISIBLE,
  CONSTRAINT `fk_productos_has_talla_productos1`
    FOREIGN KEY (`productos_idproductos`)
    REFERENCES `Proyecto_Integrador`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_has_talla_talla1`
    FOREIGN KEY (`talla_idtalla`)
    REFERENCES `Proyecto_Integrador`.`talla` (`idtalla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Proyecto_Integrador`.`usuario_has_productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Proyecto_Integrador`.`usuario_has_productos` (
  `usuario_idusuario` INT UNSIGNED NOT NULL,
  `productos_idproductos` INT NOT NULL,
  `cantidad` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`usuario_idusuario`, `productos_idproductos`),
  INDEX `fk_usuario_has_productos_productos1_idx` (`productos_idproductos` ASC) VISIBLE,
  INDEX `fk_usuario_has_productos_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_has_productos_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `Proyecto_Integrador`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_productos_productos1`
    FOREIGN KEY (`productos_idproductos`)
    REFERENCES `Proyecto_Integrador`.`productos` (`idproductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
