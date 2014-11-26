DROP TABLE students;

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

ALTER TABLE posts ADD COLUMN author_id INT4 REFERERNCES authors(id);

ALTER TABLE posts DROP COLUMN author;
ALTER TABLE posts DROP COLUMN author_website;







SELECT author, author_website FROM posts;

@posts.each do |post|
  new_author = INSERT INTO authors (name, website) VALUES ('#{[post["author"]}', '#{post["auhtor_website}')
  UPDATE posts SET author_id=#{new_author["id"]} WHERE id=#{post["id"]}
end

