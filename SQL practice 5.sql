select name, age from student
where age > (select avg(age) from student);

select name, grade from student
where grade < (select avg(grade) from student);

select count(department) as count from student 
group by department;

select avg(count), max(count), min(count) 
from (select count(department) as count from student group by department) as names;

select student_id, name from student 
where name not in (select name from project);