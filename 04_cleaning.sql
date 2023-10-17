CREATE TABLE cleaning (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATETIME,
    check_in DATETIME,
    check_out DATETIME,
    cod_cleaner INTEGER,
    cod_room INTEGER,
    status BOOLEAN,
    deleted_at DATETIME,

    FOREIGN KEY(cod_cleaner)) REFERENCES clenaer(id),
    FOREIGN KEY(cod_room)) REFERENCES room(id)
);