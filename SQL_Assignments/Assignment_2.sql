use university;
-- Intermediate SQL: Aggregates and grouping and ordering
-- •	Find the number of instructors who have never taught any course. If the result of your query is empty, 
        /*add appropriate data (and include corresponding insert statements) to ensure the result is not empty*/
        select * from instructor;
        select * from teaches;
        select  name from instructor where ID not in (select ID from teaches );
        select * from instructor left join teaches on instructor.ID=teaches.ID where teaches.ID is null;
        
-- •	Find the total capacity of every building in the university.
        select * from department;
        select * from classroom;
        select building,sum(capacity) from classroom group by building;
        
/*•	Find the maximum number of teachers for any single course section.  Your output should be a single number.  
    For example if CS-101 section 1 in Spring 2012 had 3 instructors teaching the course, 
    and no other section had more instructors teaching the section, your answer would be 3.*/
    
    select * from teaches;
    select *from instructor;
    select * from course;
    select course_id,sec_id,count(distinct Name) from instructor inner join teaches group by Course_id,sec_id order by count(distinct Name) desc limit 1 ;
     select max(cnt) from (select course_id,sec_id,count(distinct Name)as cnt from instructor inner join teaches group by Course_id,sec_id) as t;
    
/*•Find all departments that have at least one instructor, 
    and list the names of the departments along with the number of instructors;   
    order the result in descending order of number of instructors. */
    
select * from instructor;
select dept_name,count(name) from instructor group by (dept_name) order by count(name) desc;

-- •	As in the previous question, but this time you should include departments even if they do not have any instructor, with the count as 0.
select * from department;
select d.dept_name,count(i.name) as cnt from department as d left join instructor as i on  i.dept_name=d.dept_name group by dept_name order by cnt desc;
select d.dept_name,i.name from department as d left join instructor as i on  i.dept_name=d.dept_name ;

/*•	For each student, compute the total credits they have successfully completed, i.e. total credits of courses they have taken, 
for which they have a non-null grade other than 'F'. Do NOT use the tot_creids attribute of student.*/
select* from course;
select* from student;
select * from takes;
select name,sum(credits) from student  inner join takes  on student.ID=takes.ID inner join course on course.course_id=takes.course_id where grade!='F' group by name ;

/*•Find the number of students who have been taught (at any time) by an instructor named 'Srinivasan'.
 Make sure you count a student only once even if the student has taken more than one course from Srinivasan.*/
 select * from student;
 select * from instructor;
 select * from Teaches;
 select * from takes;
 select count(distinct s.name) from student as s inner join instructor as i on s.dept_name=i.dept_name where i.name='Srinivasan';
 select count(distinct t1.ID) from instructor as i  inner join teaches as t on i.ID=t.ID inner join takes as t1 on t.course_id=t1.course_id where i.name='Srinivasan';
 
 
 
-- •	Find the name of all instructors who get the highest salary in their department.
select * from instructor;
select i.name,t.dept_name,t.maxsal from instructor as i inner join (select dept_name,max(salary)as maxsal from instructor group by dept_name) as t 
on i.dept_name=t.dept_name ;


/*•	Find all students who have taken all courses taken by instructor 'Srinivasan'. 
(This is the division operation of relational algebra.) You can implement it by counting the number of courses taught by Srinivasan,
 and for each student (i.e. group by student), find the number of courses taken by that student, 
which were taught by Srinivasan. Make sure to count each course ID only once.*/
select * from takes;
select * from student;
select * from instructor;
select * from teaches;
select s.name,i.name from student as s inner join takes as t on s.ID=t.ID inner join instructor as i on i.dept_name=s.dept_name where i.name='Srinivasan';

-- •	Find the total money spent by each department for salaries of instructors of that department.
select * from instructor;
select dept_name,sum(salary) from instructor  group by dept_name ;

-- •	Find the names of all students whose advisor has taught the maximum number of courses (multiple offerings of a course count as only 1).
-- (Note: this is a complex query, break it into parts by using the with clause.)
 
select * from advisor;
select * from student;
select * from instructor;
select * from course;
select * from takes;
select * from teaches;

select s.name from student as s inner join advisor as t on s.ID=t.s_ID ;
select * from advisor inner join (select ID from teaches group by ID order by count(course_id) desc limit 1) as t on advisor.i_id=t.ID;



        
        
       
     