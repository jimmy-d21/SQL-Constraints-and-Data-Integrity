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