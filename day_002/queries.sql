-- 📘 Day 2: WHERE, ORDER BY Practice
-- ----------------------------------

-- 🔹 Filtering & Sorting Queries

-- Q1. Select all books published after 1950
SELECT * FROM books WHERE year > 1950;

-- Q2. Select all books priced under 20
SELECT title, price FROM books WHERE price < 20;

-- Q3. Show all books by 'George Orwell'
SELECT title FROM books
WHERE author_id = (SELECT author_id FROM authors WHERE name = 'George Orwell');

-- Q4. Find books published between 1900 and 2000
SELECT title, year FROM books
WHERE year BETWEEN 1900 AND 2000;

-- Q5. Books NOT written by UK authors
SELECT b.title, a.name, a.country
FROM books b
JOIN authors a ON b.author_id = a.author_id
WHERE a.country <> 'UK';

-- Q6. Show all books sorted by price (descending)
SELECT title, price FROM books ORDER BY price DESC;

-- Q7. Show authors from 'UK' OR 'India'
SELECT * FROM authors WHERE country IN ('UK','India');

-- Q8. Show books whose title starts with 'The'
SELECT * FROM books WHERE title LIKE 'The%';

-- Q9. Find the cheapest book
SELECT title, price FROM books ORDER BY price ASC LIMIT 1;

-- Q10. Find the most recent book published
SELECT title, year FROM books ORDER BY year DESC LIMIT 1;

-- ✅ End of Day 2 Queries
