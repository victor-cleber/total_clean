CREATE TABLE cleaners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128),
    lastname VARCHAR (155),
    phone VARCHAR (16),
    email VARCHAR(32),
    address VARCHAR(200),
    city VARCHAR(64),	
    state VARCHAR(2),
    birth_date DATETIME,
    status BOOLEAN,
    deleted_at DATETIME     
);


CREATE TABLE bank_details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bank VARCHAR(16),
    account_name VARCHAR (50),
    account_number VARCHAR (20),
    cod_cleaner INTEGER,
    status BOOLEAN,
    deleted_at DATETIME,

    FOREIGN KEY(cod_cleaner) REFERENCES cleaners(id)
);
