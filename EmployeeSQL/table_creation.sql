CREATE TABLE Titles (
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
emp_no INTEGER NOT NULL, 
emp_title VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES Titles (title_id)
);

CREATE TABLE Salaries (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Manager(
dept_no VARCHAR NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Dept_emp(
emp_no INTEGER NOT NULL,
dept_no VARCHAR NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);