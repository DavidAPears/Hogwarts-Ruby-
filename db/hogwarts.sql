DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students (
  id serial4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  house_id INT2 REFERENCES houses(id)
  age int2
);

CREATE TABLE houses (
  id serial4 primary key,
  house_name varchar(255)
  
);
