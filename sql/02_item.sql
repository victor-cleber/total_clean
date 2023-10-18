DROP TABLE items;
DROP TABLE item_type;

CREATE TABLE item_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(16),
    description VARCHAR (100),
    status CHAR,
    created_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(16),
    description VARCHAR (100),
    quantity INTEGER,
    status CHAR,
    created_at DATETIME,
    deleted_at DATETIME,
    cod_item_type INTEGER,

    FOREIGN KEY(cod_item_type) REFERENCES item_type(id)
);

INSERT INTO item_type (name, description, status, created_at)
VALUES('items', 'items', 'A', CURRENT_TIMESTAMP),
('fridge', 'fridge', 'A', CURRENT_TIMESTAMP),
('shelves', 'shelves', 'A', CURRENT_TIMESTAMP),
('kitchen', 'kitchen', 'A', CURRENT_TIMESTAMP),
('bathroom', 'bathroom', 'A', CURRENT_TIMESTAMP),
('linen', 'linen', 'A', CURRENT_TIMESTAMP);

INSERT INTO items (name, description, quantity, status, created_at, cod_item_type)
VALUES('bread', 'bread', 1, 'A', CURRENT_TIMESTAMP, 1),
('chocolate', 'chocolate', 2,'A', CURRENT_TIMESTAMP, 1),
('nespresso capsules', 'nespresso capsules', 10, 'A', CURRENT_TIMESTAMP, 1),
('information brochures', 'information brochures', 1, 'A', CURRENT_TIMESTAMP, 1);

SELECT * FROM item_type;
SELECT * FROM items;
