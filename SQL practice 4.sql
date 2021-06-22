select * from student;

update student 
set grade = 3.0
where student_id = 12;

update student
set age = 25, grade = 3.9
where name = 'Sesan Obi';

update student
set grade = grade + 0.2
where grade = 3.1;

alter table project
add name varchar(55);

update project
inner join student
on project.student_id = student.student_id
set project.name = student.name;

insert into project (id, student_id, title, name)
values (11, 17, 'Fluid Analysis', 'Samuel Ajayi');

delete from project
where student_id = 17;

select * from project;

delete project
from project
left join student
on student.student_id = project.student_id
where student.student_id is null;