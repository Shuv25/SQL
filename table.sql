create database Relation;

use Relation;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO authors (author_id, author_name) VALUES
(1, 'Jane Austen'),
(2, 'Leo Tolstoy'),
(3, 'Charles Dickens');

INSERT INTO books (book_id, book_title, author_id) VALUES
(101, 'Pride and Prejudice', 1),
(102, 'Anna Karenina', 2),
(103, 'Great Expectations', 3),
(104, 'War and Peace', 2);

select *from authors;
select *from books;

SELECT *FROM authors JOIN books  ON authors.author_id = books.author_id;

-- one to many
-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales');

-- Insert data into employees table
INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(101, 'Alice', 1), -- Alice works in HR
(102, 'Bob', 2),   -- Bob works in Engineering
(103, 'Carol', 1), -- Carol also works in HR
(104, 'David', 3); -- David works in Sales

SELECT d.department_id, d.department_name, e.employee_id, e.employee_name
FROM departments d
JOIN employees e ON d.department_id = e.department_id;

-- many to many
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) UNIQUE
);

-- Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) UNIQUE
);

-- Create student_courses junction table
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Carol');

-- Insert data into courses table
INSERT INTO courses (course_id, course_name) VALUES
(101, 'Mathematics'),
(102, 'Physics'),
(103, 'Literature');

-- Insert data into student_courses junction table
INSERT INTO student_courses (student_id, course_id) VALUES
(1, 101), -- Alice is enrolled in Mathematics
(1, 102), -- Alice is enrolled in Physics
(2, 101), -- Bob is enrolled in Mathematics
(3, 103); -- Carol is enrolled in Literature

SELECT s.student_id, s.student_name, c.course_id, c.course_name
FROM students s
JOIN student_courses sc ON s.student_id = sc.student_id
JOIN courses c ON sc.course_id = c.course_id;