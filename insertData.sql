-- Clients
INSERT INTO clients VALUES
                        (1, 'Dupont',   'Alice',   'alice@email.fr',   '1990-03-15', 'Paris'),
                        (2, 'Martin',   'Bob',     'bob@email.fr',     '1985-07-22', 'Lyon'),
                        (3, 'Bernard',  'Clara',   'clara@email.fr',   '1995-11-08', 'Marseille'),
                        (4, 'Leroy',    'David',   'david@email.fr',   '1978-01-30', 'Paris'),
                        (5, 'Moreau',   'Emma',    'emma@email.fr',    '2000-05-19', 'Bordeaux');

-- Comptes (certains clients ont 2 comptes)
INSERT INTO comptes VALUES
    (1, 1, 'courant',  1500.00, '2020-01-10'),
    (2, 1, 'epargne',  8000.00, '2020-01-10'),
    (3, 2, 'courant',   320.50, '2019-06-01'),
    (4, 3, 'courant',  2200.00, '2021-03-15'),
    (5, 4, 'courant',   -50.00, '2018-09-20'),
    (6, 4, 'epargne', 15000.00, '2018-09-20'),
    (7, 5, 'courant',   980.75, '2023-02-28');

-- Catégories
INSERT INTO categories VALUES
                           (1,  'Alimentation',    'debit'),
                           (2,  'Transport',       'debit'),
                           (3,  'Logement',        'debit'),
                           (4,  'Loisirs',         'debit'),
                           (5,  'Sante',           'debit'),
                           (6,  'Abonnements',     'debit'),
                           (7,  'Salaire',         'credit'),
                           (8,  'Virement recu',   'credit'),
                           (9,  'Remboursement',   'credit'),
                           (10, 'Retrait DAB',     'debit');

-- Transactions
INSERT INTO transactions VALUES
                             (1,  1, 7,  '2024-01-05',  2500.00, 'Salaire janvier',         'validee'),
                             (2,  1, 1,  '2024-01-06',   -85.40, 'Courses Carrefour',       'validee'),
                             (3,  1, 3,  '2024-01-08',  -750.00, 'Loyer janvier',           'validee'),
                             (4,  1, 2,  '2024-01-10',   -38.90, 'Navigo mensuel',          'validee'),
                             (5,  1, 4,  '2024-01-15',   -45.00, 'Cinema + resto',          'validee'),
                             (6,  1, 6,  '2024-01-18',   -13.99, 'Netflix',                 'validee'),
                             (7,  1, 7,  '2024-02-05',  2500.00, 'Salaire fevrier',         'validee'),
                             (8,  1, 1,  '2024-02-07',   -92.10, 'Courses Monoprix',        'validee'),
                             (9,  1, 3,  '2024-02-08',  -750.00, 'Loyer fevrier',           'validee'),
                             (10, 1, 5,  '2024-02-20',   -30.00, 'Pharmacie',               'validee'),
                             (11, 2, 8,  '2024-01-12',   500.00, 'Virement depuis courant', 'validee'),
                             (12, 2, 9,  '2024-02-14',   120.00, 'Remboursement ami',       'validee'),
                             (13, 3, 7,  '2024-01-05',  1800.00, 'Salaire janvier',         'validee'),
                             (14, 3, 1,  '2024-01-09',   -60.00, 'Supermarche',             'validee'),
                             (15, 3, 2,  '2024-01-11',  -120.00, 'Essence voiture',         'validee'),
                             (16, 3, 10, '2024-01-20',  -200.00, 'Retrait DAB',             'validee'),
                             (17, 3, 4,  '2024-02-03',   -80.00, 'Concert',                 'en_attente'),
                             (18, 4, 7,  '2024-01-05',  3200.00, 'Salaire janvier',         'validee'),
                             (19, 4, 3,  '2024-01-07',  -900.00, 'Loyer janvier',           'validee'),
                             (20, 4, 1,  '2024-01-13',  -110.50, 'Courses semaine',         'validee'),
                             (21, 4, 6,  '2024-01-19',   -15.99, 'Spotify + iCloud',        'validee'),
                             (22, 4, 7,  '2024-02-05',  3200.00, 'Salaire fevrier',         'validee'),
                             (23, 5, 1,  '2024-01-08',   -45.00, 'Courses Bio',             'rejetee'),
                             (24, 7, 7,  '2024-01-05',  2100.00, 'Salaire janvier',         'validee'),
                             (25, 7, 2,  '2024-01-14',   -55.00, 'Uber mensuel',            'validee'),
                             (26, 7, 1,  '2024-01-22',   -73.20, 'Courses drive',           'validee'),
                             (27, 7, 5,  '2024-02-10',   -25.00, 'Medecin',                 'validee'),
                             (28, 5, 8,  '2024-02-01',   300.00, 'Virement recu',           'en_attente');