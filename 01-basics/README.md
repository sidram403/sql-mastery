# 01 - SQL Basics

## 📌 Overview

This module covers the fundamental SQL operations required to define table structure, insert data, and retrieve records from a PostgreSQL database.

All practical queries are implemented in:

queries.sql

---

## 🧠 Concepts Covered

- CREATE TABLE
- INSERT INTO
- SELECT
- SQL Data Types (INT, TEXT)
- SQL Syntax & Statement Termination (;)

---

## 🛠 What We Implemented

### 1️⃣ CREATE TABLE

- Defined a structured schema before storing data.
- Understood the difference between flexible schema (MongoDB) vs structured schema (PostgreSQL).

### 2️⃣ INSERT INTO

- Inserted records into a table.
- Learned why specifying column names is important.
- Avoided dependency on column order.

### 3️⃣ SELECT

- Retrieved data from the table.
- Understood that SELECT powers backend APIs.
- Learned that `*` selects all columns.

---

## 🔎 Real-World Relevance

- Database schema design in backend systems.
- Persisting application data.
- Powering GET APIs.
- Foundation for filtering, sorting, joins, and aggregations.

---

## 🎯 Key Learnings

- PostgreSQL follows structured schema.
- Text values require single quotes (' ').
- Every SQL statement ends with a semicolon (;).
- Column order dependency can cause production issues.

---

## 💬 Possible Interview Questions (With Senior-Level Answers)

---

### 1️⃣ What is the difference between a table and a database?

**Answer:**

A database is a logical container that holds multiple database objects such as tables, views, indexes, functions, and schemas.  
A table is a structured object within a database that stores data in rows and columns.

In production systems, a database represents the entire application’s data boundary, whereas tables represent specific entities (e.g., users, orders, payments).

---

### 2️⃣ Why should we specify column names in INSERT statements?

**Answer:**

Specifying column names ensures explicit data mapping between values and table structure.  
If column names are omitted, the query becomes dependent on column order, which introduces risk.

In real-world systems, schema changes (e.g., adding new columns) may cause query failure or incorrect data insertion if column names are not specified.  
Therefore, explicitly defining columns improves maintainability and production safety.

---

### 3️⃣ What happens if column order changes in a table?

**Answer:**

If an INSERT statement does not explicitly define column names, it relies on the existing column order.  
If the schema changes (e.g., column reordering or new columns added), the query may either:

- Fail due to mismatch in number of values
- Insert incorrect data into wrong columns

This can lead to silent data corruption, which is more dangerous than query failure.

---

### 4️⃣ What is the purpose of SELECT?

**Answer:**

SELECT is used to retrieve data from one or more tables based on specified conditions.  
It is the core command powering backend read operations and API responses.

Beyond basic retrieval, SELECT supports:

- Filtering (WHERE)
- Sorting (ORDER BY)
- Aggregation (COUNT, SUM, AVG)
- Joining multiple tables
- Subqueries and data transformation

In real-world systems, SELECT forms the foundation of reporting, analytics, and API-driven applications.

---

### 5️⃣ How does SQL differ from MongoDB schema design?

**Answer:**

SQL databases (like PostgreSQL) follow a structured schema model where table structure must be defined before inserting data.  
MongoDB follows a flexible schema model where documents can vary in structure.

In SQL:

- Strong schema enforcement
- Data integrity through constraints
- Relational modeling via foreign keys

In MongoDB:

- Flexible structure
- Denormalized data patterns
- Easier horizontal scaling

The choice depends on application requirements such as consistency, relationships, and scalability needs.

---

### 6️⃣ Why does PostgreSQL require single quotes for text values?

**Answer:**

In PostgreSQL, single quotes (' ') are used to represent string literals.  
Double quotes (" ") are reserved for identifiers such as column names or table names.

This distinction ensures clear differentiation between data values and database object identifiers, maintaining SQL syntax consistency and avoiding ambiguity.

---

## 🚀 Next Step

Move to: 02-filtering-where

Where we will learn:

- WHERE clause
- Comparison operators
- Logical operators (AND, OR)
