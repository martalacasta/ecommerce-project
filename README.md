# E-commerce Big Data Pipeline

## Overview

This project is all about building a complete big data pipeline for e-commerce analytics. It covers everything from data ingestion to storage, processing, and machine learning. The goal is to analyze customer behavior and even predict churn using real-world and synthetic data.

## How It Works

1. **Data Sources:**

   - We start with an existing e-commerce dataset.
   - A Jupyter Notebook generates synthetic data to simulate real-time events.

2. **Data Ingestion with NiFi:**

   - We use Apache NiFi (configured in `NiFi.xml`) to automate data ingestion.
   - It handles both batch uploads and real-time streaming data.

3. **Storage:**

   - Batch data goes into **HDFS** for scalable storage.
   - Real-time and processed data is stored in **MinIO**, an S3-compatible object store.

4. **Processing with Spark:**

   - Apache Spark crunches the numbers, processing both real-time and batch data.
   - It performs customer analytics and statistical computations.
   - Results are stored in **MariaDB** for easy access.

5. **Machine Learning for Churn Prediction:**

   - We train multiple models to predict customer churn, such as:
     - Logistic Regression
     - Decision Trees
     - Random Forest
     - Linear SVC
   - Model performance metrics are stored in MariaDB.

## Tools Used

### **Apache NiFi**

- Automates and streamlines data ingestion.
- Handles batch and streaming data efficiently.

### **MinIO**

- S3-compatible object storage for raw and processed data.

### **HDFS (Hadoop Distributed File System)**

- Stores large-scale batch datasets for distributed processing.

### **Apache Spark**

- Performs data transformations, analytics, and machine learning.

### **MariaDB**

- Stores processed insights and model results for easy querying.

### **Jupyter Notebooks**

- Used for data generation, preprocessing, and analysis.

## Project Files

- `NiFi.xml` - NiFi data flow for ingestion.
- `datasets/` - Contains the e-commerce datasets.
- `notebooks/` - Jupyter Notebooks for synthetic data generation and analysis.
- `sql/` - SQL scripts for database setup and queries.

## Running the Project

1. **Start Apache NiFi** and load the `NiFi.xml` flow.
2. **Ensure MinIO and HDFS** are up and running.
3. **Ingest Data** via NiFi.
4. **Process Data with Spark**, handling both batch and streaming jobs.
5. **Store Results in MariaDB**.
6. **Train and Evaluate ML Models** using Spark MLlib.
7. **Query Insights** from MariaDB.

## Summary

This project showcases a full-fledged big data pipeline tailored for e-commerce analytics. From real-time data ingestion to storage, processing, and machine learning, it provides a robust foundation for data-driven decision-making. 🚀

