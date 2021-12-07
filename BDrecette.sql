SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `DB_recette` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `DB_recette` ;

-- -----------------------------------------------------
-- Table `DB_recette`.`recette`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DB_recette`.`recette` (
  `idrecette` INT NOT NULL AUTO_INCREMENT ,
  `nomRecette` VARCHAR(45) NULL ,
  `description` VARCHAR(45) NULL ,
  `duréeDeCuisson` VARCHAR(45) NULL ,
  `nombreDeCaloriesPersonne` INT NULL ,
  `nombreDePart` INT NULL ,
  `niveauDeDifficulté` VARCHAR(45) NULL ,
  PRIMARY KEY (`idrecette`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_recette`.`ingrédient`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DB_recette`.`ingrédient` (
  `idingrédient` INT NOT NULL AUTO_INCREMENT ,
  `nomIngrédient` VARCHAR(45) NULL ,
  `quantitéIngrédient` INT NULL ,
  `nombreDeCalorie` INT NULL ,
  `idtype` INT NULL ,
  `lieuStockage` VARCHAR(45) NULL ,
  PRIMARY KEY (`idingrédient`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_recette`.`rangement`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DB_recette`.`rangement` (
  `idrangement` INT NOT NULL AUTO_INCREMENT ,
  `nomRangement` VARCHAR(45) NULL ,
  `tailleRangement` INT NULL ,
  PRIMARY KEY (`idrangement`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_recette`.`type`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `DB_recette`.`type` (
  `idtype` INT NOT NULL AUTO_INCREMENT ,
  `nomType` VARCHAR(45) NULL ,
  PRIMARY KEY (`idtype`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
