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
    created_at DATETIME,
    deleted_at DATETIME     
);


CREATE TABLE bank_details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bank VARCHAR(16),
    account_name VARCHAR (50),
    account_number VARCHAR (20),
    cod_cleaner INTEGER,
    status BOOLEAN,
    created_at DATETIME,
    deleted_at DATETIME,

    FOREIGN KEY(cod_cleaner) REFERENCES cleaners(id)
);


INSERT INTO cleaners(name,
    lastname,
    phone,
    email,
    address,
    city,	
    state,
    birth_date,
    status,
    deleted_at)
    VALUES('Victor Cleber', 'Ferreira da Silva', '021 117 9993', 'National av., 154', 'Jhonsonville','Wellington', '26-01-1978',  )