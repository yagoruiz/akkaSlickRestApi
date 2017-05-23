-- -----------------------------------------------------
-- Table `posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `posts` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `title` VARCHAR(300) NOT NULL,
  `content` VARCHAR(3000) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_posts_user_idx` (`user_id` ASC),
  UNIQUE INDEX `user_id1_UNIQUE` (`user_id` ASC),
  CONSTRAINT `fk_posts_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;