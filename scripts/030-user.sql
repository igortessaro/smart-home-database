CREATE TABLE IF NOT EXISTS `user` (
  `id` BINARY(64) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), TRUE)),
  `name` VARCHAR(150) NOT NULL, 
  `surname` VARCHAR(150) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `phone` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user`(`name`, `surname`, `email`, `phone`)
VALUES
    ('Igor', 'Tessaro', 'igorstessaro57@gmail.com', '51991080032'),
    ('Gessica', 'Antunes', 'gessica@gmail.com', '51999999999');