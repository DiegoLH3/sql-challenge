-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE department (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    emp_no INTEGER PRIMARY KEY,
        emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
    FOREIGN KEY(dept_no) REFERENCES department(dept_no)
);

CREATE TABLE dept_manager (
        dept_no VARCHAR NOT NULL,
        emp_no INTEGER NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES department(dept_no),
    FOREIGN KEY(emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE salaries (
        emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY(emp_no, salary),
    FOREIGN KEY(emp_no) REFERENCES employee(emp_no)
);

DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS department;
