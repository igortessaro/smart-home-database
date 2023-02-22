CREATE TABLE IF NOT EXISTS `category` (
  `id` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), TRUE)),
  `name` VARCHAR(150) NOT NULL, 
  `description` VARCHAR(250),
  `code` VARCHAR(50) NOT NULL,
  `can_repeat_month` BIT NOT NULL DEFAULT(0),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `category`(`name`, `description`, `code`, `can_repeat_month`)
VALUES
    ('Supermercado',            'Compras feitas em um supermercado',                        'SUPERMARKET', 1),
    ('Restaurante',             'Refeições feitas em restaurantes',                         'RESTAURANT', 1),
    ('Comida por delivery ',    'Comidas compradas para comer no local(casa/escritório)',   'DELIVERY', 1),
    ('Conta de Luz',            'Conta de luz do mês corrente',                             'ENERGYBILL', 0),
    ('Conta de água',           'Conta de água do mês corrente',                            'WATERBILL', 0),
    ('Conta de gás',            'Conta de gás do mês corrente',                             'GASBILL', 0),
    ('Conta de internet',       'Conta de internet do mês corrente',                        'INTERNETBILL', 0),
    ('Taxa de condomínio',      'Taxa do condomínio',                                       'CONDOMINIUMFEE', 0);