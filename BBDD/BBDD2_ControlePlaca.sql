-- MySQL Script generated by MySQL Workbench
-- Thu Jul 15 23:24:35 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ControlePlaca
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ControlePlaca
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ControlePlaca` DEFAULT CHARACTER SET utf8 ;
USE `ControlePlaca` ;

-- -----------------------------------------------------
-- Table `ControlePlaca`.`Loja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Loja` (
  `IdCodigo` INT NOT NULL AUTO_INCREMENT,
  `NomeLoja` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdCodigo`),
  UNIQUE INDEX `NomeLoja_UNIQUE` (`NomeLoja` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControlePlaca`.`Modelo_Placa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Modelo_Placa` (
  `idModelo_Placa` INT NOT NULL AUTO_INCREMENT,
  `Modelo_Placa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idModelo_Placa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControlePlaca`.`Status_Ativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Status_Ativo` (
  `idStatus_Ativo` INT NOT NULL AUTO_INCREMENT,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus_Ativo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControlePlaca`.`Tipo_Placa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Tipo_Placa` (
  `idTipo_Placa` INT NOT NULL AUTO_INCREMENT,
  `Tipo_Placa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipo_Placa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControlePlaca`.`Modelo_Jogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Modelo_Jogo` (
  `idModelo_Jogo` INT NOT NULL AUTO_INCREMENT,
  `Modelo_Jogo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idModelo_Jogo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControlePlaca`.`Cadastro_Ativos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControlePlaca`.`Cadastro_Ativos` (
  `idCadastro_Ativos` INT NOT NULL AUTO_INCREMENT,
  `IdLoja` INT NOT NULL,
  `Nome_Loja` VARCHAR(45) NOT NULL,
  `Num_Interno` INT NOT NULL,
  `Num_Serial` VARCHAR(45) NOT NULL,
  `IdModelo_Jogo` INT NOT NULL,
  `IdTipo_Placa` INT NOT NULL,
  `IdModelo_Placa` INT NOT NULL,
  `Data_Caduca` DATETIME NOT NULL,
  `Status_Ativo` INT NOT NULL,
  PRIMARY KEY (`idCadastro_Ativos`),
  INDEX `fk_ModeloJogo_idx` (`IdModelo_Jogo` ASC) VISIBLE,
  INDEX `fk_TipoPlaca_idx` (`IdTipo_Placa` ASC) VISIBLE,
  INDEX `fk_ModeloPlaca_idx` (`IdModelo_Placa` ASC) VISIBLE,
  INDEX `fk_StatusAtivo_idx` (`Status_Ativo` ASC) VISIBLE,
  INDEX `fk_idloja_idx` (`IdLoja` ASC) INVISIBLE,
  UNIQUE INDEX `Nome_Loja_UNIQUE` (`Nome_Loja` ASC) VISIBLE,
  CONSTRAINT `fk_ModeloJogo`
    FOREIGN KEY (`IdModelo_Jogo`)
    REFERENCES `ControlePlaca`.`Modelo_Jogo` (`idModelo_Jogo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TipoPlaca`
    FOREIGN KEY (`IdTipo_Placa`)
    REFERENCES `ControlePlaca`.`Tipo_Placa` (`idTipo_Placa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ModeloPlaca`
    FOREIGN KEY (`IdModelo_Placa`)
    REFERENCES `ControlePlaca`.`Modelo_Placa` (`idModelo_Placa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_StatusAtivo`
    FOREIGN KEY (`Status_Ativo`)
    REFERENCES `ControlePlaca`.`Status_Ativo` (`idStatus_Ativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idloja`
    FOREIGN KEY (`IdLoja`)
    REFERENCES `ControlePlaca`.`Loja` (`IdCodigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nomeloja`
    FOREIGN KEY (`Nome_Loja`)
    REFERENCES `ControlePlaca`.`Loja` (`NomeLoja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
