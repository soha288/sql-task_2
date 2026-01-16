-- Task 2: Data Types, Constraints & Table Design

-- Create students table with data types and constraints
CREATE TABLE students (
    id INT PRIMARY KEY UNIQUE,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

-- Describe table structure
DESC students;

-- Insert student records
INSERT INTO students (id, name, email, age) VALUES
(1, 'John Doe', 'john.doe@example.com', 20),
(2, 'Jane Smith', 'jane.smith@example.com', 22),
(3, 'Alice Johnson', 'alice.johnson@example.com', 19),
(4, 'Bob Brown', 'bob.brown@example.com', 21),
(5, 'Charlie Davis', 'charlie.davis@example.com', 23);

-- Retrieve all records
SELECT * FROM students;

-- Retrieve specific columns
SELECT id FROM students;

-- Retrieve specific record using WHERE
SELECT name FROM students WHERE id = 1;

-- Retrieve selected columns
SELECT name, email FROM students;

-- Filter rows using condition
SELECT * FROM students WHERE age > 20;

-- Add a new column with UNIQUE constraint
ALTER TABLE students ADD COLUMN ROLLNO INT UNIQUE;

-- Describe updated table
DESC students;

-- Update roll number for a student
UPDATE students SET ROLLNO = 10 WHERE id = 1;

-- View updated table
SELECT * FROM students;

-- Rename column ROLLNO to rollno
ALTER TABLE students CHANGE ROLLNO rollno INT;

-- Describe table after renaming column
DESC students;

-- Insert a new student record
INSERT INTO students (id, name, email, age, rollno)
VALUES (6, 'soha', 'soha@gmail.com', 20, 20);

-- View table after insertion
SELECT * FROM students;

-- Drop a column from the table
ALTER TABLE students DROP COLUMN age;

-- View final table data
SELECT * FROM students;

-- Add UNIQUE constraint to email to prevent duplicate email entries
ALTER TABLE students ADD CONSTRAINT mail UNIQUE(email);

-- Final table structure
DESC students;

