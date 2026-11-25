CREATE DATABASE IF NOT EXISTS employee;
use employee;
CREATE TABLE Departments (  department_id int PRIMARY KEY,department_name VARCHAR(100));
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
DESCRIBE Employees;
SELECT DATABASE();
SELECT * FROM Employees;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(150);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE Table employees;
Drop table employees;
Drop database employees;
DROP DATABASE employee;
CREATE DATABASE IF NOT EXISTS employee;
use employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) UNIQUE NOT NULL
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id));
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'HR');
INSERT INTO Locations (location)
VALUES ('Chennai');
INSERT INTO Employees
(employee_id, employee_name, gender, age, designation, department_id, location_id, salary)
VALUES
(101, 'Arun', 'M', 25, 'Analyst', 1, 1, 25000);
SELECT * FROM Employees;
INSERT INTO Departments (department_id, department_name)
VALUES (2, 'HR');
INSERT INTO Locations (location)
VALUES ('Chennai');
INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id, salary)
VALUES
(102, 'Ravi', 'X', 25, 1, 1, 20000);
INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id, salary)
VALUES
(103, 'Kumar', 'M', 16, 1, 1, 20000);
INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id, salary)
VALUES
(104, 'Karthik', 'M', 25, 99, 1, 20000);
SELECT employee_name, hire_date
FROM Employees;