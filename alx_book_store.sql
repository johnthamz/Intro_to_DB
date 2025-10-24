- DATABASE: alx_book_store
-- DESCRIPTION: A database schema for an online bookstore
-- AUTHOR: [Your Name]
-- ==========================================================

-- 1. CREATE DATABASE
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- 2. USE DATABASE
USE alx_book_store;

-- ==========================================================
-- TABLE: AUTHORS
-- ==========================================================
CREATE TABLE AUTHORS (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL
);

-- ==========================================================
-- TABLE: BOOKS
-- ==========================================================
CREATE TABLE BOOKS (
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
author_id INT NOT NULL,
price DOUBLE NOT NULL,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

-- ==========================================================
-- TABLE: CUSTOMERS
-- ==========================================================
CREATE TABLE CUSTOMERS (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) NOT NULL,
address TEXT
);

-- ==========================================================
-- TABLE: ORDERS
-- ==========================================================
CREATE TABLE ORDERS (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- ==========================================================
-- TABLE: ORDER_DETAILS
-- ==========================================================
CREATE TABLE ORDER_DETAILS (
orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
book_id INT NOT NULL,
quantity DOUBLE NOT NULL,
FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);

-- ==========================================================
-- END OF SCHEMA
--