-- 📘 Day 1: CREATE TABLE, INSERT, SELECT
-- --------------------------------------
-- Context: Employees in a company
-- Today, we are working with data about employees and their performance.
-- You will practice creating tables, inserting sample data, and writing basic SELECT queries.

-- ===================================================
-- 🧱 SCHEMA: Table Definitions (Q1–Q10)
-- ===================================================

-- Q1. Define the `employees` table with appropriate column names and data types
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    employee_age INT NOT NULL CHECK (employee_age > 21),
    gender ENUM('F','M'),
    email VARCHAR(100) UNIQUE
);

-- Q2. Define the `performance` table with foreign key relationship
CREATE TABLE performance (
    perf_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    project VARCHAR(100) NOT NULL,
    grade ENUM('A','B','C'),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Q3. Add NOT NULL to name column — ✅ already applied
-- Q4. Set id as PK — ✅ done with employee_id
-- Q5. Set perf_id as PK — ✅ done in Q2
-- Q6. Email column — ✅ used VARCHAR(100)
-- Q7. UNIQUE email — ✅ done
-- Q8. Gender ENUM — ✅ done
-- Q9. CHECK age > 21 — ✅ done
-- Q10. Full employees table created in Q1 — ✅

-- ===================================================
-- 📝 INSERT INTO (Q11–Q20)
-- ===================================================

-- Q11–12. Insert 5 employees
INSERT INTO employees (employee_name, employee_age, gender, email) VALUES
('John Doe', 28, 'M', 'john.doe@email.com'),
('Sarah Lee', 32, 'F', 'sarah.lee@email.com'),
('Michael Tan', 26, 'M', 'michael.tan@email.com'),
('Priya Patel', 30, 'F', 'priya.patel@email.com'),
('David Kim', 27, 'M', 'david.kim@email.com');

-- Q13. Add two more employees
INSERT INTO employees (employee_name, employee_age, gender, email) VALUES
('Nina Brown', 29, 'F', 'nina.brown@email.com'),
('Arjun Mehta', 31, 'M', 'arjun.mehta@email.com');

-- Q14. Insert performance for employee 4 in Mobile App with grade B
INSERT INTO performance (employee_id, project, grade) VALUES (4, 'Mobile App', 'B');

-- Q15. Insert multiple rows
INSERT INTO performance (employee_id, project, grade) VALUES
(1, 'AI Chatbot', 'A'),
(3, 'Cloud Setup', 'C'),
(5, 'Website Revamp', 'B');

-- Q16. Insert without email (⚠️ will fail if NOT NULL enforced)
-- Example: INSERT INTO employees (employee_name, employee_age, gender) VALUES ('Sam', 25, 'M');

-- Q17. Insert performance for non-existent employee (⚠️ will fail)
-- Example: INSERT INTO performance (employee_id, project, grade) VALUES (99, 'Data Migration', 'A');

-- Q18. Insert duplicate email (⚠️ will fail)
-- Example: INSERT INTO employees (...) VALUES ('Tom', 28, 'M', 'john.doe@email.com');

-- Q19. Insert employee with age = 18 (⚠️ will fail CHECK constraint)

-- Q20. Insert valid new record
INSERT INTO performance (employee_id, project, grade) VALUES (2, 'AI Chatbot', 'A');

-- ===================================================
-- 🔎 SELECT Queries (Q21–Q35)
-- ===================================================

-- Q21. Select all employees
SELECT * FROM employees;

-- Q22. Select only name and age
SELECT employee_name, employee_age FROM employees;

-- Q23. All rows from performance
SELECT * FROM performance;

-- Q24. Projects handled by employee 1
SELECT project FROM performance WHERE employee_id = 1;

-- Q25. Unique projects
SELECT DISTINCT project FROM performance;

-- Q26. Employees aged 27
SELECT * FROM employees WHERE employee_age = 27;

-- Q27. Female employees' name and email
SELECT employee_name, email FROM employees WHERE gender = 'F';

-- Q28. Employees whose name starts with 'P'
SELECT employee_name FROM employees WHERE employee_name LIKE 'P%';

-- Q29. All performance records for Website Revamp
SELECT * FROM performance WHERE project = 'Website Revamp';

-- Q30. Grade Sarah Lee got in Data Migration
SELECT grade
FROM performance
WHERE project = 'Data Migration'
  AND employee_id = (SELECT employee_id FROM employees WHERE employee_name = 'Sarah Lee');

-- Q31. Employees who got an 'A'
SELECT employee_name
FROM employees
WHERE employee_id IN (
    SELECT employee_id FROM performance WHERE grade = 'A'
);

-- Q32. Employees with recorded performance
SELECT employee_name
FROM employees
WHERE employee_id IN (
    SELECT DISTINCT employee_id FROM performance
);

-- Q33. Employees with NO performance records
SELECT employee_name
FROM employees
WHERE employee_id NOT IN (
    SELECT DISTINCT employee_id FROM performance
);

-- Q34. Projects + grades for John Doe
SELECT project, grade
FROM performance
WHERE employee_id = (SELECT employee_id FROM employees WHERE employee_name = 'John Doe');

-- Q35. Show all employee names with their corresponding projects and grades
SELECT e.employee_name, p.project, p.grade
FROM employees e
JOIN performance p ON e.employee_id = p.employee_id;
