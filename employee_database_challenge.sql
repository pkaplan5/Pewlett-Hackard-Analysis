SELECT DISTINCT ON (e.emp_No)
e.first_name,
e.last_name,
titles.title,
titles.from_date,
titles.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles
ON titles.emp_no=e.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND
'1955-12-31'
AND 
titles.to_date='9999-01-01'
ORDER BY e.emp_no

SELECT COUNT(title),
title
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESCSELECT COUNT(title),
title
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC



SELECT DISTINCT ON (employees.emp_no)
employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
FROM employees
INNER JOIN titles
ON 
titles.emp_no=employees.emp_no
INNER JOIN dept_emp
on
dept_emp.emp_no=employees.emp_no
WHERE dept_emp.to_date='9999-01-01'
AND 
employees.birth_date BETWEEN '1965-01-01' 
AND '1965-12-31'