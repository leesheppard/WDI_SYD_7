Week 03, Day 01
===============
### 24 / 11 / 2014

WHAT WE COVERED
---------------

- [Code Review - Fluffy's Project Management Thingo](https://github.com/ga-students/WDI_SYD_7/tree/master/week-03/day-01/project_management)
- Table Management
- Aggregate Functions
- [Junior Video](http://www.confreaks.com/videos/4659-nickelcityruby2014-how-to-be-an-awesome-junior-developer-and-why-to-hire-them)
- General Review
- [Homework!](https://gist.github.com/FluffyJack/297cfc1522403b67adb8)

DETAILS
-------

#### Table Management

```psql
CREATE TABLE posts
(
	id SERIAL4 PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	content TEXT NOT NULL,
	author VARCHAR(50) NOT NULL,
	author_website VARCHAR(255) NOT NULL
);

ALTER TABLE posts ADD COLUMN category VARCHAR(255) NOT NULL;

CREATE TABLE authors
(
	id SERIAL4 PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	website VARCHAR(255) NOT NULL
);

SELECT author, author_website FROM posts;

ALTER TABLE posts DROP COLUMN author;
ALTER TABLE posts DROP COLUMN author_website;

DROP TABLE students;
```

#### PostgreSQL Notes

Use Single Quotes - otherwise it won't work
End pretty much every line with a semi colon

#### Aggregate Functions

- COUNT
- MAX
- MIN
- SUM
- AVG

```psql
SELECT MIN(worker_id) FROM tasks;
SELECT MAX(worker_id) FROM tasks;
SELECT SUM(worker_id) AS sum_of_worker_ids FROM tasks;
SELECT AVG(worker_id) AS sum_of_worker_ids FROM tasks;

SELECT COUNT(column_name) FROM table\_name;
SELECT COUNT(*) FROM table_name;
SELECT COUNT(DISTINCT column_name) FROM table_name;
```

[Worth having a look here for heaps of PostgreSQL stuff.](http://www.tutorialspoint.com/postgresql/postgresql_functions.htm)

[Look here for really common PSQL functions.](http://www.tutorialspoint.com/postgresql/postgresql_useful_functions.htm)

[But this is the best one!](http://www.postgresqltutorial.com/)







