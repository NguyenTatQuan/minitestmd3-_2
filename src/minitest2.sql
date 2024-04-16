create database minitest2;
use minitest2;
create table address
(
    id      int primary key,
    address varchar(255)
);
create table Class
(
    id          int primary key,
    name        varchar(255),
    language    varchar(255),
    description varchar(255)
);

create table course
(
    id          int primary key,
    name        varchar(255),
    description varchar(255)
);
create table student
(
    id         int primary key,
    fullname   varchar(255),
    address_id int,
    age        int,
    phone      varchar(255) unique,
    class_id   int,
    foreign key (address_id) references address (id),
    foreign key (class_id) references Class (id)
);
create table point
(
    id         int primary key,
    course_id  int,
    student_id int,
    point      int,
    foreign key (course_id) references course (id),
    foreign key (student_id) references student (id)
);
select *
from address;
select *
from Class;
select *
from course;
select *
from student;
select *
from point;

insert into address(id, address)
VALUES (1, 'Ha Noi'),
       (2, 'Bac Ninh'),
       (3, 'Bac Giang'),
       (4, 'Dong Anh'),
       (5, 'Quang Ninh');
insert into class(id, name, language, description)
VALUES (1,'Quan','Tieng Viet','Dep trai'),
       (2,'Khoa','Tieng Anh','Xinh gai'),
       (3,'Hieu','Tieng Phap','Dep trai'),
       (4,'Thao','Tieng Anh','Xinh gai'),
       (5,'Duy','Tieng Viet','Dep trai');
insert into student(id, fullname, address_id, age, phone, class_id)
values (1,'Nguyen Tat Quan',1,23,'0999999999',1),
       (2,'Trinh Luu khoa',2,21,'0888888888',2),
       (3,'Duong minh Hieu',3,18,'0777777777',3),
       (4,'Phan Thanh Thao',4,16,'0666666666',4),
       (5,'Tran Ngoc Duy',5,15,'0555555555',5),
       (6,'Nguyen Van Aanh',1,20,'0444444444',1),
       (7,'Nguyen Van B',2,19,'0333333333',2),
       (8,'Nguyen Van C',3,21,'0222222222',3),
       (9,'Nguyen Tat Anh',4,22,'0111111111',4),
       (12,'Nguyen Tat E',5,23,'0123456789',5);


insert into course(id, name, description)
VALUES (1,'Java1','ngon ngu lap trinh 1'),
       (2,'Java2','ngon ngu lap trinh 2'),
       (3,'Java3','ngon ngu lap trinh 3'),
       (4,'Java4','ngon ngu lap trinh 4'),
       (5,'Java5','ngon ngu lap trinh 5'),
       (6,'Java6','ngon ngu lap trinh 6'),
       (7,'Java7','ngon ngu lap trinh 7'),
       (8,'Java8','ngon ngu lap trinh 8'),
       (9,'Java9','ngon ngu lap trinh 9'),
       (10,'Java10','ngon ngu lap trinh 10'),
       (11,'Java11','ngon ngu lap trinh 11'),
       (12,'Java12','ngon ngu lap trinh 12'),
       (13,'Java13','ngon ngu lap trinh 13'),
       (14,'Java14','ngon ngu lap trinh 14'),
       (15,'Java15','ngon ngu lap trinh 15'),
       (16,'Java16','ngon ngu lap trinh 16'),
       (17,'Java17','ngon ngu lap trinh 17'),
       (18,'Java18','ngon ngu lap trinh 18'),
       (19,'Java19','ngon ngu lap trinh 19'),
       (20,'Java20','ngon ngu lap trinh 20');


insert into point(id, course_id, student_id, point)
VALUES (1,10,1,90),
       (2,20,2,81),
       (3,3,3,72),
       (4,4,4,63),
       (5,5,5,54),
       (6,16,6,45),
       (7,17,7,36),
       (8,8,8,27),
       (9,9,9,18),
       (10,10,12,17),
       (11,11,1,27),
       (12,12,2,37),
       (13,13,3,47),
       (14,14,4,57),
       (15,15,5,67);

select S.*, C.name as class_name, A.address
from Student S
         join class C on S.class_id = C.id
         join Address A on S.address_id = A.id
where S.fullname LIKE 'Nguyen%';


select S.*, C.name as class_name, A.address
from Student S
         join class C on S.class_id = C.id
         join Address A on S.address_id = A.id
where S.fullname LIKE '% Anh';


select S.*, C.name as class_name, A.address
from Student S
         join class C on S.class_id = C.id
         join Address A on S.address_id = A.id

WHERE age > 18 AND age < 25;


select S.*, C.name AS class_name, A.address
from Student S
         join class C on S.class_id = C.id
         join Address A on S.address_id = A.id
where S.id = 12 or S.id = 13;




SELECT class_id, COUNT(*) AS total_students
FROM student
GROUP BY class_id;

SELECT a.address, COUNT(*) AS total_students
FROM student s
         JOIN address a ON s.address_id = a.id
GROUP BY a.address;


select avg(point) as AVGScore from point;

select max(point) as MaxScore from point;

select min(point) as LowScore from point;

select *,ucase(fullname) as UScore from student;











