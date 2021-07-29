-- MySQL Script generated by MySQL Workbench
-- Sun Jun  6 10:59:01 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bos_covid19
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bos_covid19
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bos_covid19` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bos_covid19` ;

-- -----------------------------------------------------
-- Table `bos_covid19`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`medico` (
  `idmedico` INT NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `funcao` VARCHAR(45) NOT NULL,
  `local` VARCHAR(10) NOT NULL,
  `turno` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`local_atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`local_atendimento` (
  `idlocal_atendimento` INT NOT NULL,
  `medico_idmedico` INT NOT NULL,
  `nome` VARCHAR(50) NULL DEFAULT NULL,
  `cnpj` INT NOT NULL,
  `telefone` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`idlocal_atendimento`, `medico_idmedico`),
  INDEX `pk_medico_local_atendim` (`medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_medico_local_atendim`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `bos_covid19`.`medico` (`idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`paciente` (
  `idpaciente` INT NOT NULL,
  `nome` VARCHAR(150) NULL DEFAULT NULL,
  `cpf` INT NOT NULL,
  `telefone` INT NOT NULL,
  `medico_idmedico` INT NOT NULL,
  `local_atendimento_idlocal_atendimento` INT NOT NULL,
  `local_atendimento_medico_idmedico` INT NOT NULL,
  PRIMARY KEY (`idpaciente`, `local_atendimento_idlocal_atendimento`, `local_atendimento_medico_idmedico`),
  INDEX `pk_medico_idmedico` (`medico_idmedico` ASC) VISIBLE,
  INDEX `pk_paciente_local_atendimento_idlocal_paciente` (`local_atendimento_idlocal_atendimento` ASC) VISIBLE,
  INDEX `pk_paciente_local_atendimento_medico_paciente` (`local_atendimento_medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_medico_idmedico`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `bos_covid19`.`medico` (`idmedico`),
  CONSTRAINT `pk_paciente_local_atendimento_idlocal_paciente`
    FOREIGN KEY (`local_atendimento_idlocal_atendimento`)
    REFERENCES `bos_covid19`.`local_atendimento` (`idlocal_atendimento`),
  CONSTRAINT `pk_paciente_local_atendimento_medico_paciente`
    FOREIGN KEY (`local_atendimento_medico_idmedico`)
    REFERENCES `bos_covid19`.`local_atendimento` (`medico_idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`prontuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`prontuario` (
  `idprontuario` INT NOT NULL,
  `origem_paciente` VARCHAR(45) NULL DEFAULT NULL,
  `locais_atedimento` VARCHAR(45) NULL DEFAULT NULL,
  `paciente_idpaciente` INT NOT NULL,
  `paciente_local_atendimento_idlocal_atendimento` INT NOT NULL,
  `paciente_local_atendimento_medico_idmedico` INT NOT NULL,
  PRIMARY KEY (`idprontuario`),
  INDEX `pk_paciente_idpaciente_prontuario` (`paciente_idpaciente` ASC) VISIBLE,
  INDEX `pk_paciente_local_atendimento_idlocal_prontuario` (`paciente_local_atendimento_idlocal_atendimento` ASC) VISIBLE,
  INDEX `pk_paciente_local_atendimento_medico_prontuario` (`paciente_local_atendimento_medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_paciente_idpaciente_prontuario`
    FOREIGN KEY (`paciente_idpaciente`)
    REFERENCES `bos_covid19`.`paciente` (`idpaciente`),
  CONSTRAINT `pk_paciente_local_atendimento_idlocal_prontuario`
    FOREIGN KEY (`paciente_local_atendimento_idlocal_atendimento`)
    REFERENCES `bos_covid19`.`local_atendimento` (`idlocal_atendimento`),
  CONSTRAINT `pk_paciente_local_atendimento_medico_prontuario`
    FOREIGN KEY (`paciente_local_atendimento_medico_idmedico`)
    REFERENCES `bos_covid19`.`local_atendimento` (`medico_idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`diagnostico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`diagnostico` (
  `iddiagnostico` INT NOT NULL,
  `status` VARCHAR(1) NULL DEFAULT NULL,
  `prontuario_idprontuario` INT NOT NULL,
  PRIMARY KEY (`iddiagnostico`),
  INDEX `pk_prontuario_diagnostico` (`prontuario_idprontuario` ASC) VISIBLE,
  CONSTRAINT `pk_prontuario_diagnostico`
    FOREIGN KEY (`prontuario_idprontuario`)
    REFERENCES `bos_covid19`.`prontuario` (`idprontuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`endereco` (
  `rua` VARCHAR(15) NULL DEFAULT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(20) NULL DEFAULT NULL,
  `cep` VARCHAR(8) NULL DEFAULT NULL,
  `cidade` VARCHAR(20) NULL DEFAULT NULL,
  `paciente_idpaciente` INT NOT NULL,
  `local_atendimento_idlocal_atendimento` INT NOT NULL,
  `local_atendimento_medico_idmedico` INT NOT NULL,
  `medico_idmedico` INT NOT NULL,
  INDEX `pk_paciente_endereco` (`paciente_idpaciente` ASC) VISIBLE,
  INDEX `pk_medico_endereco` (`medico_idmedico` ASC) VISIBLE,
  INDEX `pk_local_atendimento_idlocal_endereco` (`local_atendimento_idlocal_atendimento` ASC) VISIBLE,
  INDEX `pk_local_atendimento_medico_endereco` (`local_atendimento_medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_local_atendimento_idlocal_endereco`
    FOREIGN KEY (`local_atendimento_idlocal_atendimento`)
    REFERENCES `bos_covid19`.`local_atendimento` (`idlocal_atendimento`),
  CONSTRAINT `pk_local_atendimento_medico_endereco`
    FOREIGN KEY (`local_atendimento_medico_idmedico`)
    REFERENCES `bos_covid19`.`local_atendimento` (`medico_idmedico`),
  CONSTRAINT `pk_medico_endereco`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `bos_covid19`.`medico` (`idmedico`),
  CONSTRAINT `pk_paciente_endereco`
    FOREIGN KEY (`paciente_idpaciente`)
    REFERENCES `bos_covid19`.`paciente` (`idpaciente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`exame`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`exame` (
  `idexame` INT NOT NULL,
  `resultado` VARCHAR(45) NULL DEFAULT NULL,
  `paciente_idpaciente` INT NOT NULL,
  `medico_idmedico` INT NOT NULL,
  PRIMARY KEY (`idexame`),
  INDEX `pk_paciente_exame` (`paciente_idpaciente` ASC) VISIBLE,
  INDEX `pk_paciente_exame_medico` (`medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_paciente_exame`
    FOREIGN KEY (`paciente_idpaciente`)
    REFERENCES `bos_covid19`.`paciente` (`idpaciente`),
  CONSTRAINT `pk_paciente_exame_medico`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `bos_covid19`.`medico` (`idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`funcao` (
  `idfuncao` INT NOT NULL,
  `medico` VARCHAR(45) NULL DEFAULT NULL,
  `enfermeiro` VARCHAR(45) NULL DEFAULT NULL,
  `zelador` VARCHAR(45) NULL DEFAULT NULL,
  `medico_idmedico` INT NOT NULL,
  PRIMARY KEY (`idfuncao`),
  INDEX `pk_idmedico_funcao` (`medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `pk_idmedico_funcao`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `bos_covid19`.`medico` (`idmedico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`pessoa_con`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`pessoa_con` (
  `paciente` INT NOT NULL,
  `nome` VARCHAR(150) NULL DEFAULT NULL,
  INDEX `pk_pacienteid_pessoa_con` (`paciente` ASC) VISIBLE,
  CONSTRAINT `pk_pacienteid_pessoa_con`
    FOREIGN KEY (`paciente`)
    REFERENCES `bos_covid19`.`paciente` (`idpaciente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `bos_covid19`.`tipo_local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bos_covid19`.`tipo_local` (
  `idtipo_local` INT NOT NULL,
  `hospital` VARCHAR(45) NULL DEFAULT NULL,
  `clinica` VARCHAR(45) NULL DEFAULT NULL,
  `UPA` VARCHAR(45) NULL DEFAULT NULL,
  `local_atendimento_idlocal_atendimento1` INT NOT NULL,
  `local_atendimento_medico_idmedico1` INT NOT NULL,
  PRIMARY KEY (`idtipo_local`),
  INDEX `fk_tipo_local_local_atendimento1_idx` (`local_atendimento_idlocal_atendimento1` ASC, `local_atendimento_medico_idmedico1` ASC) VISIBLE,
  CONSTRAINT `fk_tipo_local_local_atendimento1`
    FOREIGN KEY (`local_atendimento_idlocal_atendimento1` , `local_atendimento_medico_idmedico1`)
    REFERENCES `bos_covid19`.`local_atendimento` (`idlocal_atendimento` , `medico_idmedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;