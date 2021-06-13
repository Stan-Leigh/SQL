create table Students (
	Student_ID integer,
    Name varchar(55),
    Year integer
);

describe Students;

insert into Students (Student_ID, Name, Year)
values (1, 'Emmanuel Ayomide', 3);

insert into Students (Student_ID, Name, Year)
values (2, 'Ibrahimm Musa', 2);

insert into Students (Student_ID, Name, Year)
values (3, 'Emeka Frank', 4);

alter table students
add (age integer,
	 grade integer,
     addmitted_at date);
     
SELECT * FROM university.students;

alter table students
drop column year;

SELECT * FROM university.students;

alter table students
modify grade decimal(2, 1);
