-- -- Employee count by department number
-- SELECT COUNT(ce.emp_no), de.dept_no
-- FROM current_emp as ce
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
-- GROUP BY de.dept_no
-- ORDER BY de.dept_no;


-- -- 1. Employee information -- --
-- created emp_info and retirement_info
-- -- create retirement info table
-- SELECT emp_no, first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- -- create emp_info table
-- SELECT emp_no,
--     first_name,
-- last_name,
--     gender
-- INTO emp_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- select * from emp_info

-- --Join salaries and dep_emp on emp_no
-- SELECT e.emp_no,
--     e.first_name,
-- e.last_name,
--     e.gender,
--     s.salary,
--     de.to_date
-- INTO emp_info
-- FROM employees as e
-- INNER JOIN salaries as s
-- ON (e.emp_no = s.emp_no)
-- INNER JOIN dept_emp as de
-- ON (e.emp_no = de.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--      AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
-- 	 AND (de.to_date = '9999-01-01');


-- -- 2. Management -- --
-- multijoin multiple joins --
-- create manager_info -- 
-- List of managers per department
-- SELECT  dm.dept_no,
--         d.dept_name,
--         dm.emp_no,
--         ce.last_name,
--         ce.first_name,
--         dm.from_date,
--         dm.to_date
-- INTO manager_info
-- FROM dept_manager AS dm
--     INNER JOIN departments AS d
--         ON (dm.dept_no = d.dept_no)
--     INNER JOIN current_emp AS ce
--         ON (dm.emp_no = ce.emp_no);
-- select * from manager_info


-- -- 3. Department Retirees -- --
--create dept_info --
-- SELECT ce.emp_no,
-- ce.first_name,
-- ce.last_name,
-- d.dept_name
-- INTO dept_info
-- FROM current_emp as ce
-- INNER JOIN dept_emp AS de
-- ON (ce.emp_no = de.emp_no)
-- INNER JOIN departments AS d
-- ON (de.dept_no = d.dept_no);

-- query for sales and developement in dept_name
--select * from dept_info where dept_name = 'Sales' or dept_name = 'Development'

-- -- Deliverable 1. Number of retiring employees
-- -- create retirement_titles.csv
-- select em.emp_no, 
-- t.title,em.birth_date,em.first_name,em.last_name, t.to_date
-- INTO retirement_titles
-- FROM employees as em
-- inner join titles as t
-- 	on(em.emp_no=t.emp_no)
-- 	WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- and (t.to_date = '9999-01-01');

-- -- -- --create unique_titles tables
-- -- select distinct on (emp_no)emp_no, 
-- -- title,birth_date,first_name,last_name,to_date
-- -- INTO unique_titles
-- -- FROM retirement_titles
-- -- where (to_date = '9999-01-01');


-- select distinct on (emp_no)emp_no, 
-- title,birth_date,first_name,last_name,to_date
-- INTO unique_titles
-- FROM retirement_titles;



-- order by title;

-- -- creating retiring_titles --

-- select count (emp_no),title
-- --into retiring_titles
-- from unique_titles
-- group by title
-- order by count DESC;

-- select count (emp_no),title
-- --into retiring_titles
-- from unique_titles_2
-- group by title
-- order by count DESC;

-- -- deliverable 2 --
-- -- create mentorship_eligibility --
-- select distinct on (em.emp_no)em.emp_no,
-- em.first_name,em.last_name, em.birth_date,de.from_date, de.to_date, t.title 
-- INTO mentorship_eligibility
-- FROM employees as em
-- inner join titles as t
-- 	on(em.emp_no=t.emp_no)
-- inner join dept_emp as de
-- 	on(em.emp_no=de.emp_no)
-- 	WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- 		and (de.to_date = '9999-01-01')
-- 		;