
/*Open cmd and run 
mysql -h localhost -u root -p
then enter your password. if your password is not 1234, you will have to change it everywhere.
then copy and paste this entire code into cmd.

if you are using phpmyadmin them simply import this file.
*/

show databases;
drop database budgetpal;

create database budgetpal;
use budgetpal;

create table login(
	uname varchar(20) PRIMARY KEY,
	password varchar(50),
	name varchar(100),
	tel int(10),
	email varchar(50)
 );
 
 desc login;
 
 select * from login;
 
 insert into login values('lahi','1234','Lahiruka','0711313282','lahi@gmail.com');
 insert into login values('is2104','1234','UCSC','0114562812','ucsc@gmail.com');
 
 select * from login;
 

 
 create table expenses(
	Eid int AUTO_INCREMENT PRIMARY KEY,
	Date varchar(20) ,
	TimeStamp varchar(20),
	Food decimal(6,2),
	Transport decimal(6,2),
	Stationaries decimal(6,2),
	Utility_Bills decimal(6,2),
	Loans decimal(8,2),
	Other decimal(6,2)
	
 );
 
 desc expenses;
 
 select * from expenses;
 
create table totalexp(
	Date varchar(20) NOT NULL,
	expType varchar(20) Primary key,
	totalAmount int(11)
	
);  


insert into totalexp values 
	('2019-07-22','Food',200),
	('2019-07-22','Transport',400),
	('2019-07-22','Stationaries',50),
	('2019-07-22','Utility_Bills',700),
	('2019-07-22','Loans',10200),
	('2019-07-22','Other',500)
;

 
 desc totalExp;
 
 select * from totalExp;
 
 
 
 /*
 create table mySalary(
	Salary decimal(10,2) NOT NULL,
	totexpense decimal(10,2),
	balance decimal(10,2)
);

desc mySalary;

select * from mySalary;
 */
