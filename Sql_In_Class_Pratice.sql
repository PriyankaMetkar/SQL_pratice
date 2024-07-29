-- CREATE DATABASE fusiondb;
-- CREATE DATABASE testdb;
use testdb;
CREATE TABLE My_emp(
first_name varchar(255),
last_name varchar(255),
city varchar(50),
age tinyint);

CREATE TABLE persons(
personID int,
first_name varchar(255),
last_name varchar(255),
Adress varchar(255),
city varchar(255));

select* from persons;
ALTER TABLE persons ADD salary int;
ALTER TABLE persons ADD Roll_NO int first;
select * from persons;
ALTER TABLE My_emp MODIFY age smallint;
ALTER TABLE persons ADD column DataOfBirth DATE;
ALTER TABLE persons RENAME column DataOfBirth to  DOB;


select * from persons;
 CREATE TABLE Employee(
 empId int,
 empName varchar(255),
 empsal Decimal(10.2));
 
 select * from employee;
 
 INSERT INTO  employee VALUES (1,'Javed',4567856.98);
 -- select * from employee
 RENAME TABLE employee to employee_1;
  RENAME TABLE employee_1 to employee;
 CREATE TABLE employees(
ename varchar(255),
esal Decimal(10.2),
edd varchar(255));


INSERT into employees values 
('xyz',345.98,'pune'),
('abc',123.98,'pune'),
('pqr',3423.98,'pune');

delete from employees where ename='xyz';

select * from employees;
select * from employee;

select count(empsal) from employee;
select count(*) from employee;

insert into Employee values 
(106,null,12456),
(107,'',5698),
(108,null,2356);

select * from employee;

select count(*) from employees;
select sum(esal) from employees;
select avg(esal) from employees;
select max(esal) from employees;
select min(esal) from employees;
select * from employees;

CREATE TABLE Student (
    StudentID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
insert into student values(101,'Sharma','Rohith','Maharashtra','Nagpur'),
(102,'Kohli','Virat','Delhi','Pune'),
(103,'Jadeja','Ravindra','Haryana','Delhi'),
(104,'Bumrah','Jasprit','Punjab','Chandigarh');

select * from student;
select * from student where studentID=101;
select concat(firstname,lastname) as fullname from student;

select concat('Ravi','Shastri');
select concat_ws(' ',firstname,lastname) as fullname from student;
select firstname,length(firstname) from student;
select firstname,upper(firstname) from student;
select firstname,lower(firstname) from student;
select replace('I love java','java','Python') as col;
select replace('$100','$','');
select firstname,reverse(firstname) from student;
select substring('09-May-2024',1,9);
select firstname,left(firstname,4) from student;
select firstname,right(firstname,4) from student;
select current_date(),current_time(),current_timestamp();
select date(current_timestamp());
select year(current_timestamp());
select month(current_timestamp());
select week(current_timestamp());
select dayname(current_timestamp());
select week('2024-01-07')+1;
select week('2024-01-06')+1;
select dayname (current_timestamp());
select extract(day from current_timestamp);
select extract(month from current_timestamp);
select extract(year from current_timestamp);
select datediff('2024-07-07','2024-07-05');
select datediff('2024-06-01','2023-05-01');
select current_time();
select timediff(current_time(),'20:00:00');
select timediff('20:30:00','18:00:00');
use testdb;
create table department
(
dept_id smallint,
dept_name varchar(25)
);
show tables;
select * from department;
insert into department values (1010,'HR'),(1010,'HR'),
(1012,'Finance'),(1012,'Finance'),(1010,'HR'),
(1014,'Marketing');
select distinct dept_id,dept_name from department;
select 10+20;
 
select 10+20;
select 10-20;
select 10*20;
select 10/20;
select 10%2;
select 10=20; -- 0 False
select 10!=20; -- 1 True
select 10<>20; -- 1 True
select 10>20;
select 10>=20;
select 10<20;
select 10<=20;

select * from employee;
select min(eSal),max(esal),avg(esal) from employees;

select min(eSal),max(esal),avg(esal) from employees;
select * from employees
where esal>200;

select * from employees
where esal>(select avg(esal) from employees);


select * from employees
where esal<50781;

select * from employees
where esal>25000;

select * from employees
where esal<25000;

select 10 and 20;
select 0 and 20;
select 10 and 0;
select 1 and 1;
select 0 and 0;
select -10 and -20;

select * from employees
where esal>20000 and esal<50000;


select True or True;
select True or False;
select False or True;
select False or False;

select 10 or 20;-- 1 
select 0 or 20;-- 1
select 10 or 0;-- 1
select 1 or 1;-- 1
select 0 or 0;-- 0
select -10 or -20; -- 1

select * from employees
where esal>2000 or esal<50000;

select not 10;
select not not not 10;

select * from employees
where not edd='pune';

select * from employees
where edd is not null;

select * from employees
where edd is  null;

select * from employees
where  empid!=106;

select * from employees
where esal between 200 and 30000;













