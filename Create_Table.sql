drop table Student

Create table Student (
firstName varchar(50) not null ,
lastName varchar(50) not null ,
majoir char (20),
gender char (1),
dob date not null ,
registration_date date default getdate(),
suffix char(15) null ,
age int check (age>18)
)



ALTER TABLE student ADD DEFAULT getdate() FOR registration_date
ALTER TABLE student ADD CHECK (age>18)
---------------------------------------------------------------------------------------------

