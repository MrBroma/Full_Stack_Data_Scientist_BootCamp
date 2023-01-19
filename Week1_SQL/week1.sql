USE sql_datafullstack;
CREATE TABLE students (Roll_No INT,
                       Name VARCHAR(10),
                       Age INT,
                       Phone INT);

INSERT INTO students
VALUES (1, 'Arya', 21, 7419000),
(2, 'Brian', 19, 84891000),
(3, 'John', 24, 9291018),
(4, 'Max', 24, 7903080);

SELECT *
FROM students;

SELECT Name
FROM students;

SELECT Name, Roll_No
FROM students;

