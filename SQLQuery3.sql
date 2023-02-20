create database Payroll;

select Name from sys.databases

use Payroll

  
create table employee_payroll
(
 id int identity primary key,
 name varchar(100) not null,
 salary money not null,
 start_date date not null
 )

  select * from INFORMATION_SCHEMA.columns where table_name= 'employee_payroll'

 insert into employee_payroll values ('Bill',10000.0,'2018-01-03')
 insert into employee_payroll (salary , start_date, name) values (21000.0,'2019-12-13','Terisa')
 
 insert into employee_payroll values
 ('charlie',23452.0, '2014-05-23'),
  ('carl',15000.0,'2020-10-03'),
  ('karl' ,20000.0, '2020-11-03)

  select name as 'employee Name' from employee_payroll
  select * from employee_payroll where name = 'bill' 
  select getdate();
  select * from employee_payroll
  select * from employee_payroll where start_date between '2019-01-01' and '2022-11-10';
  select * from employee_payroll where start_date between '2019-01-01' and getdate();

  alter table employee_payroll add Gender char(1)

  update employee_payroll set Gender ='f' where name ='Terisa';
  select * from employee_payroll
  update employee_payroll set Gender = 'm' where id in(1,4,3) 
  select gender ,sum(salary) from employee_payroll  group by Gender

    select * from employee_payroll

    alter table employee_payroll add 
    employee_phone varchar(15),
    address varchar(50) not null default 'india',
    department varchar(50) 

    alter table employee_payroll add department varchar(50) not null default 'cs'

    EXEC sp_rename 'employee_payroll.Income_Tax','tax'; 

    alter table employee_payroll add 
    Deductions money,
    Taxable_Pay money,
    Income_Tax money,
    Net_Pay money;

        select * from employee_payroll
  insert into employee_payroll values('Terissa',21000.0,'2019-12-13','f',NULL,'india', NULL,'Mechanical',NULL,NULL,NULL,NULL)  

  create procedure employeedetails
  as
  select *  from employee_payroll;


  exec employeedetails


  select * from employee_payroll order by  salary asc;

     
alter table employee_payroll  add debt money 


alter table employee_payroll drop column debt
 drop debt from emplyee_payroll





 