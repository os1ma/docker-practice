create database if not exists my_db;

use my_db;

create table users(id int, name varchar(255));

insert into users(id, name) values
(1, 'Alice'),
(2, 'Bob');
