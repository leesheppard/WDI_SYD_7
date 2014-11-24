Week 03, Day 01
===============
### 19 / 11 / 2014

WHAT WE COVERED
---------------

* SQL
* Talk with Charlie Gerard
* Sinatra + SQL

DETAILS
-------

#### SQL (**S**tructured **Q**uery **L**anguage)

##### What is SQL?

It stands for Structured Query Language (but most people pronounce it sequel).  But, at the end of the day, it is just a way to communicate and interact with data in a database.  It works because it understands fields that are in tables, and how to find the data in the tables based on the contents of the fields.

There are four main things you can do with SQL:
- Create
- Read
- Update
- Delete

Or **CRUD.**  This is a fundamental set of features that *every* data storage must have.

The way I look at it is it is exactly like a spreadsheet.
- A Database = a whole spreadsheet file
- A Table = a tab or sheet of a spreadsheet
- A column = you can probably guess
- A row = you can probably guess

SQL only knows tables, that’s it.  It either makes a table, or it returns a temporary table with your stuff.	

SQL is the program that allows the databases, but there are lots and lots of interfaces - SQLite, PostgreSQL, MySQL, MSSQL, Oracle Something.

We prefer PostgreSQL.  It is much nicer for everything and doesn’t make you want to cry nearly as regularly.

##### Numbers

- **INT** - a whole number ranging from -2147483648 to 2147483647 (4 bytes)
- **SMALLINT** - a whole number ranging from -32768 to 32767 (2 bytes)
- **BIGINT** - a whole number ranging from -9223372036854775808 to 9223372036854775807 (8 bytes)
- **DOUBLE** - 15 precision (8 bytes)
- **REAL** - 6 precision (4 bytes)
- **BOOLEAN** - true or false (but stored as a 1 or a zero)
- **SERIAL** - Is an INT but AUTO-INCREMENTED

##### Text

- **VARCHAR(n)** - The n is a defined number of characters, the max limit is 255.. i.e. VARCHAR(255)
- **TEXT** - Stores an arbitrary amount of text

##### Date / Time

- **TIMESTAMP** - A point in time, optionally specify time zone
- **DATE** - Just a date
- **TIME** - Just a time
- N.B. The Unix Epoch is the 01/01/1970 UTC.  Often to store dates and times etc. - we count the number of seconds since the Unix Epoch
 

#### SAMPLE CODE…
```sql
CREATE TABLE students 
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
dob DATE,
atar FLOAT8
);

CREATE TABLE courses
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(50) UNIQUE NOT NULL,
student_id INT4 REFERENCES students(id)	
);

ALTER TABLE students ADD COLUMN course_id INTEGER REFERENCES courses(id);

INSERT INTO students (first_name, last_name, dob) VALUES (“Jack”, “Watson-Hamblin”, “09/16/1993”);
INSERT INTO students (first_name, last_name, dob) VALUES (“Jack”, “Watson-Hamblin”, “09/16/1993”), (“Wolf”, “Jeffress”, “01/01/1970”);

SELECT * FROM students;
SELECT id, first_name FROM students;
SELECT * FROM students WHERE first_name=“Wolf”;
SELECT * FROM students WHERE first_name IS NOT “Wolf”;
SELECT * FROM students WHERE first_name LIKE “%a%”;

INSERT INTO courses (name) VALUES (“WDI”), (“UXDI”), (“FEWD”);

SELECT * FROM courses;	
SELECT * FROM students WHERE id=1;

UPDATE students SET course_id=1 WHERE id=1;
UPDATE students SET course_id=1 WHERE first_name=“Jack”;

DELETE FROM students WHERE id=1;

SELECT * FROM students INNER JOIN courses ON students.course_id = courses.id;

```

**CREATING A DATABASE**

- createdb my_blog - this creates the database
- psql -d my_blog - this moves into psql and opens up the specified database
- ```sql
CREATE TABLE posts
(
id SERIAL4 PRIMARY KEY,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL,
author VARCHAR(40) NOT NULL,
author_website VARCHAR(255) NOT NULL
);
```

DON’T FORGET ABOUT ENDING THE LINE WITH A SEMICOLON…  WRITE THIS STUFF IN SUBLIME FIRST SO YOU DON’T CRY.













