-- Create Employee Table
CREATE TABLE Employee (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC,
    dep_id INTEGER,
    manager_id INTEGER,
    hire_date DATE,
    skills TEXT,
    address TEXT,
    project_id INTEGER
);

-- Create Department Table
CREATE TABLE Department (
    dep_id SERIAL PRIMARY KEY,
    dep_name VARCHAR(100),
    location VARCHAR(100)
);

-- Create Project Table
CREATE TABLE Project (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    budget NUMERIC
);
