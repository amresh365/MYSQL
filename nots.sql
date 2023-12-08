show databasas;
-- to create a database---------------------------------------------------------------------------------------------------------
create databasas[dbname];
--to delete a database----------------------------------------------------------------------------------------------------------
drop databasas[dbname];
--for swiching database---------------------------------------------------------------------------------------------------------
use [dbname];
--create table------------------------------------------------------------------------------------------------------------------
create table[table_name](col1 colType(size) extra);
--to show tables----------------------------------------------------------------------------------------------------------------
show tables;
---for describe the table--------------------------------------------------------------------------------------------------------

desc [table_name];

--Table Alter --------------------------------------------------------------------------------------------------------------------
--Add Column
alter table [table_name] ADD phone [Data_Type];

--modify column--------------------------------------------------------------------------------------------------------------------
alter table [table_name] modify phone varchar(20) not null;

alter table [table_name] RENAME[old_col_name] to [new_col_name];

--Drop column----------------------------------------------------------------------------------------------------------------------

alter table  [table_name] DROP  Column [col_name]   

-- insert data to table-------------------------------------------------------------------------------------------------------------

insert into [table_name](columns) values(value);
insert into [table_name] values(value);
insert into [table_name] values (values1),(values2),(values3),(values5);

--for select all-------------------------------------------------------------------------------------------------------------------

select * from [col_name]

--UPDATE---------------------------------------------------------------------------------------------------------------------------
UPDATE [table_name] set col_name=value ,col_name="value",col_name="value" where id= value;

--DELETE----------------------------------------------------------------------------------------------------------------------------

DELETE from [table_name] where  idOr[col_name]=?;

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