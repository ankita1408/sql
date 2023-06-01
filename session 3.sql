/* session -3 */ 
## sql constraints 
use  cust;
drop table student;
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);
desc student;

alter table student modify age int not null;
create table person(
id int not null ,
first_name varchar(25) not null,
last_name varchar(25) not null,
unique(id)
);
desc person;
insert into person values(1,'ankita','biradar');
insert into person values(2,'ankitaa','biradar');
select * from person;
alter table person add unique(first_name);
alter table person add age int;
desc person;
alter table person add constraint uc_primary  unique(last_name,age);
alter table person drop index uc_primary;
desc person;

-- primary key
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) ,
age int,
constraint pk_person primary key(id,last_name)
);
desc person1;
alter table person1 drop primary key;
desc person1;
alter table person1 add primary key(id);