-- Create the tables for each csv file
CREATE TABLE titles (
  title_id VARCHAR NOT NULL PRIMARY KEY,
  title VARCHAR
);


CREATE TABLE employees (
  emp_no int NOT NULL PRIMARY KEY,
  emp_title_id VARCHAR,
  birth_date VARCHAR,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date VARCHAR
);


CREATE TABLE salaries (
  emp_no int NOT NULL PRIMARY KEY,
  salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



CREATE TABLE departments (
  dept_no VARCHAR NOT NULL PRIMARY KEY,
  dept_name VARCHAR
);


CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager (
  dept_no VARCHAR NOT NULL,
  emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

