CREATE DATABASE zepto_sql_project;
USE zepto_sql_project;

CREATE TABLE zepto(
    sku_id INT AUTO_INCREMENT PRIMARY KEY,
    catagory VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp DECIMAL(8,2),
    discountPercent DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(8,2),
    weightInGms INT,
    outOfStock TINYINT(1), 
    quantity INT
);



