-- Liste des requêtes 

-- 1 Affichage des noms des foccacias par ordre croissant 
SELECT nom FROM foccacia ORDER BY nom ASC; 
-- Résultat : Requête validé avec succès 

-- 2 Afficher le nombre total d'ingredient 
SELECT COUNT(*) FROM ingredient;
-- Résultat COUNT(*) 25 : Requête validé avec succès 

-- 3 Afficher le prix moyen des foccacias 
SELECT AVG(prix) FROM foccacia;
-- Résultat AVG(prix) 10.375000 : Requête validé avec succès 



