-- 1.
/*
 Identifier toutes les transactions avec le statut qui commence par "en" et
 dont le montant est entre -500€ et 500€.
 */
SELECT id_transaction,
       id_categorie,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE statut LIKE 'en%' AND montant BETWEEN -500 AND 500;

/*
 La liste des clients qui habitent à Paris ou à Lyon,
 triée par nom alphabétique.
*/
SELECT nom,
       prenom,
       email,
       date_naissance,
       ville
FROM postgres."Bank".clients
WHERE ville IN ('Paris','Lyon')
ORDER BY nom ASC;

/*
 Les comptes avec un solde négatif ou inférieur à 500€,
 en affichant le type de compte et la date d'ouverture.
*/
SELECT id_compte,
       id_client,
       type_compte,
       solde,
       date_ouverture
FROM postgres."Bank".comptes
WHERE solde < 500;

/*
 Tous les libellés de transactions qui contiennent
 le mot "Loyer", avec leur montant et leur date.
*/
SELECT montant,
       date_transaction,
       libelle
FROM postgres."Bank".transactions
WHERE libelle LIKE '%Loyer%';

/*
 Les transactions de février 2024 dont le montant est négatif,
 triées par montant ASC, en affichant uniquement les 3 premières.
*/
SELECT id_transaction,
       id_compte,
       id_categorie,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction
BETWEEN '2024-02-01' AND '2024-02-29'
AND montant < 0
ORDER BY montant ASC
LIMIT 3;