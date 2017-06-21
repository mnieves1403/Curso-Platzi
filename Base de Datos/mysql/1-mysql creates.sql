show databases;

create database platzi;

use platzi;

create table books(
	book_id integer unsigned primary key auto_increment,
    publisher_id integer unsigned not null,
    titulo varchar(60) not null,
    autor varchar(100) not null,
    price decimal(5,2)
);

DROP TABLE books;

create table books(
	book_id integer unsigned primary key auto_increment,
    publisher_id integer unsigned not null,
    author varchar(100) not null,
    title varchar(50) not null,
    description TEXT,
    price decimal(5,2),
    copies int not null default 0
);

create table publishers(
	publisher_id integer unsigned primary key auto_increment,
	name varchar(100) not null,
	country varchar(20)
);


create table users(
user_id integer unsigned primary key auto_increment,
name varchar(100) not null,
email varchar(100) not null unique
);

describe books;
desc books;

show tables;

create table actions(
action_id integer unsigned primary key auto_increment,
book_id integer unsigned not null,
user_id integer unsigned not null,
action_type enum('venta', 'prestamo', 'devolucion') 
	not null,
created_add timestamp not null default current_timestamp
);

desc actions;