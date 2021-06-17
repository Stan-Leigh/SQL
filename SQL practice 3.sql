select admitted_at as date from student;

select s.name from student as s;

select s.name, s.grade from student as s;

select department, count(*) as number 
from student group by department;

create table project (
	id integer,
    student_id integer,
    title varchar(60)
);

insert into project (id, student_id, title)
values (1, 2, 'Bioinformatics');

insert into project (id, student_id, title)
values (2, 1, 'Cell Biology');

insert into project (id, student_id, title)
values (3, 4, 'Fluid Mechanics');

insert into project (id, student_id, title)
values (4, 6, 'Magnetism');

insert into project (id, student_id, title)
values (5, 8, 'Electronics');

insert into project (id, student_id, title)
values (6, 7, 'Mass Media');

insert into project (id, student_id, title)
values (7, 5, 'Genetics');

insert into project (id, student_id, title)
values (8, 3, 'Youth Cultures');

insert into project (id, student_id, title)
values (9, 15, 'Class conflict');

insert into project (id, student_id, title)
values (10, 16, 'Instrumentation');

select * from student inner join project
on student.student_id = project.student_id;

select student.student_id, name, title, department
from student inner join project
on student.student_id = project.student_id;

select student.student_id, name, title, department 
from student left join project 
on student.student_id = project.student_id;

select student.student_id, name, title, department, project.student_id
from student left join project 
on student.student_id = project.student_id
where project.student_id is null;

select student.student_id, name, title, department 
from project left join student
on project.student_id = student.student_id
where student.student_id is null;

select student.student_id, name, department, title
from project right join student
on student.student_id = project.student_id;

select student.student_id, name, department, title
from project right join student
on student.student_id = project.student_id
where project.student_id is null;

select student.student_id, name, title, department 
from student right join project 
on student.student_id = project.student_id
where student.student_id is null;