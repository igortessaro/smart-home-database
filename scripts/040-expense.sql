CREATE TABLE IF NOT EXISTS `expense` (
  `id` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), TRUE)),
  `name` VARCHAR(150) NOT NULL, 
  `description` VARCHAR(250) NULL,
  `amount` DECIMAL(5,2) NOT NULL,
  `due_date` DATE NULL,
  `pay_date` DATE NULL,
  `create_by` BINARY(16) NOT NULL,
  `create_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` BINARY(16) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`create_by`) REFERENCES `user`(`id`),
  FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
