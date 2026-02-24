-- =============================================
-- Concept: CREATE TABLE
-- Purpose: Defines table structure before storing data
-- Why: PostgreSQL follows structured schema model
-- Real-world use: Used while designing application database schema
-- =============================================
CREATE TABLE users(id INT, name TEXT, email TEXT, age INT);

-- ==============================================
-- Concept: INSERT INTO
-- Purpose: Inserts new records (rows) into an existing table. 
--          Column names are specified to ensure correct data mapping 
--          and prevent dependency on column order.
-- Why: Required to persist application data into the databse.
-- ==============================================
INSERT INTO users(id, name, email, age)
VALUES (1, 'Ram', 'Ram@gmail.com', 26);

-- =============================================
-- Concept: SELECT
-- Purpose: Retrieves data from one or more tables based on specified conditions.
-- Why: Forms the core of backend data retrieval logic, enabling filtering,
--      sorting, aggregation, and data transformation for application APIs.
-- =============================================
SELECT * FROM users;

