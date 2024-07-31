use university;
-- •	Find the names of all the students whose total credits are greater than 100 .
select * from student;
select name from student where tot_cred>100;

-- •	Find the course id and grades of all courses taken by any student named 'Tanaka'.
select * from takes;
select course_id,grade from takes inner join student on takes.ID=student.ID where name ='Tanaka';

-- •   Find the ID and name of instructors who have taught a course in the Comp. Sci. department, 
       /*even if they are themselves not from the Comp. Sci. department. To test this query, 
       make sure you add appropriate data, and include the corresponding insert statements along with your query.*/
       select * from instructor;
       select ID,name,dept_name from instructor where dept_name='Comp. Sci.';
       
-- •	Find the courses which are offered in both 'Fall' and 'Spring' semester (not necessarily in the same year).
       select * from course;
       select * from section;
       select title from course inner join section on course.course_id=section.course_id where semester='Fall' 
       intersect
       select title from course inner join section on course.course_id=section.course_id where semester='spring';
       
	-- •	Find the names of all the instructors from Comp. Sci. department
    select * from instructor;
    select * from teaches;
    select name from instructor where dept_name='Comp. Sci.';
    
-- •	Find the course id and titles of all courses taught by an instructor named 'Srinivasan'
select * from course;
select * from teaches;
select * from instructor;

select c.course_id,c.title from course as c inner join teaches  as t on c.course_id=t.course_id inner join instructor as i on i.ID=t.ID where name='Srinivasan';
    
-- •	Find names of instructors who have taught at least one course in Spring 2009
select * from course;
select * from teaches;
select * from instructor;
select name from instructor inner join teaches on instructor.ID=teaches.ID where year =2009 and semester='Spring';


     
       