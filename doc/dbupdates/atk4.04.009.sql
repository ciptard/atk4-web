SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `atk_user` ADD COLUMN `email_global` ENUM('Y','N') NULL DEFAULT 'Y'  AFTER `logged_dts` , ADD COLUMN `email_major_releases` ENUM('Y','N') NULL DEFAULT 'Y'  AFTER `email_global` , ADD COLUMN `email_blog` ENUM('Y','N') NULL DEFAULT 'Y'  AFTER `email_major_releases` , ADD COLUMN `email_minor_releases` ENUM('Y','N') NULL DEFAULT 'Y'  AFTER `email_blog` , ADD COLUMN `email_survey` ENUM('Y','N') NULL DEFAULT 'Y'  AFTER `email_minor_releases` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

