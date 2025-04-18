-- Liste des requêtes 

-- 1 Affichage des noms des foccacias par ordre croissant 
SELECT nom FROM foccacia 
ORDER BY nom ASC; 
-- Résultat attendu : afficher les noms des foccacias par ordre croissant 
-- Résultat obtenu : les noms des foccacias sont affiché par odre croissant 

-- 2 Afficher le nombre total d'ingredient 
SELECT COUNT(*) FROM ingredient;
-- Résultat attendu : afficher le nombre total d'ingredient 
-- Résultat obtenu : COUNT (*) 25

-- 3 Afficher le prix moyen des foccacias 
SELECT AVG(prix) FROM foccacia;
-- Résultat attendu : le prix moyen des foccacias
-- Résultat obtenu : AVG(prix) 10.375000

-- 4 Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT boisson.nom, marque.nom FROM boisson 
JOIN marque ON boisson.id_marque = marque.id_marque 
ORDER BY boisson.nom ASC;
-- Résultat attendu : liste des boissons avec marque, triées par nom de boisson
-- Résultat obtenu : la liste des boisons avec leur marque, triées par nom de boisson

-- 5 Afficher la liste des ingrédients pour une Raclaccia
SELECT f.nom, i.nom FROM foccacia f 
JOIN comprend c ON f.id_foccacia = c.id_foccacia 
JOIN ingredient i ON c.id_ingredient = i.id_ingredient 
WHERE f.nom = 'Raclaccia';
-- Résultat attendu : liste des ingrédients pour une Raclaccia
-- Résultat obtenu : liste des ingrédients pour la Raclaccia

-- 6 Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT f.nom, COUNT(i.id_ingredient) FROM foccacia f 
JOIN comprend c ON f.id_foccacia = c.id_foccacia 
JOIN ingredient i ON c.id_ingredient = i.id_ingredient 
GROUP BY f.id_foccacia, f.nom ORDER BY f.nom;
-- Résultat attendu : nom et le nombre d'ingrédients pour chaque foccacia 
-- Résultat obtenu : liste des ingrédients pour chaque foccacia

-- 7 Afficher le nom de la foccacia qui a le plus d'ingrédients
SELECT f.nom, COUNT(i.id_ingredient)
FROM foccacia f
JOIN comprend c ON f.id_foccacia = c.id_foccacia
JOIN ingredient i ON c.id_ingredient = i.id_ingredient
GROUP BY f.id_foccacia, f.nom
ORDER BY COUNT(i.id_ingredient) DESC
LIMIT 1;
-- Résultat attendu : afficher la foccacia qui a le plus d"ingrédients
-- Résultat obtenu : la foccacia avec le plus d'ingrédients (Paysanne 12)

-- 8 Afficher la liste des foccacias qui contiennent de l'ail
SELECT f.nom
FROM foccacia f
JOIN comprend c ON f.id_foccacia = c.id_foccacia
JOIN ingredient i ON c.id_ingredient = i.id_ingredient
WHERE i.nom = 'ail';
-- Résultat attendu : la liste des foccacias qui contiennent de l'ail
-- Résultat obtenu : 4 foccacias contiennent de l'ail

-- 9 Afficher la liste des ingrédients inutilisés
SELECT nom
FROM ingredient
WHERE id_ingredient NOT IN (
    SELECT id_ingredient FROM comprend
);
-- Résultat attendu : liste des ingrédients inutilisés
-- Résultat obtenu : le salami et la tomate cerise ne sont pas utilisé 

-- 10 Afficher la liste des foccacias qui n'ont pas de champignons
SELECT f.nom
FROM foccacia f
WHERE f.id_foccacia NOT IN (
    SELECT c.id_foccacia
    FROM comprend c
    JOIN ingredient i ON c.id_ingredient = i.id_ingredient
    WHERE i.nom = 'champignon'
);
-- Résultat attendu : liste des foccacias qui n'ont pas de champignons
-- Résultat obtenu : américainne et hawaienne n'ont pas de champignons 
