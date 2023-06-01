/* session 6 */
## view
use cust;
show tables;
drop table student;
create table student(
student_id int auto_increment,
fn varchar(24) not null,
ln varchar(25) not null,
city varchar(23) not null,
age int not null,
primary key (student_id)
);
insert into student(fn,ln,city,age) values
('Ankita','Biradar','pune',23),
('sangam','Biradar','benglore',27),
('Ankita','Biradar','udgir',57);
select * from student;
select * from department;
drop table department;
create table department(
student_id int auto_increment,
department_name varchar(25) not null,
foreign key(student_id)references student(student_id)
);
desc department;
insert into department value (1,'computer'),(2,'civil'),(3,'mechanical');
create view srtudent_info as select fn,ln from student inner join  department using(student_id);
SELECT * FROM srtudent_info;

