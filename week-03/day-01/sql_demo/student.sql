CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  first VARCHAR(25) NOT NULL,
  last VARCHAR(25) NOT NULL,
  dob DATE,
  gpa FLOAT8
);

CREATE TABLE courses
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  student_id INT4 REFERENCES students(id)
);

ALTER TABLE students ADD COLUMN course_id INT4 REFERENCES courses(id);

INSERT INTO students (first, last, dob, gpa) VALUES ('bill', 'jones', '1/1/1990', 3.3);
INSERT INTO students (first, last, dob, gpa) VALUES ('janet', 'jones', '2/1/1990', 3.7);
INSERT INTO students (first, last, dob, gpa) VALUES ('jill', 'smith', '2/1/1980', 3.5);
INSERT INTO students (first, last, dob, gpa) VALUES ('tim', 'smith', '2/1/1990', 3.6);
INSERT INTO students (first, last, dob, gpa) VALUES ('january', 'jones', '2/1/1990', 3.7);
INSERT INTO students (first, last, dob, gpa) VALUES ('jim', 'jones', '2/1/1980', 3.5);


INSERT INTO courses (id,name) VALUES (1,'WDI Web Development');
INSERT INTO courses (id,name) VALUES (2,'WDI Front End');

UPDATE students SET course_id = 1 WHERE first = 'bill';
