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

create table details (
	id integer,
    name varchar(55)
);

insert into details (id, name)
values (1, 'Obi Frank');

insert into details (id, name)
values (2, 'Tosin Emmanuel');

truncate table details;

insert into details (id, name)
values (2, 'Obi Frank');

insert into details (id, name)
values (1, 'Tosin Emmanuel');

delete from details;

drop table details;

create table profile (
	id integer not null,
    name varchar(55) not null,
    age integer default 18
);

insert into profile (id, name)
values (1, 'Obi Emeka');

drop table profile;

create table profile (
	id integer,
    name varchar(55) unique
);

insert into profile (id, name)
values (1, 'Obi Emeka');

insert into profile (id, name)
values (2, 'Obi Emeka');

create table stud (
	student_id integer,
    name varchar(55),
    age integer,
    primary key (student_id)
);

create table proj (
	project_id integer,
    title varchar (60),
    student_id integer not null,
    primary key(project_id),
    foreign key(student_id) references stud (student_id)
);

alter table proj
drop foreign key proj_ibfk_1;

alter table proj
add constraint Fk_student
foreign key (student_id) references stud (student_id);

drop table proj;
drop table stud;

create table stud(
	student_id integer not null,
    name varchar(55) not null,
    age integer,
    amount decimal(8, 2),
    constraint ck_student check (age >= 18 and amount > 1000.00)
);

insert into stud (student_id, name, age, amount)
values (1, 'Obi Frank', 18, 1100.00)
