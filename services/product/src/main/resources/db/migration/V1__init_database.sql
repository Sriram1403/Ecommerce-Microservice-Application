-- Create table if not exists for category
CREATE TABLE IF NOT EXISTS category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    name VARCHAR(255)
);

-- Create table if not exists for product
CREATE TABLE IF NOT EXISTS product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    available_quantity DOUBLE NOT NULL,
    description VARCHAR(255),
    name VARCHAR(255),
    price DECIMAL(38, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

ALTER TABLE category AUTO_INCREMENT = 51;

ALTER TABLE product AUTO_INCREMENT = 51;
