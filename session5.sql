/* session 5 */
use cust;
show tables;
create table person(
id int not null auto_increment,
fn varchar(24) not null,
ln varchar(25) not null,
city varchar(23) not null,
age int not null,
salary int not null,
primary key (id)
);
select * from person;
drop table person;
insert into person(fn,ln,city,age,salary) values
('Ankita','Biradar','pune',23,500000),
('sangam','Biradar','benglore',27,1200000),
('Ankita','Biradar','udgir',57,6000000);

create index index_city_name on person(city);
desc person;
show tables;
drop table student;
create table student(
id int not null ,
fn varchar(24),
ln varchar(25) ,
age int
);
desc student;
create index index_age on student(age);
desc student;
create index index_age_fn on student(age,fn);
desc student;

alter table student drop index index_age_fn;
