-- Example 1 — Creating a Table Without Constraints (The Unprotected Way)
-- GOAL: Create a basic customers table without rules to observe how invalid data can easily slip in.
CREATE TABLE customers (
    id INTEGER,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Result:
-- CREATE TABLE


-- Example 2 — Inserting Invalid Data into an Unconstrained Table
-- GOAL: Demonstrate how an unconstrained table accepts completely invalid and useless records.
INSERT INTO customers (id, name, email)
VALUES (NULL, NULL, NULL);

-- Result:
-- INSERT 0 1


-- Example 3 — Creating a Table With basic Constraints
-- GOAL: Recreate the customers table with constraints that enforce mandatory fields and unique values.
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Result:
-- DROP TABLE
-- CREATE TABLE