-- -----------------------------------------------------
-- Table `comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comments` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `post_id` BIGINT(20) NOT NULL,
  `content` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comments_user_idx` (`user_id` ASC),
  INDEX `fk_comments_post_idx` (`post_id` ASC),
  UNIQUE INDEX `user_id1_UNIQUE` (`user_id` ASC),
  UNIQUE INDEX `post_id1_UNIQUE` (`post_id` ASC),
  CONSTRAINT `fk_comments_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (`post_id`)
  REFERENCES `posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;