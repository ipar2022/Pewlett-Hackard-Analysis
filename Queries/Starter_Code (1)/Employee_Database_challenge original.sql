-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees

Select * From titles

-- Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles

-- Create a new table using the INTO clause.
CREATE TABLE titles_3 (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no, title, from_date)
);



SELECT emp_no, first_name, last_name
--INTO retirement_information
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Check the table
SELECT * FROM retirement_information;
SELECT * FROM titles_3;

-- Join both tables on the primary key.
-- Deliverable 1
SELECT em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as em
LEFT JOIN titles as ti 
ON em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no
-- COPIED INTO final_Database_challenge.sql




SELECT * FROM retirement_titles



-- JOIN TUTOR
Select * From employees
Select * From titles


-- 8. Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- 9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- 	These columns will be in the new table that will hold the most recent title of each employee.


-- 10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- If you’d like a hint on using the DISTINCT ON statement, that’s totally okay. If not, that’s great too. You can always revisit this later if you change your mind.

-- 11. Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.

-- 12. Create a Unique Titles table using the INTO clause.

-- 13. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.

-- 14. Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 15. Before you export your table, confirm that it looks like this image:

-- 16. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.

-- 17. First, retrieve the number of titles from the Unique Titles table.

-- 18. Then, create a Retiring Titles table to hold the required information.

-- 19. Group the table by title, then sort the count column in descending order.

-- 20. Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- 21. Before you export your table, confirm that it looks like this image:


-- 22. Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.

-- Deliverable 2:  
-- Create a mentorship-eligibility table that holds the current employees who were 
-- born between January 1, 1965 and December 31, 1965.
-- Write a query to create a Mentorship Eligibility table 
-- that holds the employees who are eligible to participate in a mentorship program.

SELECT DISTINCT ON em.emp_no, em.first_name, em.last_name, em.birth_date ti.title
ti.from_date, ti.to_date
FROM dept_emp as de
LEFT JOIN titles as ti 
ON em.emp_no = ti.emp_no
INTO mentorship_eligibility
WHERE (de.to_date ='9999-01-01')
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no



SELECT DISTINCT ON (emp_no) em.emp_no,
first_name, 
last_name,
birth_date
FROM employees as em

SELECT DISTINCT ON from_date, to_date
FROM dept_emp as em

SELECT DISTINCT ON title,
FROM titles as ti


--INTO retirement_information
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
