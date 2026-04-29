-- How to filter Data

/*
   -- Comparaison operators (compare two values)
   -- Condition (where) - Expression Operators Expression

   1. = Checks if two values are equal
   2. <> != Checks if two values are not equal
   3. > Checks if the first value is greater than the second
   4. < Checks if the first value is less than the second
   5. >= Checks if the first value is greater than or equal to the second
   6. <= Checks if the first value is less than or equal to the second
*/

-- Example
-- 1.A = --
SELECT id_categorie,
       nom_categorie,
       type
FROM postgres."Bank".categories
WHERE nom_categorie = 'Remboursement';

-- 1.B <> != --
SELECT id_categorie,
       nom_categorie,
       type
FROM postgres."Bank".categories
WHERE nom_categorie <> 'Remboursement';

-- 1.C > --
SELECT id_transaction,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction > '2024-01-08';

-- 1.C < --
SELECT id_transaction,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction < '2024-01-08';

-- 1.D >= --
SELECT id_compte,
       id_client,
       type_compte,
       solde,
       date_ouverture
FROM postgres."Bank".comptes
WHERE solde >= 10000;

-- 1.E <= --
SELECT id_compte,
       id_client,
       type_compte,
       solde,
       date_ouverture
FROM postgres."Bank".comptes
WHERE solde <= 320.50;


-- Logical Operators

/*
    1. AND - All conditions must be true
    -- Condition (where) - True AND True

    2. OR - At least one condition must be true
    -- Condition (where) - True OR False
    -- Use IN instead of OR for multiplie values in the same column to simplify the query

    3. NOT - Negates the condition (excludes matching rows)
    -- Condition (where) - NOT True
 */

-- Example
-- 2.A AND --
SELECT id_transaction,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction > '2024-01-08' AND montant < 1000;

-- 2.B OR --
SELECT id_transaction,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction > '2024-01-08' OR montant > 1000;

-- 2.C NOT --
SELECT id_transaction,
       id_compte,
       id_compte,
       date_transaction,
       montant,
       libelle,
       statut
FROM postgres."Bank".transactions
WHERE NOT date_transaction > '2024-01-08';


-- Range Operators
/*
   1. Between - Checks if a value is between two values
*/

-- Example
-- 3.A Between --
SELECT id_transaction,
       id_compte,id_compte,
       date_transaction,
       montant,libelle,
       statut
FROM postgres."Bank".transactions
WHERE date_transaction BETWEEN '2024-01-08' AND '2024-01-10';


-- Membership Operators

/*
    1. In - Checks if a value is in a list of values
*/

--  Example

-- 4.A In --
SELECT id_transaction,
       id_compte,id_compte,
       date_transaction,montant,
       libelle,statut
FROM postgres."Bank".transactions
WHERE date_transaction IN ('2024-01-08','2024-01-10');


-- Search operators
/*
    1. Like - Checks if a value matches a pattern
    -- Condition (where) - 'value' LIKE 'pattern'
    -- Use % for wildcard characters in the pattern

    -- M% for a prefix match
    -- %M for a suffix match
    -- %M% for a wildcard match

    -- Use _ for a single character match

*/

-- Example
-- 5.A Like v% --
SELECT id_transaction,
       id_categorie,
       id_compte,
       date_transaction,
       montant,libelle,
       statut
FROM postgres."Bank".transactions
WHERE statut LIKE 'v%';

-- 5.B Like %t --
SELECT id_compte,
       id_client,
       type_compte,
       solde,
       date_ouverture
From postgres."Bank".comptes
WHERE type_compte LIKE '%t';

-- 5.C Like %T%
SELECT id_compte,
       id_client,
       type_compte,
       solde,
       date_ouverture
From postgres."Bank".comptes
WHERE type_compte LIKE '%____a%';

