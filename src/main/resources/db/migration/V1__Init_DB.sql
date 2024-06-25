USE exam;

CREATE TABLE toy_category
(
    category_id   INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE toy
(
    toy_code    INT PRIMARY KEY AUTO_INCREMENT,
    toy_name    VARCHAR(255)   NOT NULL,
    size        INT            NOT NULL,
    material    VARCHAR(255)   NOT NULL,
    price       DECIMAL(10, 2) NOT NULL,
    photo       VARCHAR(255),
    category_id INT            NOT NULL,

    CONSTRAINT FK_TOY_ON_CATEGORY FOREIGN KEY (category_id) REFERENCES toy_category (category_id)
);

INSERT INTO toy_category (category_name)
VALUES ('Action Figures'),
       ('Dolls'),
       ('Board Games'),
       ('Puzzles'),
       ('Plush Toys');

INSERT INTO toy (toy_name, size, material, price, category_id)
VALUES ('Superhero Action Figure', 15, 'Plastic', 19.99, 1),
       ('Fashion Doll', 12, 'Fabric', 24.99, 2),
       ('Strategy Board Game', 20, 'Cardboard', 34.99, 3),
       ('Wooden Puzzle', 10, 'Wood', 14.99, 4),
       ('Soft Teddy Bear', 8, 'Plush', 12.99, 5),
       ('Remote Control Car', 18, 'Metal', 29.99, 1),
       ('Educational Toy Robot', 14, 'Plastic', 22.99, 1),
       ('Interactive Talking Doll', 16, 'Plastic', 27.99, 2),
       ('Family Board Game', 22, 'Cardboard', 39.99, 3),
       ('Jigsaw Puzzle', 12, 'Cardboard', 18.99, 4);
