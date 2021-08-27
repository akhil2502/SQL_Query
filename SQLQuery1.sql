create database EmployeePayRoll

create table employee_payroll(
num int primary key,
name varchar(20),
salary varchar(20),
startdate varchar(20)
)
insert  into  employee_payroll values (1,'akhil','70000','26-9-2020')
insert  into  employee_payroll values (2,'ram','80000','26-9-2020')
insert  into  employee_payroll values (3,'akhil','80000','26-9-2020')
insert  into  employee_payroll values (4,'sai','70000','26-9-2020')
insert  into  employee_payroll values (5,'kajal','60000','26-9-2020','f')
select * from employee_payroll

select * from employee_payroll where name = 'akhil'
select * from employee_payroll where salary = '80000' or name = 'sai' 
select * from employee_payroll where salary = '80000' and name = 'sai' 
select * from employee_payroll where salary = '80000' and name = 'akhil' 

update  employee_payroll
set salary = 90000
where num = 1

select salary from employee_payroll where num=2
select salary from employee_payroll where name='sai'

select * from employee_payroll where name = 'sai' and startdate between cast('26-9-2020' as date) and getdate()

alter table employee_payroll
add gender  varchar(1) 
update  employee_payroll
set gender = 'm'
where name='akhil' or name='ram'or name='sai'

alter table employee_payroll
alter column salary int
go

select sum(salary), gender from employee_payroll
group by gender

select avg(salary),gender from employee_payroll
group by gender

select sum(salary) from employee_payroll

select min(salary),gender from employee_payroll
group by gender

select max(salary),gender from employee_payroll
group by gender

select count(salary),gender from employee_payroll
group by gender