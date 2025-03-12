-- This is a comment in a SQL file
-- What is a Data and Database? 
-- Data is facts about an object or event.
-- A database is a collection of related data. 

-- What are Database Managment Systems (DBMS)?
-- A DBMS is a software that allows users to create, store, retrieve, update, and manage data in a database.
-- There are different types of DBMSs, such as Herarchical, Network, Relational, Object-Oriented, and NoSQL.

-- Wha is Relational DBMS?
-- This is essentialy when we store data in tables which have rows and columns.

-- What is Herarchical DBMS?
-- This is when we store data in a tree-like structure.

-- What is Network DBMS?
-- This is when we store data in a graph-like structure.

-- What is Object-Oriented DBMS?
-- This is when we store data in objects.

-- What is NoSQL DBMS?
-- This is when we store data in a non-relational database such as document, key-value and graph.

-- What is SQL? 
-- SQL stands for Structured Query Language. It is a standard language for accessing and manipulating databases.

-- What is a Database Schema?
-- A database schema is a blueprint of how the database is constructed. It defines the tables, fields, relationships, views, indexes, and other elements.

-- Waht makes up a SQL Query?
-- A SQL query is made up of clauses, expressions, predicates, queries, and statements.
-- Queries are used to retrieve data from a database. They are used to perform operations such as SELECT, FROM, WHERE etc.
-- Statments are used to perform operations such as CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, and TRUNCATE.
-- Predicates are used to filter data based on conditions. These are WHERE, HAVING, and JOIN.


-- Data Definition Language (DDL)
-- DDL is used to define the structure of the database. It includes commands such as CREATE, ALTER, DROP, TRUNCATE, and RENAME.

-- Creating a Database
-- create database school;

-- The USE statement is used to select a database to work with.
use school;

-- There are different types of data types in SQL.
-- Some of the common data types are INT, VARCHAR, CHAR, TEXT, DATE, TIME, TIMESTAMP, and BLOB.
-- VARCHAR is used to store variable-length character strings.

-- Create a students table 
create table students (
    id int,
    name varchar(100),
    email varchar(100),
    age int
);

-- Alter students table to add a new column
alter table students
add password varchar(100);

-- Modify the data type of a column
alter table students
Modify column name varchar(200);

-- Rename a column 
alter table students
change column name full_name varchar(200);

-- Drop a column
alter table students
Drop column age;

-- Drop a table
-- drop table students;

-- Data Manipulation Language (DML)
-- DML is used to manipulate data in the database.

-- Insert data into the students table
insert into students (id, full_name, email, password)
values (1, "John Doe", "John@doe.ca", "password123");

-- Insert multiple rows into the students table
insert into students (id, full_name, email, password)
values (2, "Jane Doe", "Jane@doe.ca", "password123"), 
(3, "Alice Smith", "Alice@smith.ca", "password123");

-- Selecting all data & columns from the students table
select * from students;

-- Selecting specific columns from the students table
select id, full_name from students;

-- Selecting data based on a condition
select * from students where id > 1;

-- Update data in the students table
update students set password = 'newpassword' where id = 1;
update students set password = 'newpassword123' where id in (2,3);

-- Delete data from the students table
delete from students WHERE id = 1;

-- What is a Primary Key?
-- A primary key is a unique identifier for a record in a table. It is used to establish a relationship between tables.
-- autoincrement is used to automatically generate a unique value for the primary key.

alter table students
change column id id int primary key auto_increment;

-- Insert data into the students table without an id
insert into students (full_name, email, password)
values ("John Doe", "John@doe.ca", "password1234");

-- What is a Foreign Key?
-- A foreign key is a column in a table that references the primary key of another table. It is used to establish a relationship between tables.

-- What are cascading actions?
-- Cascading actions are used to define what happens when a record in a parent table is deleted or updated.
-- There are different types of cascading actions such as RESTRICT, CASCADE, SET NULL, and NO ACTION.

-- RESTRICT: This is the default behavior. It prevents the deletion or update of a record in the parent table (students) if there are related records in the child table (courses).
-- CASCADE: This will automatically delete or update related records in the child table (courses) when a record in the parent table (students) is deleted or updated.
-- SET NULL: This will set the foreign key column in the child table (courses) to NULL when a record in the parent table (students) is deleted or updated.
-- NO ACTION: This is similar to RESTRICT. It prevents the deletion or update of a record in the parent table (students) if there are related records in the child table (courses).

-- Courses Table
create table courses (
    id int primary key auto_increment, 
    name varchar(100),
    student_id int,
    -- We are essentially stating that the student_id column in the courses table is a foreign key that references the id column in the students table.
    foreign key (student_id) references students(id)
    on delete CASCADE on update cascade
);

-- Insert data into the courses table
insert into courses (name, student_id)
values ("Math", 2), 
       ("Science", 3),
       ("History", 2),
       ("English", 3),
       ("Art", 4);

-- Inserting a student_id that does not exist in the students table will result in an error.
insert into courses (name, student_id) values ("Math", 10);

-- Ordering by a column in descending/ascending order
select * from courses order by name asc;

-- Limiting the number of rows returned
select * from courses order by name asc limit 2;

-- Count and Group data based on a column
-- This query will return the student id column and a count column that shows the number of courses each student is taking. This is accomplished by using the COUNT function and the GROUP BY clause to specify the column(student_id) to group by.
select student_id, count(*) from courses group by student_id;



