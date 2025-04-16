DROP DATABASE IF EXISTS tifosi;
CREATE DATABASE tifosi;
USE tifosi;

-- creation des tables

-- creation de la table client
DROP TABLE IF EXISTS client;
CREATE TABLE IF NOT EXISTS client(
    id_client INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    code_postal INT NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table foccacia
DROP TABLE IF EXISTS foccacia;
CREATE TABLE IF NOT EXISTS foccacia(
    id_foccacia INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table ingredient
DROP TABLE IF EXISTS ingredient;
CREATE TABLE IF NOT EXISTS ingredient(
    id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table marque des boissons
DROP TABLE IF EXISTS marque;
CREATE TABLE IF NOT EXISTS marque(
    id_marque INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table menu 
DROP TABLE IF EXISTS menu;
CREATE TABLE IF NOT EXISTS menu(
    id_menu INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_foccacia INT NOT NULL,
    FOREIGN KEY (id_foccacia) REFERENCES foccacia(id_foccacia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table boisson
DROP TABLE IF EXISTS boisson;
CREATE TABLE IF NOT EXISTS boisson(
    id_boisson INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table composition
DROP TABLE IF EXISTS comprend;
CREATE TABLE IF NOT EXISTS comprend(
    id_ingredient INT NOT NULL,
    id_foccacia INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_ingredient, id_foccacia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient),
    FOREIGN KEY (id_foccacia) REFERENCES foccacia(id_foccacia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table achat
DROP TABLE IF EXISTS achete;
CREATE TABLE IF NOT EXISTS achete(
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    date_achat DATE NOT NULL,
    PRIMARY KEY (id_client, id_menu),
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- creation de la table composition du menu
DROP TABLE IF EXISTS contient;
CREATE TABLE IF NOT EXISTS contient(
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;