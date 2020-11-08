--   DROP TABLE IF EXISTS departments;

-- --Create Table for Departments

--   CREATE TABLE departments (
--     dept_no VARCHAR(10)  NOT NULL,
--     dept_name VARCHAR(30) NOT NULL,
--      PRIMARY KEY (dept_no)
-- );
 
select * from departments


-- CREATE TABLE "dept_emp" (
--     "emp_no" INT   NOT NULL,
--     "dept_no" INT   NOT NULL
-- );

-- CREATE TABLE "dept_manager" (
--     "dept_no" INT   NOT NULL,
--     "emp_no" INT   NOT NULL
-- );

-- CREATE TABLE "employee" (
--     "emp_no" INT   NOT NULL,
--     "emp_title_id" VARCHAR(30   NOT NULL,
--     "birth_date" DATE   NOT NULL,
--     "first_name" VARCHAR(30)   NOT NULL,
--     "last_name" VARCHAR(30)   NOT NULL,
--     "sex" VARCHAR(30)   NOT NULL,
--     "hire_date" DATE   NOT NULL
-- );

-- CREATE TABLE "salaries" (
--     "emp_no" INT   NOT NULL,
--     "salary" INT   NOT NULL
-- );

-- CREATE TABLE "titles" (
--     "title_id" VARCHAR(30)   NOT NULL,
--     "title" VARCHAR(30)   NOT NULL
-- );

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "employee" ("emp_no");

-- ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
-- REFERENCES "departments" ("dept_no");

-- ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_no" FOREIGN KEY("emp_no")
-- REFERENCES "salaries" ("emp_no");

-- ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_title_id" FOREIGN KEY("emp_title_id")
-- REFERENCES "titles" ("title_id");

