/*
    Script ddl para crear la base dedatos bd_biblios que contiene tablas y objetos para el control de datos de libros y control de prestamos de libros.
    Codigo de MySQL.
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `bd_biblios` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblAutores` (
  `codAutor` INT(11) NOT NULL AUTO_INCREMENT,
  `identificador` VARCHAR(45) NULL DEFAULT NULL,
  `nombres` VARCHAR(120) NULL DEFAULT NULL,
  `apellidos` VARCHAR(120) NULL DEFAULT NULL,
  `pseudonimo` VARCHAR(45) NULL DEFAULT NULL,
  `nacionalidad` VARCHAR(45) NULL DEFAULT NULL,
  `lugarNacimiento` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNacimiento` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`codAutor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblLibros` (
  `codLibro` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(120) NULL DEFAULT NULL,
  `ISBN` VARCHAR(45) NULL DEFAULT NULL,
  `numPaginas` INT(11) NULL DEFAULT NULL,
  `volumen` VARCHAR(45) NULL DEFAULT NULL,
  `version` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `idiomaOrigen` VARCHAR(45) NULL DEFAULT NULL,
  `IdiomaPublicacion` VARCHAR(45) NULL DEFAULT NULL,
  `lugarPublicacion` VARCHAR(45) NULL DEFAULT NULL,
  `fechaPublicacion` DATETIME NULL DEFAULT NULL,
  `codEditorial` INT(11) NOT NULL,
  `codGenero` INT(11) NOT NULL,
  PRIMARY KEY (`codLibro`),
  INDEX `fk_tblLibros_tblEditoriales1_idx` (`codEditorial` ASC) VISIBLE,
  INDEX `fk_tblLibros_tblGeneros1_idx` (`codGenero` ASC) VISIBLE,
  CONSTRAINT `fk_tblLibros_tblEditoriales1`
    FOREIGN KEY (`codEditorial`)
    REFERENCES `bd_biblios`.`tblEditoriales` (`codEditorial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblLibros_tblGeneros1`
    FOREIGN KEY (`codGenero`)
    REFERENCES `bd_biblios`.`tblGeneros` (`codGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblUsuarios` (
  `codUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `numDNI` VARCHAR(45) NULL DEFAULT NULL,
  `nombrecompleto` VARCHAR(120) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `direccion` VARCHAR(45) NULL DEFAULT NULL,
  `fechanacimiento` DATETIME NULL DEFAULT NULL,
  `ocupacion` VARCHAR(45) NULL DEFAULT NULL,
  `lugarOcupacion` VARCHAR(120) NULL DEFAULT NULL,
  `detalles` VARCHAR(450) NULL DEFAULT NULL,
  PRIMARY KEY (`codUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblAutoresXLibro` (
  `codAutor` INT(11) NOT NULL,
  `codLibro` INT(11) NOT NULL,
  INDEX `fk_tblAutoresXLibro_tblAutores_idx` (`codAutor` ASC) VISIBLE,
  INDEX `fk_tblAutoresXLibro_tblLibros1_idx` (`codLibro` ASC) VISIBLE,
  CONSTRAINT `fk_tblAutoresXLibro_tblAutores`
    FOREIGN KEY (`codAutor`)
    REFERENCES `bd_biblios`.`tblAutores` (`codAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblAutoresXLibro_tblLibros1`
    FOREIGN KEY (`codLibro`)
    REFERENCES `bd_biblios`.`tblLibros` (`codLibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblControlUso` (
  `codRegistro` INT(11) NOT NULL AUTO_INCREMENT,
  `codUsuario` INT(11) NOT NULL,
  `codLibro` INT(11) NOT NULL,
  `fechasalida` DATETIME NULL DEFAULT NULL,
  `fechaEntrada` DATETIME NULL DEFAULT NULL,
  `diasOtorgados` INT(11) NULL DEFAULT NULL,
  `fechaEntrega` DATETIME NULL DEFAULT NULL,
  `responsableEntrega` VARCHAR(45) NULL DEFAULT NULL,
  `responsableRecibe` VARCHAR(45) NULL DEFAULT NULL,
  `detalles` VARCHAR(2500) NULL DEFAULT NULL,
  INDEX `fk_tblUsuriosXLibros_tblUsuarios1_idx` (`codUsuario` ASC) VISIBLE,
  INDEX `fk_tblUsuriosXLibros_tblLibros1_idx` (`codLibro` ASC) VISIBLE,
  PRIMARY KEY (`codRegistro`),
  CONSTRAINT `fk_tblUsuriosXLibros_tblUsuarios1`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `bd_biblios`.`tblUsuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblUsuriosXLibros_tblLibros1`
    FOREIGN KEY (`codLibro`)
    REFERENCES `bd_biblios`.`tblLibros` (`codLibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblEditoriales` (
  `codEditorial` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codEditorial`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bd_biblios`.`tblGeneros` (
  `codGenero` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`codGenero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;