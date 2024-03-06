create database school;

create table Student_Details(Student_id int primary key  not null,
Student_name varchar(100) not null,
Age int not null,
Place varchar(100));

select * from Student_Details
delete from Student_Details where Student_id=1;

insert into Student_Details(Student_id,Student_name,Age,Place)
values (1,'Akhil',15,'palakkad'),
(2,'Sravan',17,'Pathanamthitta'),
(3,'Manju',21,'Ernakulam'),
(4,'Praveen',18,'Calicut'),
(5,'Gokul',23,'Thrissur'),
(6,'Farhan',28,'Thirur'),
(7,'Aneesh',27,'Malappuram'),
(8,'Renjith',31,'Kottayam'),
(9,'Tanay',5,'Alappuzha'),
(10,'Neethu',32,'Wayanad'),
(11,'Anu',30,'Kannur');
  

update Student_Details set Place='Kashmir'
where Student_id=9;

delete from Student_Details where Student_id=11;

