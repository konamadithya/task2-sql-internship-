
-- Create a sample table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    department TEXT DEFAULT 'General',
    salary INTEGER
);

-- INSERT statements with partial values and NULL
INSERT INTO employees (id, name, email, department, salary) VALUES (1, 'Alice', 'alice@example.com', 'HR', 50000);
INSERT INTO employees (id, name, email, salary) VALUES (2, 'Bob', NULL, 45000);
INSERT INTO employees (id, name) VALUES (3, 'Charlie');

-- UPDATE statement
UPDATE employees SET department = 'Finance' WHERE id = 2;

-- DELETE statement
DELETE FROM employees WHERE id = 3;

-- Example with IS NULL
SELECT * FROM employees WHERE email IS NULL;

-- Insert using SELECT
INSERT INTO employees (id, name, email, department, salary)
SELECT 4, 'David', 'david@example.com', 'IT', 60000;
