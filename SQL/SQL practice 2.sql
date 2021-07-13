drop table student;

create table student (
	student_id integer,
    name varchar(55),
    admitted_at date,
    age integer,
    grade decimal(2,1),
    entry_date datetime,
    department varchar(55),
    amount_paid decimal(8,2)
);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (1, 'Emmanuel Ayomide', '2015-09-01', 27, 3.8, '2015-09-01 13:21:59', 'Biochemistry', 29200);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (2, 'Ibrahim Musa', '2017-09-01', 24, 4.0, '2017-09-01 11:13:51', 'Biochemistry', 31350);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (3, 'Sesan Obi', '2016-09-01', 24, 3.7, '2016-09-01 14:19:23', 'Sociology', 30000);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (4, 'Kevin Frank', '2015-09-01', 25, 4.0, '2015-09-01 10:11:34', 'Physics', 26410);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (5, 'Emeka Jude', '2014-09-01', 24, 3.8, '2014-09-01 15:12:21', 'Biochemistry', 29200);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (6, 'Caroline Obi', '2013-09-01', 27, 3.1, '2013-09-01 12:12:36', 'Electrical Engineering', 42360);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (7, 'Franklin Oladele', '2019-09-01', 18, 3.9, '2019-09-01 10:00:00', 'Sociology', 31350);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (8, 'Kola Ola', '2013-09-01', 28, 4.0, '2013-09-01 11:10:21', 'Electrical Engineering', 26000);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (9, 'Emmanuel Ovi', '2016-09-01', 23, 3.1, '2016-09-01 11:59:59', 'Statistics', 42360);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (10, 'Kareem Musa', '2016-09-01', 24, 3.3, '2016-09-01 10:11:21', 'Statistics', 26890);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (11, 'Mustapha Ahmed', '2016-09-01', 24, 3.9, '2016-09-01 15:11:20', 'Statistics', 27110);

insert into student (student_id, name, admitted_at, age, grade, entry_date, department, amount_paid)
value (12, 'Femi Akin', '2017-09-01', 24, null, '2017-09-01 09:11:32', 'Physics', 26410);

select count(*) from student;

select count(*) from student where amount_paid > 28000;

select count(name) from student where amount_paid > 28000;

select max(age) from student;

select max(age) from student where department = 'Biochemistry';

select min(age) from student;

select min(age) from student where department = 'Biochemistry';

select min(age) from student where department = 'Statistics';

select avg(amount_paid) from student;

select round(avg(amount_paid), 2) from student;

select round(avg(amount_paid), 2) from student where admitted_at = '2015-09-01';

select sum(amount_paid) from student; 

select sum(amount_paid) from student where department = 'Statistics'; 

select sum(amount_paid) from student where department = 'Physics';

select department from student group by(department);

select department, count(amount_paid) from student group by(department);

select department, sum(amount_paid) from student group by(department);

select department, admitted_at, sum(amount_paid) from student group by department, admitted_at;

select admitted_at, sum(amount_paid) from student group by admitted_at order by admitted_at;

select admitted_at, sum(amount_paid) from student group by admitted_at order by admitted_at desc;

select admitted_at, sum(amount_paid) from student group by admitted_at order by sum(amount_paid);

select admitted_at, sum(amount_paid) from student where admitted_at > '2014-09-01' 
group by admitted_at order by admitted_at;

select admitted_at, sum(amount_paid) from student where admitted_at > '2014-09-01' 
group by admitted_at order by sum(amount_paid) desc;

select date(entry_date), sum(amount_paid) from student where date(entry_date) > '2014-09-01' 
group by date(entry_date) order by sum(amount_paid) desc;

select department, count(amount_paid) from student group by department
having count(amount_paid) > 2;

select department, admitted_at, sum(amount_paid) from student group by department, admitted_at
having sum(amount_paid) > 60000;

select department, sum(amount_paid) from student where admitted_at > '2015-09-01'
group by department having sum(amount_paid) > 30000 order by sum(amount_paid) desc;

select min(age) from student where age > 23;
