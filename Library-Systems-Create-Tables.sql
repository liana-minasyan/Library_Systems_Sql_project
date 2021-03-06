-- MySQL Script generated by MySQL Workbench
-- Sun Dec  8 17:02:07 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Library_Systems
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Library_Systems
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Library_Systems` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Library_Systems` ;

-- -----------------------------------------------------
-- Table `Library_Systems`.`author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`author` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`author` (
  `authorID` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`authorID`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`book` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`book` (
  `bookID` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `year_of_publishment` INT(11) NOT NULL,
  `publisher` VARCHAR(100) NOT NULL,
  `description` VARCHAR(350) NULL DEFAULT NULL,
  `language` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`bookID`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`book_author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`book_author` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`book_author` (
  `authorID` INT(11) NOT NULL,
  `bookID` INT(11) NOT NULL,
  PRIMARY KEY (`authorID`, `bookID`),
  CONSTRAINT `book_author_ibfk_1`
    FOREIGN KEY (`bookID`)
    REFERENCES `Library_Systems`.`book` (`bookID`),
  CONSTRAINT `book_author_ibfk_2`
    FOREIGN KEY (`authorID`)
    REFERENCES `Library_Systems`.`author` (`authorID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`customer` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`customer` (
  `customerID` INT(11) NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`employee` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`employee` (
  `employeeID` INT(11) NOT NULL AUTO_INCREMENT,
  `phone` INT(11) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  `firstName` VARCHAR(20) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`employeeID`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`book_borrow`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`book_borrow` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`book_borrow` (
  `borrowID` INT(11) NOT NULL AUTO_INCREMENT,
  `customerID` INT(11) NOT NULL,
  `bookID` INT(11) NOT NULL,
  `employee_employeeID` INT(11) NOT NULL,
  `borrowDate` DATE NOT NULL,
  `returnDate` DATE NULL DEFAULT NULL,
  `overDue` DATE NOT NULL,
  PRIMARY KEY (`borrowID`),
  CONSTRAINT `book_borrow_ibfk_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `Library_Systems`.`customer` (`customerID`),
  CONSTRAINT `book_borrow_ibfk_2`
    FOREIGN KEY (`bookID`)
    REFERENCES `Library_Systems`.`book` (`bookID`),
  CONSTRAINT `fk_book_borrow_employee1`
    FOREIGN KEY (`employee_employeeID`)
    REFERENCES `Library_Systems`.`employee` (`employeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`genre` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`genre` (
  `genreID` INT(11) NOT NULL AUTO_INCREMENT,
  `genre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`genreID`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`book_genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`book_genre` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`book_genre` (
  `bookID` INT(11) NOT NULL,
  `genreID` INT(11) NOT NULL,
  PRIMARY KEY (`bookID`, `genreID`),
  CONSTRAINT `book_genre_ibfk_1`
    FOREIGN KEY (`genreID`)
    REFERENCES `Library_Systems`.`genre` (`genreID`),
  CONSTRAINT `book_genre_ibfk_2`
    FOREIGN KEY (`bookID`)
    REFERENCES `Library_Systems`.`book` (`bookID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`fine_policy`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`fine_policy` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`fine_policy` (
  `minDate` INT(11) NOT NULL,
  `maxDate` INT(11) NOT NULL,
  `type` VARCHAR(20) NOT NULL,
  `amount_to_pay` INT(11) NOT NULL,
  `description` VARCHAR(400) NULL DEFAULT NULL,
  PRIMARY KEY (`minDate`, `maxDate`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`phone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`phone` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`phone` (
  `customerID` INT(11) NOT NULL,
  `phoneNumber` INT(11) NOT NULL,
  PRIMARY KEY (`customerID`, `phoneNumber`),
  CONSTRAINT `phone_ibfk_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `Library_Systems`.`customer` (`customerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`room` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`room` (
  `roomID` INT(11) NOT NULL AUTO_INCREMENT,
  `capacity` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`roomID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Library_Systems`.`reserve`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Library_Systems`.`reserve` ;

CREATE TABLE IF NOT EXISTS `Library_Systems`.`reserve` (
  `customerID` INT(11) NOT NULL,
  `reserve_date` DATE NOT NULL,
  `roomID` INT(11) NOT NULL,
  PRIMARY KEY (`customerID`, `reserve_date`),
  CONSTRAINT `reserve_ibfk_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `Library_Systems`.`customer` (`customerID`),
  CONSTRAINT `reserve_ibfk_2`
    FOREIGN KEY (`roomID`)
    REFERENCES `Library_Systems`.`room` (`roomID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
