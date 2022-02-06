-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;



---------- DELIVERABLE 1 ----------
--- The Number of Retiring Employees by Title ---
-- Create retirement_titles table 
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Export retirement_titles.csv
COPY (select * from retirement_titles) TO 'D:\retirement_titles.csv'
   DELIMITER ',' CSV HEADER;

-- Create unique_titles table
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;

-- Export unique_titles.csv
COPY (select * from unique_titles) TO 'D:\unique_titles.csv'
   DELIMITER ',' CSV HEADER;

-- Create retiring_titles.csv
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

-- Export retiring_titles.csv
COPY (select * from retiring_titles) TO 'D:\retiring_titles.csv'
   DELIMITER ',' CSV HEADER;



---------- DELIVERABLE 2 ----------
--- The Employees Eligible for the Mentorship Program ---
-- write a query to create a Mentorship Eligibility table that holds 
-- the employees who are eligible to participate in a mentorship program.

-- Create mentorship_eligibilty table
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Export mentorship_eligibilty.csv
COPY (select * from mentorship_eligibilty) TO 'D:\mentorship_eligibilty.csv'
   DELIMITER ',' CSV HEADER;





