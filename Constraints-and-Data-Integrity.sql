-- Example 1 — Creating a Table Without Constraints (The Unprotected Way)
-- GOAL: Create a basic customers table without rules to observe how invalid data can easily slip in.
CREATE TABLE customers (
    id INTEGER,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Result:
-- CREATE TABLE