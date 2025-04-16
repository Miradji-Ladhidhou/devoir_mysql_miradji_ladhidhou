-- Script pour insérer des données dans la table marque
INSERT INTO marque (nom) VALUES 
('Coca-cola'),
('Cristalline'),
('Monster'),
('Pepsico');

-- Script pour insérer des données dans la table boisson
INSERT INTO boisson (nom, id_marque) VALUES
('Coca-cola zéro', (SELECT id_marque FROM marque WHERE nom = 'Coca-cola')),
('Coca-cola original', (SELECT id_marque FROM marque WHERE nom = 'Coca-cola')),
('Fanta citron', (SELECT id_marque FROM marque WHERE nom = 'Coca-cola')),
('Fanta orange', (SELECT id_marque FROM marque WHERE nom = 'Coca-cola')),
('Capri-sun', (SELECT id_marque FROM marque WHERE nom = 'Coca-cola')),
('Pepsi', (SELECT id_marque FROM marque WHERE nom = 'Pepsico')),
('Pepsi Max Zéro', (SELECT id_marque FROM marque WHERE nom = 'Pepsico')),
('Lipton zéro citron', (SELECT id_marque FROM marque WHERE nom = 'Pepsico')),
('Lipton Peach', (SELECT id_marque FROM marque WHERE nom = 'Pepsico')),
('Monster energy ultra gold', (SELECT id_marque FROM marque WHERE nom = 'Monster')),
('Monster energy ultra blue', (SELECT id_marque FROM marque WHERE nom = 'Monster')),
('Eau de source', (SELECT id_marque FROM marque WHERE nom = 'Cristalline'));

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

-- Script pour insérer les données dans la table comprend
INSERT INTO comprend (id_ingredient, quantite) VALUES
('Ail', 2),
('Ananas', 40),
('Artichaut', 20),
('Bacon', 80),
('Base Tomate', 200),
('Base crème', 200),
('Champignon', 40),
('Chevre', 50),
('Cresson', 20),
('Emmental', 50),
('Gorgonzola' 50,),
('Jambon cuit' 80,),
('Jambon fumé', 80),
('Oeuf', 50),
('Oignon' 20,),
('Olive noire' 20,),
('Olive verte', 20),
('Parmesan', 50),
('Piment', 2),
('Poivre', 1),
('Pomme de terre', 80),
('Raclette', 50),
('Salami', 80),
('Tomate cerise', 40),
('Mozarella', 50);