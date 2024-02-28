-- MySQL Workbench Synchronization
-- Generated: 2024-02-27 22:30
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: User

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `bdClinica` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblEmpleados` (
  `numEmpleado` INT(11) NOT NULL AUTO_INCREMENT,
  `DNI` VARCHAR(15) NULL DEFAULT NULL,
  `Nombres` VARCHAR(120) NULL DEFAULT NULL,
  `Apellidos` VARCHAR(120) NULL DEFAULT NULL,
  `FechaNacimiento` DATETIME NULL DEFAULT NULL,
  `Edad` INT(11) NULL DEFAULT NULL,
  `FechaIngreso` DATETIME NULL DEFAULT NULL,
  `numTipoEmpleado` INT(11) NOT NULL,
  `numDireccion` INT(11) NOT NULL,
  `numProfesion` INT(11) NOT NULL,
  PRIMARY KEY (`numEmpleado`),
  INDEX `fk_tblEmpleados_tblTipoEmpleado1_idx` (`numTipoEmpleado` ASC) VISIBLE,
  INDEX `fk_tblEmpleados_tblDireccion1_idx` (`numDireccion` ASC) VISIBLE,
  INDEX `fk_tblEmpleados_tblProfesiones1_idx` (`numProfesion` ASC) VISIBLE,
  CONSTRAINT `fk_tblEmpleados_tblTipoEmpleado1`
    FOREIGN KEY (`numTipoEmpleado`)
    REFERENCES `bdClinica`.`tblTipoEmpleado` (`numTipoEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblEmpleados_tblDireccion1`
    FOREIGN KEY (`numDireccion`)
    REFERENCES `bdClinica`.`tblDireccion` (`numDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblEmpleados_tblProfesiones1`
    FOREIGN KEY (`numProfesion`)
    REFERENCES `bdClinica`.`tblProfesiones` (`numProfesion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblUsuarios` (
  `numUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` VARCHAR(45) NULL DEFAULT NULL,
  `contrasena` VARCHAR(500) NULL DEFAULT NULL,
  `numEmpleado` INT(11) NOT NULL,
  `numEstado` INT(11) NOT NULL,
  PRIMARY KEY (`numUsuario`),
  INDEX `fk_tblUsuarios_tblEmpleados1_idx` (`numEmpleado` ASC) VISIBLE,
  INDEX `fk_tblUsuarios_tblEstados1_idx` (`numEstado` ASC) VISIBLE,
  CONSTRAINT `fk_tblUsuarios_tblEmpleados1`
    FOREIGN KEY (`numEmpleado`)
    REFERENCES `bdClinica`.`tblEmpleados` (`numEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblUsuarios_tblEstados1`
    FOREIGN KEY (`numEstado`)
    REFERENCES `bdClinica`.`tblEstados` (`numEstado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblClinica` (
  `numClinica` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(20) NULL DEFAULT NULL,
  `numDireccion` INT(11) NOT NULL,
  PRIMARY KEY (`numClinica`),
  INDEX `fk_tblClinica_tblDireccion1_idx` (`numDireccion` ASC) VISIBLE,
  CONSTRAINT `fk_tblClinica_tblDireccion1`
    FOREIGN KEY (`numDireccion`)
    REFERENCES `bdClinica`.`tblDireccion` (`numDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblPacientes` (
  `numPaciente` INT(11) NOT NULL AUTO_INCREMENT,
  `dni` VARCHAR(15) NULL DEFAULT NULL,
  `nombres` VARCHAR(45) NULL DEFAULT NULL,
  `apellidos` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNacimiento` DATETIME NULL DEFAULT NULL,
  `edad` INT(11) NULL DEFAULT NULL,
  `sexo` VARCHAR(15) NULL DEFAULT NULL,
  `alturaCms` DOUBLE NULL DEFAULT NULL,
  `pesoLbs` DOUBLE NULL DEFAULT NULL,
  `numDireccion` INT(11) NOT NULL,
  PRIMARY KEY (`numPaciente`),
  INDEX `fk_tblPacientes_tblDireccion1_idx` (`numDireccion` ASC) VISIBLE,
  CONSTRAINT `fk_tblPacientes_tblDireccion1`
    FOREIGN KEY (`numDireccion`)
    REFERENCES `bdClinica`.`tblDireccion` (`numDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblCitas` (
  `numCita` INT(11) NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NULL DEFAULT NULL,
  `sala` VARCHAR(45) NULL DEFAULT NULL,
  `numPaciente` INT(11) NOT NULL,
  `numClinica` INT(11) NOT NULL,
  `numUsuario` INT(11) NOT NULL,
  `numEstado` INT(11) NOT NULL,
  PRIMARY KEY (`numCita`),
  INDEX `fk_tblCitas_tblPacientes_idx` (`numPaciente` ASC) VISIBLE,
  INDEX `fk_tblCitas_tblClinica1_idx` (`numClinica` ASC) VISIBLE,
  INDEX `fk_tblCitas_tblUsuarios1_idx` (`numUsuario` ASC) VISIBLE,
  INDEX `fk_tblCitas_tblEstados1_idx` (`numEstado` ASC) VISIBLE,
  CONSTRAINT `fk_tblCitas_tblPacientes`
    FOREIGN KEY (`numPaciente`)
    REFERENCES `bdClinica`.`tblPacientes` (`numPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblCitas_tblClinica1`
    FOREIGN KEY (`numClinica`)
    REFERENCES `bdClinica`.`tblClinica` (`numClinica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblCitas_tblUsuarios1`
    FOREIGN KEY (`numUsuario`)
    REFERENCES `bdClinica`.`tblUsuarios` (`numUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tblCitas_tblEstados1`
    FOREIGN KEY (`numEstado`)
    REFERENCES `bdClinica`.`tblEstados` (`numEstado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblRecetas` (
  `numReceta` INT(11) NOT NULL AUTO_INCREMENT,
  `fechaHora` DATETIME NULL DEFAULT NULL,
  `descripcion` VARCHAR(2500) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `numCita` INT(11) NOT NULL,
  PRIMARY KEY (`numReceta`),
  INDEX `fk_tblRecetas_tblCitas1_idx` (`numCita` ASC) VISIBLE,
  CONSTRAINT `fk_tblRecetas_tblCitas1`
    FOREIGN KEY (`numCita`)
    REFERENCES `bdClinica`.`tblCitas` (`numCita`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblDireccion` (
  `numDireccion` INT(11) NOT NULL AUTO_INCREMENT,
  `numCiudad` INT(11) NOT NULL,
  `Detalles` VARCHAR(45) NULL DEFAULT NULL,
  `Calle` VARCHAR(45) NULL DEFAULT NULL,
  `Avenida` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`numDireccion`),
  INDEX `fk_tblDireccion_tblCiudades1_idx` (`numCiudad` ASC) VISIBLE,
  CONSTRAINT `fk_tblDireccion_tblCiudades1`
    FOREIGN KEY (`numCiudad`)
    REFERENCES `bdClinica`.`tblCiudades` (`numCiudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblTipoEmpleado` (
  `numTipoEmpleado` INT(11) NOT NULL AUTO_INCREMENT,
  `TipoEmpleado` VARCHAR(120) NULL DEFAULT NULL,
  `Descripcion` VARCHAR(450) NULL DEFAULT NULL,
  PRIMARY KEY (`numTipoEmpleado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblCiudades` (
  `numCiudad` INT(11) NOT NULL AUTO_INCREMENT,
  `Ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `Codigo` VARCHAR(45) NULL DEFAULT NULL,
  `numMunicipio` INT(11) NOT NULL,
  PRIMARY KEY (`numCiudad`),
  INDEX `fk_tblCiudades_tblMunicipios1_idx` (`numMunicipio` ASC) VISIBLE,
  CONSTRAINT `fk_tblCiudades_tblMunicipios1`
    FOREIGN KEY (`numMunicipio`)
    REFERENCES `bdClinica`.`tblMunicipios` (`numMunicipio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblMunicipios` (
  `numMunicipio` INT(11) NOT NULL AUTO_INCREMENT,
  `Municipio` VARCHAR(45) NULL DEFAULT NULL,
  `Codigo` VARCHAR(45) NULL DEFAULT NULL,
  `numDepartamento` INT(11) NOT NULL,
  PRIMARY KEY (`numMunicipio`),
  INDEX `fk_tblMunicipios_tblDepartamento1_idx` (`numDepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_tblMunicipios_tblDepartamento1`
    FOREIGN KEY (`numDepartamento`)
    REFERENCES `bdClinica`.`tblDepartamento` (`numDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblDepartamento` (
  `numDepartamento` INT(11) NOT NULL AUTO_INCREMENT,
  `Departamento` VARCHAR(45) NULL DEFAULT NULL,
  `Codigo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`numDepartamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblEstados` (
  `numEstado` INT(11) NOT NULL AUTO_INCREMENT,
  `Estado` VARCHAR(45) NULL DEFAULT NULL,
  `Categoria` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`numEstado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `bdClinica`.`tblProfesiones` (
  `numProfesion` INT(11) NOT NULL AUTO_INCREMENT,
  `Profesion` VARCHAR(120) NULL DEFAULT NULL,
  `Descrpcion` VARCHAR(2500) NULL DEFAULT NULL,
  PRIMARY KEY (`numProfesion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
