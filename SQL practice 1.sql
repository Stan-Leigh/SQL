select * from students where admitted_at > '2017-09-01';

select * from students where admitted_at >= '2017-09-01';

select * from students where admitted_at > '2017-08-30';

select * from students where admitted_at >= '2015-01-01' and admitted_at <= '2019-10-30';

select * from students where admitted_at between '2015-01-01' and '2019-10-30';

create table student (
	student_id integer,
    name varchar(55),
    admitted_at date,
    age integer,
    grade decimal(2,1),
    entry_date datetime
);

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (1, 'Emmanuel Ayomide', '2015-09-01', 27, 3.8, '2015-09-01 13:21:59');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (2, 'Ibrahim Musa', '2017-09-01', 24, 4.0, '2017-09-01 11:13:51');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (3, 'Sesan Obi', '2016-09-01', 24, 3.7, '2016-09-01 14:19:23');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (4, 'Kevin Frank', '2015-09-01', 25, 4.0, '2015-09-01 10:11:34');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (5, 'Emeka Jude', '2014-09-01', 24, 3.8, '2014-09-01 15:12:21');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (6, 'Caroline Obi', '2013-09-01', 27, 3.1, '2013-09-01 12:12:36');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (7, 'Franklin Oladele', '2019-09-01', 18, 3.9, '2019-09-01 10:00:00');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (8, 'Kola Ola', '2013-09-01', 28, 4.0, '2013-09-01 11:10:21');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (9, 'Emmanuel Ovi', '2016-09-01', 23, 3.1, '2016-09-01 11:59:59');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (10, 'Kareem Musa', '2016-09-01', 24, 3.3, '2016-09-01 10:11:21');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (11, 'Mustapha Ahmed', '2016-09-01', 24, 3.9, '2016-09-01 15:11:20');

insert into student (student_id, name, admitted_at, age, grade, entry_date)
value (12, 'Femi Akin', '2017-09-01', 24, null, '2017-09-01 09:11:32');

select * from student where entry_date > '2017-09-01 00:00:00';

select * from student where entry_date between '2015-01-01 00:00:00' and '2019-10-30 23:59:59';

select * from student where entry_date between '2015-01-01 00:00:00' and now();

select curdate();

select now();

create table demo(
	id integer,
    date_value datetime
);

insert into demo (id, date_value)
values (1, now());

select * from demo;

select date(date_value) from demo; 

select time(date_value) from demo; 

select year(date_value) from demo; 

select month(date_value) from demo; 

select day(date_value) from demo; 

select weekday(date_value) from demo; 

select extract(minute from date_value) from demo; 

select extract(day from date_value) from demo;

select extract(month from date_value) from demo;