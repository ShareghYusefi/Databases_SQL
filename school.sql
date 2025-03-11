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