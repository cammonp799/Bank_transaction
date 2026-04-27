
-- Table clients
CREATE TABLE clients (
                         id_client       INTEGER PRIMARY KEY,
                         nom             VARCHAR(50),
                         prenom          VARCHAR(50),
                         email           VARCHAR(100),
                         date_naissance  DATE,
                         ville           VARCHAR(50)
);

-- Table comptes
CREATE TABLE comptes (
                         id_compte       INTEGER PRIMARY KEY,
                         id_client       INTEGER REFERENCES clients(id_client),
                         type_compte     VARCHAR(20),  -- 'courant' ou 'epargne'
                         solde           DECIMAL(10,2),
                         date_ouverture  DATE
);

-- Table categories
CREATE TABLE categories (
                            id_categorie    INTEGER PRIMARY KEY,
                            nom_categorie   VARCHAR(50),
                            type            VARCHAR(10)   -- 'debit' ou 'credit'
);

-- Table transactions
CREATE TABLE transactions (
                              id_transaction  INTEGER PRIMARY KEY,
                              id_compte       INTEGER REFERENCES comptes(id_compte),
                              id_categorie    INTEGER REFERENCES categories(id_categorie),
                              date_transaction DATE,
                              montant         DECIMAL(10,2),
                              libelle         VARCHAR(100),
                              statut          VARCHAR(20)   -- 'validee', 'en_attente', 'rejetee'
);