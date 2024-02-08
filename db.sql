-- Creation de la DB si elle n'existe pas
CREATE DATABASE IF NOT EXISTS customersdb;

-- Utilisation de la DB
use customersdb;

-- creation de la table customer si elle n'existe pas
CREATE TABLE IF NOT EXISTS customer (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone VARCHAR(15)
);

-- ajout de données dans la table customer
INSERT INTO customer (name, address, phone) VALUES ('Sefa G', 'Grenoble', '0123456789');
INSERT INTO customer (name, address, phone) VALUES ('Ilian B', 'Grenoble', '0123456789');