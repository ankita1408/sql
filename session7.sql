/* session 7 */
## Joins
use cust;
show tables;
select * from student;
select * from department;
insert into student value(4,'ankita','b','pune',27);
 ## inner join
 select student.fn,student.ln,student.age,department.department_name 
 from student inner join department 
 on student.student_id= department.student_id;
 
select * from student inner join department
 on student.student_id= department.student_id;
 
 
 ## left join
 select student.fn,student.ln,student.age,department.department_name 
 from student left join department
 on student.student_id= department.student_id;
 
 ## right join
  select student.fn,student.ln,student.age,department.department_name 
 from student right join department
 on student.student_id= department.student_id;
 
 ## full outer join
 select student.fn,student.ln,student.age,department.department_name 
 from student left join department
 on student.student_id= department.student_id 
 union 
 select student.fn,student.ln,student.age,department.department_name 
 from student right join department
 on student.student_id= department.student_id;
 
 ## cross join
 select student.fn,student.ln,student.age,department.department_name 
 from student cross join department;
 ## it will show all possible cobination 
 

 
 ##natural join
  select student.fn,student.ln,student.age,department.department_name 
 from student natural join department;
 select *
 from student natural join department;