/* Create tables */
CREATE TABLE table_a (
  id serial primary key,
  exercise varchar(20)
);

CREATE TABLE table_b (
  id serial primary key,
  exercise varchar(20)
);


/* Insert test data */
INSERT INTO table_a (exercise) VALUES ('benchpress'), ('calf raise'), ('squat thrust'), ('sitting');
INSERT INTO table_b (exercise) VALUES ('spinning'), ('benchpress'), ('running'), ('squat thrust');


/* Queries */

/** INNER JOIN (only the intersection/overlap) **/
SELECT * FROM table_a INNER JOIN table_b ON (table_a.exercise = table_b.exercise);

/** FULL OUTER JOIN (everything) **/
SELECT * FROM table_a FULL OUTER JOIN table_b ON (table_a.exercise = table_b.exercise);

/** FULL OUTER JOIN (everything WITHOUT intersection/overlap) **/
SELECT * FROM table_a FULL OUTER JOIN table_b ON (table_a.exercise = table_b.exercise)
  WHERE table_a.id IS NULL OR table_b.id IS NULL;

/** LEFT JOIN (all of table_a plus intersection/overlap of table_b **/
SELECT * FROM table_a LEFT JOIN table_b ON (table_a.exercise = table_b.exercise);

/** LEFT JOIN (all of table_b plus intersection/overlap of table_a **/
SELECT * FROM table_a RIGHT JOIN table_b ON (table_a.exercise = table_b.exercise);

/** LEFT JOIN (all of table_a WITHOUT intersection/overlap of table_b **/
SELECT * FROM table_a LEFT JOIN table_b ON (table_a.exercise = table_b.exercise)
  WHERE table_b.id IS NULL;

