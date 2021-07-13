create table students (
	student_id integer,
    name varchar(55),
    admitted_at date,
    age integer,
    grade decimal(2,1)
);

insert into students (student_id, name, admitted_at, age, grade)
value (1, 'Emmanuel Ayomide', '2015-09-01', 27, 3.8);

insert into students (student_id, name, admitted_at, age, grade)
value (2, 'Ibrahim Musa', '2017-09-01', 24, 4.0);

insert into students (student_id, name, admitted_at, age, grade)
value (3, 'Sesan Obi', '2016-09-01', 24, 3.7);

insert into students (student_id, name, admitted_at, age, grade)
value (4, 'Kevin Frank', '2015-09-01', 25, 4.0);

insert into students (student_id, name, admitted_at, age, grade)
value (5, 'Emeka Jude', '2014-09-01', 24, 3.8);

insert into students (student_id, name, admitted_at, age, grade)
value (6, 'Caroline Obi', '2013-09-01', 27, 3.1);

insert into students (student_id, name, admitted_at, age, grade)
value (7, 'Franklin Oladele', '2019-09-01', 18, 3.9);

insert into students (student_id, name, admitted_at, age, grade)
value (8, 'Kola Ola', '2013-09-01', 28, 4.0);

insert into students (student_id, name, admitted_at, age, grade)
value (9, 'Emmanuel Ovi', '2016-09-01', 23, 3.1);

insert into students (student_id, name, admitted_at, age, grade)
value (10, 'Kareem Musa', '2016-09-01', 24, 3.3);

insert into students (student_id, name, admitted_at, age, grade)
value (11, 'Mustapha Ahmed', '2016-09-01', 24, 3.9);

insert into students (student_id, name, admitted_at, age, grade)
value (12, 'Femi Akin', '2017-09-01', 24, null);

select * from students;

select name, grade from students;

select distinct * from students;

select distinct age from students;

select * from students limit 5;

select * from students limit 20;

select * from students order by student_id desc;

select * from students order by age asc, student_id desc;

select * from students where age > 24;

select * from students where grade >= 3.1;

select * from students where name = 'Emmanuel Ayomide';

select * from students where name like '%M%';

select * from students where name like '%Musa';

select * from students where name like 'K%';

select * from students where age like '2_';

select * from students where name like '%O_i';

select * from students where admitted_at > '2015-09-01' and grade > 3.1;

select * from students where age > 20 and grade < 3.9;

select * from students where name like 'M%' or grade > 3.1;

select * from students where age > 20 or grade < 3.1 or admitted_at > '2017-09-01';

select * from students where not grade >= 3.8;

select * from students where not grade >= 3.8 and not age >= 25;

select * from students where not (grade >= 3.8 or age >= 25);

select * from students where age in (23, 24, 27);

select * from students where admitted_at in ('2015-09-01', '2017-09-01');

select * from students where age not in (18);

select * from students where admitted_at not in ('2015-09-01', '2017-09-01');

select * from students where age between 24 and 27;

select * from students where admitted_at between '2015-09-01' and '2017-09-01';

select * from students where age not between 24 and 27;

select * from students where admitted_at not between '2015-09-01' and '2017-09-01';

select * from students where admitted_at between '2015-09-01' and '2017-09-01'
and age in (23, 24);

select * from students where admitted_at between '2015-09-01' and '2017-09-01'
and age not in (23, 24);

select * from students where age is null;

select * from students where grade is null;

select * from students where age is not null;

select * from students where grade is not null;

select *,
case
	when age >= 26 then 'Upper Age class'
	when age between 23 and 25 then 'Middle Age class'
	else 'Lower Age class'
end as 'Age Label'
from students;

select *,
case grade
	when 4.0 then 'Best Student'
    else 'normal'
end as 'Award'
from students;
