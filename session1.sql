/*session 1*/
show databases;
drop database customer;
create database cust;
use cust;
create table cust_info(
id integer,
first_name varchar(25),
last_name varchar(25)
);
show tables;
select * from cust_info;
insert into cust_info(id,first_name,last_name) 
values(1,'ankita','biradar');
insert into cust_info(id,first_name,last_name) 
values(1,'sangam','biradar');
select * from cust_info;
drop table cust_info;