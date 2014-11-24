{
  "id"=>"100000444073891", 
  "name"=>"Tom Anderson", 
  "first_name"=>"Tom", 
  "last_name"=>"Anderson", 
  "link"=>"http://www.facebook.com/myspacetom", 
  "username"=>"myspacetom", 
  "gender"=>"male", 
  "locale"=>"en_US"
}

CREATE TABLE facebook_graph (
  id serial primary key,
  facebook_id bigint NOT NULL,
  name varchar(101) NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  link varchar(255) default NULL,
  username varchar(50) default NULL,
  gender char(1) default NULL,
  locale varchar(5) default NULL
);


SELECT * FROM facebook_graph WHERE id = 4;
UPDATE facebook_graph SET gender = 'f' WHERE username = "Tom"
INSERT INTO facebook_graph (name, first_name, last_name) VALUES ("My Name", "My", "Name");
DELETE FROM facebook_graph where id > 4
