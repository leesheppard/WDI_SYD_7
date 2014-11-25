Week 03, Day 01
===============
### 24 / 11 / 2014

WHAT WE COVERED
---------------

- [Code Review - Fluffy's Project Management Thingo](https://github.com/ga-students/WDI_SYD_7/tree/master/week-03/day-01/project_management)
- Table Management
- Aggregate Functions
- [Junior Video](http://www.confreaks.com/videos/4659-nickelcityruby2014-how-to-be-an-awesome-junior-developer-and-why-to-hire-them)
- Just a general review

DETAILS
-------

#### Table Management

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

ALTER TABLE posts REMOVE COLUMN author;
ALTER TABLE posts REMOVE COLUMN author_website;

