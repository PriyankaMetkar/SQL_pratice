-- •	Find the id and title of all courses which do not require any  prerequisites
select * from course;
select * from prereq;
SELECT course.course_id,title FROM course LEFT JOIN prereq on course.course_id = prereq.course_id WHERE prereq_id is NULL;
select c.course_id,c.title  from course as c where c.course_id not in (select course_id from prereq);

-- •	Find the names of students who have not taken any biology dept courses
select * from student;
select * from takes;
select * from course;
select name from student inner join takes on student.ID=takes.ID where course_id not in (select Course_id from course where dept_name='Biology');
select name from student where dept_name !='Biology';

-- Write SQL update queries to perform the following (queries 2 and 4 are pretty meangless, but still fun to write):
-- 1.	Give a 10% hike to all instructors.
select * from instructor;

select salary*0.10+salary as '10% hike' from instructor;
update instructor set salary=salary*0.10+salary;

-- 2.	Increase the tot_creds of all students who have taken the course titled "Genetics"  by     the number of credits associated with that course.
select * from course;
select * from student;
select * from takes;

select tot_cred +credits from student inner join takes on student.ID=takes.ID inner join course on course.course_id=takes.course_id where title='Genetics';


-- 3.	For all instructors who are advisors of atleast 2 students, increase their salary by 50000.
select * from advisor;
select * from instructor;
select * from student;

update instructor set salary=salary+50000 where ID in ( select i_ID from advisor group by i_ID having count(S_ID)>=2);

-- 4.	Set the  credits to 2 for all courses which have less than 5 students taking them (across all sections for the course, across all years/semesters).
select * from course;
select * from student;
select * from section;
select * from takes;
update course set credits=2 where course_id in (select course_id from takes group by course_id having count(ID)<5) ;





