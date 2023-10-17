CREATE TABLE rooms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128),
    description VARCHAR (155),
    address VARCHAR(200),
    city VARCHAR(64),	
    state VARCHAR(2),
    status Boolean,
    deleted_at DATETIME    
);