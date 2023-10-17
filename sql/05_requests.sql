CREATE TABLE requests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quantity INTEGER,
    cod_cleaning INTEGER,
    cod_item INTEGER,
    status BOOLEAN,
    deleted_at DATETIME,

    FOREIGN KEY(cod_cleaning)) REFERENCES cleanings(id),
    FOREIGN KEY(cod_item)) REFERENCES items(id)
);