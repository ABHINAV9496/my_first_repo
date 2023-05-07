create database user_db;
use user_db;
create table user(id int primary key,name varchar(30),email varchar(30),age int);
insert into user values
(1,'abhi','abhinavramesh74@gmail.com',20),
(2,'arun','arun@gmail.com',22),
(3,'aswin','aswin@gmail.com',24),
(4,'anandhu','anandhu7@gmail.com',27),
(5,'akshay','akshay@gmail.com',30),
(6,'amith','amith23@gmail.com',21);

select * from user;

delimiter $$
create procedure get_user_age(IN user_age INT)
BEGIN
select * from user where age=user_age;
end $$
delimiter ;

call get_user_age(22);

delimiter $$
create procedure add_user(IN user_id int,IN user_name varchar(30),IN user_email varchar(30),IN user_age INT)
begin
insert into user(id,name,email,age) values(user_id,user_name,user_email,user_age);
end $$
delimiter ;

call add_user(1,'abhi','abhinavramesh74@gmail.com',20);
select * from user;

