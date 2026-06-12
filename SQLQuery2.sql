use schooldb;
create table students (
studentId int primary key,
firstname varchar(50) Not null,
lastname varchar(50) not null,
age int check (age>3),
gender char(1) check (gender in ('M','F'))
);
insert into students values (1011,'Ramu','Patro',15,'M');
insert into students values (1012,'vamsi','bhavani',13,'M');
insert into students values (1013,'Behara' , 'Tarun', 16, 'M')

insert into students values (1014,'Gera', 'Rena', 19, 'F')

insert into students values (1015,'Nirmala','reddy',22,'F') ;

alter table students 
add classId int ;

select * from students;


alter table students
add E_Mails varchar(100);
update students set Student_Emails = 'ramupatro513@gmail.com' where studentId=1011;
exec sp_rename 'students.E_mails', 'Student_Emails', 'column' ;
insert into students values (1016,'Gedela','Divya',23,'F',105,'gedeladivya514@gmail.com');
alter table students
drop column Student_Emails;

create table Teachers (
TeacherId int primary key,
firstname varchar(50) Not null,
lastname varchar(50) not null,
subjectName varchar(60)
);

insert into Teachers values (11223,'Geetha','Bandharu','English');
insert into Teachers values (11224,'Gargi','Bandharu','Telugu');
insert into Teachers values (11225, 'ganapathi','bora','science');


create table classes(
classid int primary key,
classname varchar(50) not null,
TeacherId int,
foreign key (TeacherId) references Teachers(TeacherId)
);

insert into classes values (101,'Eng',11223);
insert into classes values (102,'Telugu',11224);
insert into classes values (103,'Science',11223);
insert into classes values (104,'social',null) ;

select*from Teachers;
select*from classes;

-- Changes in table_values
update students set age=13 where age=16;
update students set age=13 where age=19;
update students
set age=15
where studentId = 1014 ;


update students
set age = 13
where firstname = 'Gera' ;

-- we need particular values like
select*from students
where gender = 'M' ;

-- Delete Records from Table
delete from students
where gender = 'F' ;

delete from students
where studentId = 1012 ;

-- Displaying Particular Columns 
select firstname,age from students ;
select studentId,age from students ;
select*from students ;
select studentId,firstname,gender from students ;

select studentid, age, lastname from students
order by  studentId desc; 

select distinct  age from students ;

select * from students order by studentid desc;

select * from classes ;
select * from Teachers ;
select * from students ;

update students set classId=102 where lastname = 'bhavani' ;
update students set classId=103 where lastname = 'Tarun' ;
update students set classId=104 where lastname = 'Rena' ;


-- Innerjoin
select s.Firstname as Studentname , c.Classname
from Students s
inner join Classes  c on s.classid = c.classid ; 

select * from students ;
select * from classes ;
update students set classId = 104 where classId = 102 ;

update students set classId=104 where studentId=1015;
update classes set TeacherId =11225 where  classid=104 ;


select * from classes ;
select * from students ;
select * from Teachers ;

alter table students 
add  student_Email  nvarchar(299);
select * from students ;
alter table students 
alter column student_Email varchar(20) ;
alter table students
drop column student_Email ;
update students set student_Email = null
where studentId between 1011 and 1016 ;

select  distinct age from students ;

select count ( * ) from students ;
select min (age) as MinAge from students ;
select max (age) as MaxAge from students ;
select sum (age) as SumAge from students ;





select s.classId  , c.classid , c.classname , s.firstname
from students s 
inner join classes  c on s.classid = c.classid ;

select * from students ;
select * from classes ;
insert into classes values ( 105, 'Chemistry' , null ) 


select s.firstname as studentname , c.classname 
from students s 
inner join classes c on s.classid = c.classid ;

select * from students ;
select * from classes ;

-- left join
select s.firstname , c.classname
from students s
left join  classes c on s.classId = c. classid ;


insert into students values (1017,'kondala','neelaveni',24,'F',null)
-- Created by GitHub Copilot in SSMS - review carefully before executing

-- 1) INNER JOIN: only students assigned to a class
SELECT s.studentId, s.firstname, c.classid, c.classname
FROM dbo.students s
INNER JOIN dbo.classes c
  ON s.classId = c.classid;

-- 2) LEFT JOIN: all students, show class where available
SELECT s.studentId, s.firstname, c.classid, c.classname
FROM dbo.students s
LEFT JOIN dbo.classes c
  ON s.classId = c.classid;

-- 3) RIGHT JOIN: all classes, show students where available
SELECT c.classid, c.classname, s.studentId, s.firstname
FROM dbo.students s
RIGHT JOIN dbo.classes c
  ON s.classId = c.classid;

-- 4) FULL OUTER JOIN: students and classes, show all rows
SELECT s.studentId