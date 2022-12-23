-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees

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
INTO retirement_information
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Check the table
SELECT * FROM retirement_information;
SELECT * FROM titles_3;

-- Join both tables on the primary key.


-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

-- Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

-- Before you export your table, confirm that it looks like this image: