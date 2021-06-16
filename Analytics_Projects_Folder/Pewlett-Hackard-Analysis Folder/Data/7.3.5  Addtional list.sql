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

