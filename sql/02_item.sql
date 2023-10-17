CREATE TABLE items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quantity INTEGER,
    description VARCHAR (155),
    status BOOLEAN,
    created_at DATETIME,
    deleted_at DATETIME 
);


CREATE TABLE item_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(16),
    description VARCHAR (100),
    status BOOLEAN,
    deleted_at DATETIME 
    cod_item INTEGER,

    FOREIGN KEY(cod_item)) REFERENCES item(id)
);
