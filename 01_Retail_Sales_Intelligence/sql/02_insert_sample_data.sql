
-- Project: Retail Sales Intelligence Platform
-- File: 02_insert_sample_data.sql
-- Purpose: Insert sample retail data into the database

-- 1. Insert customers
INSERT INTO customers VALUES
(1, 'John Silva', 'Colombo', '2025-01-10'),
(2, 'Nimal Perera', 'Kandy', '2025-02-15'),
(3, 'Sarah Fernando', 'Galle', '2025-03-20'),
(4, 'Amal Jayawardena', 'Malabe', '2025-04-05'),
(5, 'Kavindi Perera', 'Negombo', '2025-05-12');

-- 2. Insert products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 250000, 200000),
(102, 'Mouse', 'Electronics', 5000, 3000),
(103, 'Office Chair', 'Furniture', 35000, 25000),
(104, 'Desk', 'Furniture', 50000, 38000),
(105, 'Keyboard', 'Electronics', 8000, 4500);

-- 3. Insert orders
INSERT INTO orders VALUES
(1001, 1, '2025-06-01', 'Completed', 'Card'),
(1002, 2, '2025-06-03', 'Completed', 'Cash'),
(1003, 1, '2025-06-10', 'Completed', 'Card'),
(1004, 3, '2025-06-15', 'Pending', 'Online'),
(1005, 4, '2025-06-20', 'Completed', 'Card'),
(1006, 5, '2025-06-25', 'Cancelled', 'Cash');

-- 4. Insert order items
INSERT INTO order_items VALUES
(1, 1001, 101, 1, 250000, 5000),
(2, 1001, 102, 2, 5000, 0),
(3, 1002, 103, 1, 35000, 0),
(4, 1003, 105, 2, 8000, 1000),
(5, 1004, 104, 1, 50000, 0),
(6, 1005, 103, 2, 35000, 2000),
(7, 1006, 102, 1, 5000, 0);
