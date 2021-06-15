-- CREATE TABLE employees (
-- 	emp_no int NOT NULL,
-- 	Birth_date date NULL,
--      first_name VARCHAR(40) NOT NULL,
--      last_name VARCHAR(40) NOT NULL,
-- 	gender varchar(4) NOT NULL,
-- 	hire_date date NOT NULL,
--      PRIMARY KEY (emp_no),
--      UNIQUE (emp_no)
-- );

-- drop table titles

-- CREATE TABLE titles (
-- 	emp_no int NOT NULL,
--      title VARCHAR(60) NOT NULL,
--      from_date date NOT NULL,
-- 	to_date date NOT NULL
--     );
	
-- 	select * from titles

-- SELECT first_name, last_name, birth_date
-- FROM employees
-- WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
-- find the date ranges
-- SELECT first_name, last_name
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Count Queries
-- SELECT COUNT(first_name)
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- --create a new table from query results
-- SELECT first_name, last_name
-- INTO retirement_info
-- FROM employees
-- WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- select * from retirement_info

-- select count(first_name)
-- from retirement_info