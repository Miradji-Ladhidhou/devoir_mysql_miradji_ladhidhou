-- Script pour insérer des données dans la table client 
INSERT INTO client (nom, email, code_postal) VALUES
('John', 'john@gmail.com', 97419),
('Jane', 'jane@gmail.com', 97420),
('Doe', 'doe@gmail.com', 97460);

-- Script pour insérer des données dans la table foccacia
INSERT INTO foccacia (nom, prix) VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);

-- Script pour insérer des données dans la table ingredient
INSERT INTO ingredient (nom) VALUES
('Ail'),
('Ananas'),
('Artichaut'),
('Bacon'),
('Base Tomate'),
('Base crème'),
('Champignon'),
('Chevre'),
('Cresson'),
('Emmental'),
('Gorgonzola'),
('Jambon cuit'),
('Jambon fumé'),
('Oeuf'),
('Oignon'),
('Olive noire'),
('Olive verte'),
('Parmesan'),
('Piment'),
('Poivre'),
('Pomme de terre'),
('Raclette'),
('Salami'),
('Tomate cerise'),
('Mozarella');

-- Script pour insérer les données dans la table comprend
INSERT INTO comprend (id_foccacia, id_ingredient, quantite) VALUES

-- Mozaccia
(1, 5, 200),
(1, 25, 50),
(1, 9, 20),
(1, 1, 2),
(1, 3, 20),
(1, 7, 40),
(1, 18, 50),
(1, 20, 1),
(1, 16, 20),

-- Gorgonzollaccia
(2, 5, 200),
(2, 11, 50),
(2, 9, 20),
(2, 1, 2),
(2, 7, 40),
(2, 18, 50),
(2, 20, 1),
(2, 16, 20),

-- Raclaccia
(3, 5, 200),
(3, 22, 50),
(3, 9, 20),
(3, 7, 40),
(3, 18, 50),
(3, 20, 1),

-- Emmentalaccia
(4, 6, 200),
(4, 10, 50),
(4, 9, 20),
(4, 7, 40),
(4, 18, 50),
(4, 20, 1),
(4, 15, 20),

-- Tradizione
(5, 5, 200),
(5, 25, 50),
(5, 9, 20),
(5, 12, 80),
(5, 7, 80),
(5, 18, 50),
(5, 20, 1),
(5, 16, 10),
(5, 17, 10),

-- Hawaienne
(6, 5, 200),
(6, 25, 50),
(6, 9, 20),
(6, 4, 80),
(6, 2, 40),
(6, 19, 2),
(6, 18, 50),
(6, 20, 1),
(6, 16, 200),

-- Américaine
(7, 5, 200),
(7, 25, 50),
(7, 9, 20),
(7, 4, 80),
(7, 21, 40),
(7, 18, 50),
(7, 20, 1),
(7, 16, 200),

-- Paysanne
(8, 6, 200),
(8, 8, 50),
(8, 9, 20),
(8, 21, 80),
(8, 13, 80),
(8, 1, 2),
(8, 3, 20),
(8, 7, 40),
(8, 18, 50),
(8, 20, 1),
(8, 16, 20),
(8, 14, 50);


-- Script pour insérer des données dans la table marque des boissons
INSERT INTO marque (nom) VALUES 
('Coca-cola'),
('Cristalline'),
('Monster'),
('Pepsico');

-- Script pour insérer des données dans la table boisson
INSERT INTO boisson (nom, id_marque) VALUES
('Coca-cola zéro', 1),
('Coca-cola original', 1),
('Fanta citron', 1),
('Fanta orange', 1),
('Capri-sun', 1),
('Pepsi', 4),
('Pepsi Max Zéro', 4),
('Lipton zéro citron', 4),
('Lipton Peach', 4),
('Monster energy ultra gold', 3),
('Monster energy ultra blue', 3),
('Eau de source', 4);

-- Script pour insérer des données dans la table menu
INSERT INTO menu (nom, prix, id_foccacia) VALUES
('Menu Mozaccia', 9.80, 1),
('Menu Gorgonzollaccia', 10.80, 2),
('Menu Raclaccia', 8.90, 3),
('Menu Emmentalaccia', 9.80, 4),
('Menu Tradizione', 8.90, 5),
('Menu Hawaienne', 11.20, 6),
('Menu Américaine', 10.80, 7),
('Menu Paysanne', 12.80, 8);


-- Script pour insérer des données dans la table composition du menu
INSERT INTO contient (id_menu, id_boisson) VALUES

-- Menu Mozaccia
(1, 1), (1,2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12),

-- Menu Gorgonzollaccia
(2, 1), (2,2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12),

-- Menu Raclaccia
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10), (3, 11), (3, 12),

-- Menu Emmentalaccia
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10), (4, 11), (4, 12),

-- Menu Tradizione
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10), (5, 11), (5, 12),

-- Menu Hawaienne
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10), (6, 11), (6, 12),

-- Menu Américaine
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10), (7, 11), (7, 12),

-- Menu Paysanne
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8), (8, 9), (8, 10), (8, 11), (8, 12);


-- Script pour insérer des données dans la table achat
INSERT INTO achete (id_client, id_menu, id_boisson) VALUES

(1, 3, 5),
(2, 5, 5),
(3, 8, 3);










