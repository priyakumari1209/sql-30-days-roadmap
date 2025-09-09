-- 📘 Day 1: CREATE TABLE, INSERT, SELECT
-- --------------------------------------
-- Context: Employees in a company
-- Today, we are working with data about employees and their performance grades.
-- You will practice creating tables, inserting sample data, and writing basic SELECT queries.

-- 👇 Below is the structure and sample data for two tables:
-- 1. employees
-- 2. performance

-- ===================================================
-- Table: employees
-- ===================================================
-- | id | name        | age | gender | email                 |
-- |----|-------------|-----|--------|-----------------------|
-- | 1  | John Doe    | 28  | M      | john.doe@email.com    |
-- | 2  | Sarah Lee   | 32  | F      | sarah.lee@email.com   |
-- | 3  | Michael Tan | 26  | M      | michael.tan@email.com |
-- | 4  | Priya Patel | 30  | F      | priya.patel@email.com |
-- | 5  | David Kim   | 27  | M      | david.kim@email.com   |

-- ===================================================
-- Table: performance
-- ===================================================
-- | perf_id | employee_id | project        | grade |
-- |---------|-------------|----------------|-------|
-- | 201     | 1           | Website Revamp | A     |
-- | 202     | 2           | Data Migration | B     |
-- | 203     | 1           | Mobile App     | A     |
-- | 204     | 3           | Website Revamp | C     |
-- | 205     | 4           | Cloud Setup    | B     |
-- | 206     | 5           | Mobile App     | A     |
-- | 207     | 2           | Cloud Setup    | A     |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Writing SELECT queries to retrieve relevant information

-- 📚 PRACTICE QUESTIONS (35):
-- ----------------------------

-- 🔹 CREATE TABLE (Q1–Q10)
-- 1. Define the `employees` table with appropriate column names and data types.
-- 2. Define the `performance` table, ensuring foreign key relationships.
-- 3. Add a NOT NULL constraint to the `name` column in `employees`.
-- 4. Set `id` in `employees` as a PRIMARY KEY.
-- 5. Set `perf_id` as the PRIMARY KEY for the `performance` table.
-- 6. Choose the right data type for the `email` column.
-- 7. Add a UNIQUE constraint to the `email` column.
-- 8. Define a `gender` column that only accepts 'M' or 'F'.
-- 9. Add a CHECK constraint to ensure `age` is greater than 21.
-- 10. Create the `employees` table with all constraints in one statement.

-- 🔹 INSERT INTO (Q11–Q20)
-- 11. Insert the first three employees.
-- 12. Insert the remaining two employees.
-- 13. Add two new employees: 'Nina' and 'Arjun'.
-- 14. Insert a row in `performance` for employee 4 in 'Mobile App' with grade 'B'.
-- 15. Insert multiple rows into `performance` using a single query.
-- 16. Try inserting an employee without an email. What happens?
-- 17. Insert a performance record for an employee that doesn’t exist.
-- 18. Insert a duplicate email. Predict the result.
-- 19. Insert an employee with `age = 18`. Does it work?
-- 20. Insert a performance record with project 'AI Chatbot' and grade 'A'.

-- 🔹 SELECT Basics (Q21–Q35)
-- 21. Select all rows from the `employees` table.
-- 22. Select only `name` and `age` from `employees`.
-- 23. Retrieve all rows from the `performance` table.
-- 24. Show all projects handled by employee with ID 1.
-- 25. List all unique projects from the `performance` table.
-- 26. Select employees who are 27 years old.
-- 27. Retrieve the name and email of all female employees.
-- 28. Select all employees whose name starts with 'P'.
-- 29. Select all performance records for 'Website Revamp'.
-- 30. Find the grade received by 'Sarah Lee' in 'Data Migration'.
-- 31. List the names of employees who received an 'A' grade.
-- 32. Select all employees who have performance records.
-- 33. Select all employees who have **not** received any performance records.
-- 34. Retrieve the projects and grades for 'John Doe'.
-- 35. Show all employee names with their corresponding projects and grades.

-- ✅ End of Day 1 Practice

