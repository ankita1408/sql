/* session4*/

use cust;
create table person2(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
age int,
primary key(id)
);
select * from person2;
desc person2;
drop table person2;
create table person2(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
age int,
constraint pk_person primary key(id,last_name)
);
desc person2;
drop table person2;
create table person2(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
age int
);
alter table person2  add primary key(id);
desc person2;
alter table person2  drop primary key;
alter table person2  add constraint pk primary key(id,age);
desc person2;
alter table person2  drop  primary key ;
drop table person2;
use cust;
create table person2(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
age int,
salary int, primary key(id)
);
 desc person2;
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id),
constraint fk_department foreign key(id) references person2(id) 
);
desc department;
drop table department;
create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id)
);
alter table department add foreign key (id) references person2(id);
desc department;
create table person3(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
age int,
salary int,
primary key(id),
check (salary<50000)
);
desc person3;
insert into person3 values(1,'ankita','biradar',70,40000);
select * from person3;
drop table person3;
create table person3(
id int not null,
first_name varchar(25)not null,
last_name varchar(25)not null,
city_name varchar(25) default 'pune');
desc person3;
alter table person3 alter city_name drop default;
