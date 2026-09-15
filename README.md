# E-Commerce Database Management System

## Project Overview

The **E-Commerce Database Management System** is a MySQL-based database project developed to manage product categories and product information efficiently.

This project demonstrates database creation, table design, constraints, relationships, sample data insertion, CRUD operations, and category-wise product analysis using SQL.

## Project Objectives

The main objectives of this project are:

* To create an E-Commerce database using MySQL.
* To design and create Category and Product tables.
* To implement appropriate database constraints.
* To establish a relationship between categories and products.
* To insert sample category and product records.
* To perform CRUD operations on product data.
* To analyze products based on their categories.
* To practice SQL queries such as `JOIN`, `GROUP BY`, `HAVING`, `COUNT()`, `MAX()`, and `AVG()`.

## Database Details

**Database Name:** `EcommerceDB`

The database contains two main tables:

* `Category`
* `Product`

##  Database Structure

### Category Table

The `Category` table stores information about different product categories.

| Attribute     | Data Type    | Constraint                  |
| ------------- | ------------ | --------------------------- |
| Category_ID   | INT          | Primary Key, Auto Increment |
| Category_Name | VARCHAR(50)  | NOT NULL, UNIQUE            |
| Description   | VARCHAR(200) | —                           |

### Product Table

The `Product` table contains information about products, including their category, price, and stock quantity.

| Attribute      | Data Type     | Constraint                  |
| -------------- | ------------- | --------------------------- |
| Product_ID     | INT           | Primary Key, Auto Increment |
| Product_Name   | VARCHAR(100)  | NOT NULL                    |
| Category_ID    | INT           | Foreign Key, NOT NULL       |
| Price          | DECIMAL(10,2) | NOT NULL, CHECK             |
| Stock_Quantity | INT           | NOT NULL, DEFAULT, CHECK    |

The table design uses **PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, AUTO_INCREMENT, and DEFAULT** constraints.

##  Relationship Between Tables

The `Category` and `Product` tables are connected through `Category_ID`.

```text
CATEGORY
   |
   | 1
   |
   |--------< MANY
             |
          PRODUCT
```

* One category can contain many products.
* Each product belongs to exactly one category.
* `Category_ID` in the Product table acts as a Foreign Key referencing the Category table.

##  Sample Data

The project contains 4 sample categories:

1. Electronics
2. Clothing
3. Books
4. Home Appliances

The database also contains 12 sample products, including:

* Laptop
* Smartphone
* Bluetooth Headphones
* Shoes
* T-Shirt
* Jeans
* The Alchemist
* Atomic Habits
* Data Structures Text
* Refrigerator
* Washing Machine
* Microwave Oven

Each product is associated with its category using `Category_ID`.

## CRUD Operations

CRUD operations are performed on the `Product` table.

### Create

A new product named **Smart Watch** is inserted into the Product table.

```sql
INSERT INTO Product
(Product_Name, Category_ID, Price, Stock_Quantity)
VALUES
('Smart Watch', 1, 4500, 25);
```

### Read

All product records are retrieved using:

```sql
SELECT * FROM Product;
```

### Update

The project performs different update operations:

* Laptop price is changed from `55000` to `58000`.
* Laptop stock is increased by `15`.
* Shoes stock is reduced by `2`.

### Delete

The **Microwave Oven** product is removed from the Product table.

These CRUD operations demonstrate inserting, retrieving, modifying, and deleting product records.

##  Category-wise Product Analysis

SQL queries are used to perform the following analysis:

### 1. Products by Category

Displays:

* Category Name
* Product Name
* Price
* Stock Quantity

### 2. Product Count

Calculates the total number of products available under each category.

### 3. Highest-priced Product

Identifies the highest-priced product in every category.

### 4. Categories with More Than 5 Products

Finds categories containing more than 5 products.

### 5. Average Product Price

Calculates the average product price for each category.

The analysis uses SQL concepts including:

`JOIN`, `LEFT JOIN`, `GROUP BY`, `HAVING`, `COUNT()`, `MAX()`, and `AVG()`.

##  Technologies Used

* MySQL
* MySQL Workbench
* SQL

##  SQL Concepts Covered

The project covers the following SQL concepts:

* `CREATE DATABASE`
* `USE`
* `CREATE TABLE`
* `PRIMARY KEY`
* `FOREIGN KEY`
* `AUTO_INCREMENT`
* `NOT NULL`
* `UNIQUE`
* `CHECK`
* `DEFAULT`
* `INSERT`
* `SELECT`
* `UPDATE`
* `DELETE`
* `JOIN`
* `LEFT JOIN`
* `GROUP BY`
* `HAVING`
* `COUNT()`
* `MAX()`
* `AVG()`
* Subqueries

##  Project Structure

```text
E-Commerce-Database/
│
├── SQL Database and Table Creation.sql
├── SAMPLE DATA INSERTION.sql
├── CRUD operations.sql
├── Category-wise Product Analysis Report.sql
│
├── SQL Database and Table Creation.docx
├── SAMPLE DATA INSERTION.docx
├── CRUD Operations.docx
├── Category and Product Table Design.docx
└── Category-wise Product Analysis Report.docx
```

##  How to Run the Project

### Step 1: Open MySQL Workbench

Open MySQL Workbench and create a new SQL query.

### Step 2: Create/Select Database

```sql
CREATE DATABASE EcommerceDB;

USE EcommerceDB;
```

### Step 3: Create Tables

Run the **SQL Database and Table Creation** script.

The table creation includes the Category and Product tables with their required constraints and foreign-key relationship.

### Step 4: Insert Sample Data

Run the **SAMPLE DATA INSERTION** script.

### Step 5: Perform CRUD Operations

Run the **CRUD operations** script.

### Step 6: Perform Analysis

Run the **Category-wise Product Analysis Report** queries.

### Step 7: Verify Tables

```sql
SHOW TABLES;

DESC Category;

DESC Product;
```

##  Verification

The database structure can be verified using:

```sql
SHOW TABLES;
```

To check the Category table:

```sql
DESC Category;
```

To check the Product table:

```sql
DESC Product;
```

The SQL files also include these verification commands.

##  Expected Outcome

After successfully executing all the SQL scripts:

* The `EcommerceDB` database will be available.
* Category and Product tables will be created.
* Sample category and product records will be inserted.
* CRUD operations will be completed.
* Product information can be analyzed category-wise.
* The relationship between Category and Product will be maintained using `Category_ID`.

##  Conclusion

The **E-Commerce Database Management System** successfully demonstrates the fundamental concepts of database management using MySQL.

The project covers database creation, table design, constraints, relationships, sample data insertion, CRUD operations, and category-wise data analysis. It provides practical experience in writing SQL queries and managing structured E-Commerce data.
