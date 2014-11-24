CREATE TABLE facebook_graph (
  id serial primary key,
  facebook_id bigint NOT NULL,
  name varchar(101) NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  link varchar(255),
  username varchar(50),
  gender char(1),
  locale varchar(5)
);
