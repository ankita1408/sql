/* Session2*/
use cust;
# create cust_info table;
create table cust_info(
id int auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key(id)
);
desc cust_info;

## instert records into table
insert into cust_info(first_name,last_name,salary) 
values
('ankita','biradar',10000),
('mangla','biradar',60000),
('sangam','biradar',230000),
('madhukar','biradar',60000),
('adhukar','biradar',null);
select * from cust_info where salary is null;


## sql update statement to replace null value 
update cust_info set salary = 70000 where id=5;
select * from cust_info;
  
## sql delete statement
delete from cust_info where id=5;
select * from cust_info;

## sql alter table
## add column in existing table
alter table cust_info add email varchar(25);
select * from cust_info;
alter table cust_info add dob date;
select * from cust_info;
desc cust_info;

## alter table to drop column 
alter table cust_info drop dob;
select * from cust_info;



