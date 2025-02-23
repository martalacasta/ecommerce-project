-- Drop the database if it exists
DROP DATABASE IF EXISTS final_assignment;

-- Create the database
CREATE DATABASE final_assignment;

-- Switch to the newly created database
USE final_assignment;

-- Create the table
CREATE TABLE model_results (
    model_name STRING,     -- Timestamp for the event
    accuracy FLOAT,                -- Open price
    PRIMARY KEY (model_name)  -- Unique ID as primary key
);
