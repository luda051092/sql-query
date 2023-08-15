-- Add a product to the table with name of "chair", 
-- price of 44.00, and can_be_returned of false. 


INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('chair', 44.00, 'f');

-- Add a product to table with name of "stool", 
-- price of 25.99, and can_be_returned of true. 

INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('stool', 25.99, 't');

-- Add a product to table with name of "table" 
-- price of 124.00 and can_be_returned of false. 

INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('table', 124.00, 'f');

-- Display all the rows and columns in the table. 

SELECT * FROM products;

--Display all names of products

SELECT name FROM products;

--Display all names and prices of products

SELECT name, price FROM products;

-- Add a new product

INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('lamp', 44.99, 'f');

-- Display only products that can_be_returned

SELECT * FROM products WHERE can_be_returned;

-- Display only products that have a price less than 44.00

SELECT * FROM products WHERE price < 44.00;

-- Display only products that have a price less between 22.50 and 99.99

SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99; 

-- There is a sale going on. Everything is 20.00 off. Update the database accordingly. 

UPDATE products SET price = price - 20;

-- Because of the sale, everything less than $25 has sold out. 
-- Remove all products whose price meets this criteria. 

DELETE FROM products WHERE price < 25;

-- The sale is over. For remaining products, increase the price by $20. 

UPDATE products SET price = price + 20;

-- Change in company policy, all products now returnable

UPDATE products SET can_be_returned = 't';