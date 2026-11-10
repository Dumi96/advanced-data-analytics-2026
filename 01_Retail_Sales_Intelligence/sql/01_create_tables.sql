
-- Project: Retail Sales Intelligence Platform
-- File: 01_create_tables.sql
-- Purpose: Create the relational database tables

-- 1. Customer information
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    registration_date DATE
);

-- 2. Product information
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price NUMERIC(12,2) NOT NULL,
    unit_cost NUMERIC(12,2) NOT NULL
);

-- 3. Customer orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    order_status VARCHAR(20),
    payment_method VARCHAR(30)
);

-- 4. Individual order items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id),
    product_id INT NOT NULL REFERENCES products(product_id),
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price NUMERIC(12,2) NOT NULL,
    discount_amount NUMERIC(12,2) DEFAULT 0
);
