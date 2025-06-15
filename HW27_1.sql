create database HW27;

use HW27;

create table CarBrands (
id int auto_increment primary key,
title varchar (255)
);

create table CarModels (
id int auto_increment primary key,
title varchar (255),
carBrandId int,
foreign key (carBrandId) references CarBrands(id)
);

create table Users (
id int auto_increment primary key,
firstName varchar(100), 
lastName varchar(100), 
email varchar(100), 
password varchar(100)
);

create table Cars (
id int auto_increment primary key, 
userId int, 
carBrandId int, 
carModelId int, 
mileage int, 
initialMilleage int,
foreign key (userId) references Users(id),
foreign key (carBrandId) references CarBrands(id),
foreign key (carModelId) references CarModels(id)
);

insert into Users (firstName, lastName, email, password)
values ("John", "Dough", "johndough@email.com", "12345");
select * from Users;

insert into CarBrands (title)
values ("BMW"),
 ("Ford");
 select * from CarBrands;
 
 insert into CarModels (title, carBrandId)
 values ("X5", 1),
 ("X3", 1),
 ("Focus", 2),
 ("Fiesta", 2);
 select * from CarModels;
 
 insert into Cars (userId, carBrandId, carModelId, mileage, initialMilleage)
 values (1, 1, 1, 150, 100);
 select * from Cars;
