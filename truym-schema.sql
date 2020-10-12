create database truyum;
use truyum;

-- Menu Items table --------------  

create table menu_items(
	menu_id int primary key,
    name varchar(30) not null,
    price decimal(5,2) not null,
    active enum('Yes','No') not null,
    date_of_launch date,
    category varchar(30) not null,
    free_delivery enum('Yes','No') not null
);
desc menu_items;

-- Users table --------------  

create table users(
	user_id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    phone_num varchar(11),
    email varchar(20) unique,
    role enum('admin','user')
);
desc users;

-- Carts table --------

create table carts(
	cart_id int primary key,
    user_id int,
    menu_id int,
    foreign key(menu_id) references menu_items(menu_id),
    foreign key(user_id) references users(user_id)
);