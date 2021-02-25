-- DROP TABLE IF EXISTS departments;
​
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR  NOT NULL,
    PRIMARY KEY (dept_no)
);
​
-- DROP TABLE IF EXISTS dept_emp;
​
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR  NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);
​
-- DROP TABLE IF EXISTS dept_manager;
​
CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);
​
-- DROP TABLE IF EXISTS employee;
​
CREATE TABLE employee (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);
​
-- DROP TABLE IF EXISTS salaries;
​
CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (emp_no)
);
​
-- DROP TABLE IF EXISTS titles;
​
CREATE TABLE titles (
    title_id VARCHAR(30)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (title_id)
);
​
ALTER TABLE dept_emp ADD FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);
​
ALTER TABLE dept_emp ADD FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
​
ALTER TABLE dept_manager ADD FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);
​
ALTER TABLE dept_manager ADD FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
​
ALTER TABLE employee ADD  FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);
​
ALTER TABLE salaries ADD FOREIGN KEY (emp_no) 
REFERENCES employee (emp_no);
​
SELECT * from employee;
SELECT * from dept_emp;
SELECT * from departments;
SELECT * from dept_manager;
SELECT * from salaries;
SELECT * from titles;