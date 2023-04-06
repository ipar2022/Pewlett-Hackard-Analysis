SELECT em.emp_no, em.first_name, em.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as em
LEFT JOIN titles as ti 
ON em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles as rt
WHERE (to_date = '9999-01-01')
ORDER BY rt.emp_no,rt.to_date DESC;

SELECT * FROM unique_titles

-- Write another query in the Employee_Database_challenge.sql file to retrieve 
--the number of employees by their most recent job title who are about to retire.

SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

SELECT * FROM retiring_titles

-- Deliverable 2:  
-- Create a mentorship-eligibility table that holds the current employees who were 
-- born between January 1, 1965 and December 31, 1965.
-- Write a query to create a Mentorship Eligibility table 
-- that holds the employees who are eligible to participate in a mentorship program.
SELECT * FROM employees as em

SELECT * FROM employees 
SELECT * FROM dept_emp 
SELECT * FROM titles
SELECT * FROM mentorship_eligibility
SELECT * FROM emp_no
SELECT (em.emp_no) em.emp_no 
SELECT * FROM dept_emp 

SELECT DISTINCT ON 
em.first_name, em.last_name, em.birth_date, de.from_date, de.to_date, ti.title

SELECT DISTINCT ON (emp_no) emp_no, 
em.first_name, em.last_name, em.birth_date
FROM employees as em

SELECT de.from_date, de.to_date
FROM dept_emp as de

SELECT  ti.title
FROM titles as ti


SELECT DISTINCT ON (em.emp_no) em.emp_no, 
em.first_name, em.last_name, em.birth_date,
de.from_date, de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as em
LEFT JOIN dept_emp as de
ON (em.emp_no = de.emp_no)
LEFT JOIN titles as ti 
ON (em.emp_no = ti.emp_no)
WHERE (de.to_date ='9999-01-01')
AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY em.emp_no ASC
SELECT * FROM mentorship_eligibility


-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image:

-- Two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
--SELECT title,
--COUNT(title)
--INTO mentor_title_count
--FROM mentorship_eligibility 
--GROUP BY title;
--ORDER BY mentorship_eligibility.count DESC;

SELECT * FROM mentor_title_count
SELECT * FROM retiring_titles

select *from unique_titles
SELECT * FROM mentorship_eligibility

--SELECT DISTINCT ON
--mentorship_eligibility,
--count(retiring_titles),
--(retiring_titles)
--INTO comparision_table
--FROM retiring_titles as rt
--LEFT JOIN mentorship_eligibility as mtc
--on(retiring_titles),.count ASC;


--SELECT mentor_title_count,
--count(retiring_titles),
--(retiring_titles)
--INTO comparision_table
--FROM retiring_titles as rt
--LEFT JOIN mentor_title_count as mtc
--on(retiring_titles = );

--SELECT title, mentoree_count, retire_count,
--ROUND ( * 100.0 / retire_count,1) as Percent
--FROM ;