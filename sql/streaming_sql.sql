-- Final Assignment SQL Script
-- Created: 2025-01-09

-- Drop the database if it exists
DROP DATABASE IF EXISTS final_assignment;

-- Create the database
CREATE DATABASE final_assignment;

-- Switch to the newly created database
USE final_assignment;


-- Drop the tables if they exist
DROP TABLE IF EXISTS ecommerce_events;
DROP TABLE IF EXISTS category_metrics;
DROP TABLE IF EXISTS client_profiles;
DROP TABLE IF EXISTS model_results;
DROP TABLE IF EXISTS predictions;

-- Create the e-commerce events table
CREATE TABLE ecommerce_events (
    id BIGINT AUTO_INCREMENT,
    customer_id BIGINT,
    customer_age DOUBLE,
    gender VARCHAR(50),
    payment_method VARCHAR(100),
    product_category VARCHAR(100),
    product_price DOUBLE,
    quantity BIGINT,
    returns BIGINT,
    event_timestamp TIMESTAMP,
    total_purchase_amount DOUBLE,
    time_bucket TIMESTAMP,
    PRIMARY KEY (id),
    INDEX idx_time_bucket (time_bucket),
    INDEX idx_customer (customer_id),
    INDEX idx_category (product_category)
);

-- Create the category metrics table
CREATE TABLE category_metrics (
    id BIGINT AUTO_INCREMENT,
    product_category VARCHAR(100),
    time_bucket TIMESTAMP,
    unique_customers BIGINT,
    total_revenue DOUBLE,
    avg_price DOUBLE,
    total_quantity BIGINT,
    total_returns BIGINT,
    PRIMARY KEY (id),
    INDEX idx_category (product_category),
    INDEX idx_time (time_bucket)
);

-- Create the client profiles table
CREATE TABLE client_profiles (
    id BIGINT AUTO_INCREMENT,
    customer_id BIGINT,
    gender VARCHAR(50),
    customer_age DOUBLE,
    avg_purchase_price DOUBLE,
    avg_transaction_value DOUBLE,
    total_transactions BIGINT,
    preferred_payment VARCHAR(100),
    total_returns BIGINT,
    PRIMARY KEY (id),
    INDEX idx_customer (customer_id)
);

-- Create the model table
CREATE TABLE model_results (
    name VARCHAR(255),    
    AUC FLOAT,             
    model_name VARCHAR(255),          
    PRIMARY KEY (model_name) 
);


-- Create predictions table
CREATE TABLE predictions (
    id BIGINT AUTO_INCREMENT,
    customer_id BIGINT,
    prediction DOUBLE,
    prediction_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
