mysql -u root -p
\s --use For server and database information
show databases;
-- to create a database---------------------------------------------------------------------------------------------------------
create database [dbname];
--to delete a database----------------------------------------------------------------------------------------------------------
drop database [dbname];
--for swiching database---------------------------------------------------------------------------------------------------------
use [dbname];
--create table------------------------------------------------------------------------------------------------------------------
create table [table_name] (col1 colType(size) extra);
create table student(Id int primary key,FirstName varchar(255),LastName varchar(255),phone_no varchar(255),Address varchar(255),City varchar(255));
--delete table-----------------------------------------------------------------------------------------------------------------
drop table [table_name];
DROP TABLE my_future;
--to show tables----------------------------------------------------------------------------------------------------------------
show tables;
--for describe the table--------------------------------------------------------------------------------------------------------
desc [table_name];

--Table Alter --------------------------------------------------------------------------------------------------------------------
--Add Column
alter table [table_name] ADD phone [Data_Type];
mysql> alter table mobiles add Price int;
--modify column--------------------------------------------------------------------------------------------------------------------
alter table [table_name] modify phone varchar(20) not null;
alter table [table_name] rename[old_col_name] to [new_col_name];

--Drop column----------------------------------------------------------------------------------------------------------------------

alter table  [table_name] DROP  Column [col_name]   

-- insert data to table-------------------------------------------------------------------------------------------------------------
insert into [table_name] (column) values(value);
insert into student (Id) values(1);
insert into student (FirstName) values("Amresh");
insert into [table_name] (columns1,column2,column3,column4) values (values1),(values2),(values3),(values4);
insert into student (Id,FirstName,LastName,phone_no) values(1,"M_A","Gupta","9.23.3.5.0");
+------+-----------+----------+------------+---------+------+
| Id   | FirstName | LastName | phone_no   | Address | City |
+------+-----------+----------+------------+---------+------+
|    2 | Amresh    | Gupta    | 9598920855 | NULL    | NULL |
|    1 | M_A       | Gupta    | 9.23.3.5.0 | NULL    | NULL |
+------+-----------+----------+------------+---------+------+

--for select all-------------------------------------------------------------------------------------------------------------------
select * from [table_name]
select * from student ;
+------+-----------+----------+------------+---------+------+
| Id   | FirstName | LastName | phone_no   | Address | City |
+------+-----------+----------+------------+---------+------+
|    2 | Amresh    | Gupta    | 9598920855 | NULL    | NULL |
+------+-----------+----------+------------+---------+------+

--UPDATE---------------------------------------------------------------------------------------------------------------------------
UPDATE [table_name] set col_name=value ,col_name="value",col_name="value" where id= value;
UPDATE student SET Id = 4 WHERE FirstName = 'Dharmesh Kumar';
--DELETE----------------------------------------------------------------------------------------------------------------------------
DELETE from [table_name] where  idOr[col_name]=?;
delete from student where FirstName="Amresh";
delete from student where Id=1;
--ALEAS IN SQL 

select [col_name] "[your_colname]"  from [table_name] s --where s is alias 

--where 

select * from students where 1d =?;

--OR ,AND clause

select * from [table_name] where id=?AND name=?;
select * from [table_name] where id=?OR name=?;

--NOT

-- ORDER BY-----------------------------------------------------------------------------------------------------

select * from [table_name] ORDER BY [col_name] asc&desc;

SQL String funtion-----------------------------------------------------------------------------------------------

1.length  
select length("amresh gupta")  as "akg" ;

2.concatenate
 concatenate(str,str)

3.LCASE(str);

substring (str,start,length) extrct part of the string ;

4. TRIM(str) remove leading and trailing space ;

5.REVERSE    reverse the string ;

6. STRCMP(str1,str2) compare two string 

Othor funtions In SQl

1. CURDATE() -- It is returning current date 
 select curdate();
+------------+
| curdate()  |
+------------+
| 2024-07-05 |
+------------+
2.CURTIME() --It is returning current time
select curtime();
+-----------+
| curtime() |
+-----------+
| 12:07:47  |
+-----------+

3. NOW() --It is returning current date and time both
 select now();
+---------------------+
| now()               |
+---------------------+
| 2024-07-05 12:09:04 |
+---------------------+

4. IF(condition,yes,no)
 select if(2>1,"yes","No");
+--------------------+
| if(2>1,"yes","No") |
+--------------------+
| yes                |
+--------------------+

5.IFNULL(null,test) --if null then test otherwise value itself
select IfNull(null,"Amresh");
+-----------------------+
| IfNull(null,"Amresh") |
+-----------------------+
| Amresh                |
+-----------------------+

select IfNull("Gupta","Amresh");
+--------------------------+
| IfNull("Gupta","Amresh") |
+--------------------------+
| Gupta                    |
+--------------------------+


6. select DATABASE() --it return current databases;
 select database();
+------------+
| database() |
+------------+
| my_future  |
+------------+

7.select VERSION() --it return current version of the database;
select version();
+-----------+
| version() |
+-----------+
| 8.0.35    |
+-----------+

8. select USER() -- it return current user;
select USER();
+----------------+
| USER()         |
+----------------+
| root@localhost |
+----------------+

--In ----------------------------------------------------------------------------------------------------------------------------------
select * from student where id In(1,2); -- we use IN where We Have Multiple Id's But We Not want to use OR || Operator  
mysql> select * from student where Id IN(1,2);
+------+-----------+----------+------------+---------+------+
| Id   | FirstName | LastName | phone_no   | Address | City |
+------+-----------+----------+------------+---------+------+
|    2 | Amresh    | Gupta    | 9598920855 | NULL    | NULL |
|    1 | M_A       | Gupta    | 9.23.3.5.0 | NULL    | NULL |
+------+-----------+----------+------------+---------+------+

--LIKE----------------------------------------------------------------------------------------------------------------------------------

 1. % --we use represent zero or multiple charrecter

 select * from student where FirstName LIKE 'A%';
+------+-----------+----------+------------+---------+------+
| Id   | FirstName | LastName | phone_no   | Address | City |
+------+-----------+----------+------------+---------+------+
|    2 | Amresh    | Gupta    | 9598920855 | NULL    | NULL |
+------+-----------+----------+------------+---------+------+

 select * from student where FirstName LIKE '%A';
+------+-----------+----------+------------+---------+------+
| Id   | FirstName | LastName | phone_no   | Address | City |
+------+-----------+----------+------------+---------+------+
|    1 | M_A       | Gupta    | 9.23.3.5.0 | NULL    | NULL |
+------+-----------+----------+------------+---------+------+

2. _ -- we use for single character

select * from student where FirstName LIKE'_m%';
select * from student where Name LIKE'%Kumar%'; --it return me all name with exist Kumar not matter left and right

select * from student where FirstName Like'%Kumar%';
+------+----------------+----------+-------------+-----------+-------+
| Id   | FirstName      | LastName | phone_no    | Address   | City  |
+------+----------------+----------+-------------+-----------+-------+
|    4 | Dharmesh Kumar | Gupta    | 87.3.0.38.3 | Sector 61 | Noida |
|    3 | Ramesh Kumar   | Gupta    | 63.7.9.08.5 | Sector 61 | Noida |
+------+----------------+----------+-------------+-----------+-------+



--Create Table with forign key-----------------------------------------------------------------------------------------------
create TABLE [mobiles] (Mid int primary key,Modal varchar(100) not null,Name varchar(100),Price varchar(100),sId int, FOREIGN KEY(sId) REFERENCES student(Id));

create table qualifications(qId int primary key auto_increment,pass_year int not null,Name varchar (500) not null,about varchar (200),sId int,FOREIGN KEY (sId) REFERENCES student(Id));
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| qId       | int          | NO   | PRI | NULL    | auto_increment |
| pass_year | int          | NO   |     | NULL    |                |
| Name      | varchar(500) | NO   |     | NULL    |                |
| about     | varchar(200) | YES  |     | NULL    |                |
| sId       | int          | YES  | MUL | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+

--Constraints---------------------------------------------------------------------------------------------------
-- add constraints

ALTER TABLE student ADD CONSTRAINT student PRIMARY KEY (Id);
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Id        | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | YES  |     | NULL    |       |
| LastName  | varchar(255) | YES  |     | NULL    |       |
| phone_no  | varchar(255) | YES  |     | NULL    |       |
| Address   | varchar(255) | YES  |     | NULL    |       |
| City      | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

ALTER TABLE [table_name] ADD FOREIGN KEY  (this_colum_name) REFERENCES [parent_tablr_name](parant_primary_key_colun);
alter table mobiles ADD foreign key(sId) REFERENCES student(Id);
--this