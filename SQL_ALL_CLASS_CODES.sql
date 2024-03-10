show databases;

create database saturday_db;
use saturday_db;

create table data(name varchar(20), city varchar(20), salary int);
show tables;

insert into data values('Ravi','Delhi',35000),
('Suman','Pune',38000),
('Sheetal','Delhi',32000),
('Aman','Bangalore', 45000);

select * from data;
select salary from data;
select name from data where city='Delhi';
select * from data where city='Delhi';

create database xyz_db;

create table employee_info(id int, name varchar(20), salary int);

insert into employee_info values(1,'Adam',25000),
(2,'Bob',30000),
(3,'Rahul',40000);

select * from employee_info;

use saturday_db;

create table my_data(id int, name varchar(20), age int, city varchar(20), primary key(id));

insert into my_data values(100, 'Sunil',32,'Delhi'),
(101,'Sneha',39,'Pushkar'),
(102,'Priya',32,'Gurgaon');

select * from my_data;
select name, city from my_data where id=102;
select age from my_data where id=101;

select * from data;
select name, salary from data where salary>=35000;
select name, salary from data where city='Delhi' and salary>=35000;

select distinct city from data;
select * from data where salary>30000 and city='Delhi';
select * from data where salary>30000 or city='Delhi';

select * from data where salary between 30000 and 40000;
select * from data where city in ("Pune","Bangalore");
select * from data where city not in ("Delhi");

select * from data order by salary asc;
select * from data order by salary desc;

select * from data order by salary desc limit 2;

select max(salary) from data;
select min(salary) from data;
select avg(salary) from data;
select sum(salary) from data;
select count(name) from data;

select city from data group by city;
select city, count(name) from data group by city;
select city, count(name) from data group by city order by count(name);
select city, count(name) from data group by city order by count(name) desc;

create table student(rollno int, name varchar(20), marks int, grade varchar(1), city varchar(20), primary key(rollno));

insert into student values
(1,'Alok',80, 'B', 'Pune'),
(2, 'Bhaskar', 75, 'C','Delhi'),
(3, 'Chirag',92,'A','Kanpur'),
(4,'Deepak',83,'B','Hyderabad'),
(5,'Priya',90,'A','Delhi');

select * from student;
select avg(marks) from student;
select max(marks) from student;
select distinct city from student;
select min(marks) from student;

select grade from student group by grade order by grade;
select grade,count(rollno) from student group by grade order by grade;
select marks, count(rollno) from student group by marks having max(marks)>80;

select * from student;

update student set marks=98 where rollno=3;
update student set name='Shraddha' where rollno=5;

set sql_safe_updates=0;
delete from student where marks<80;

alter table student add column age int;
select * from student;

update student set age=18 where rollno=1;
update student set age=18 where rollno=3;
update student set age=19 where rollno=4;
update student set age=20 where rollno=5;

alter table student add column demo int;
alter table student drop column demo;

alter table student change city location varchar(20);

alter table student rename to student_data;
select * from student_data;

alter table student_data  change name full_name varchar(20);

delete from student_data where marks<90;

alter table student_data drop column location;

create table student_info(roll_no int, name varchar(20));

insert into student_info values (1,'Ashish'),
(2,'Kunal'),
(3,'Kashish'),
(4,'Sapna');

select * from student_info;
create table course(roll_no int, course_name varchar(20));
insert into course values (5,'Python'),
(2,'Statistics'),
(3,'Science'),
(4,'Tableau');

select * from course;

select student_info.roll_no, course.roll_no from student_info inner join course on student_info.roll_no=course.roll_no;

select student_info.*, course.roll_no from student_info left join course on student_info.roll_no=course.roll_no;

select course.*,student_info.roll_no from student_info right join course on student_info.roll_no=course.roll_no;

show tables;
select * from my_data;

#Ques: Find names and corresonding age of all students who have age as even number;
select name,age from my_data where age%2=0;
select name, age from my_data where age in (select age from my_data where age%2=0 and age>20);

create view view1 as select name, salary from data;

drop view view1;









