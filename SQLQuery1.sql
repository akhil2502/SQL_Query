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

select * from employee_payroll

select * from employee_payroll where name = 'akhil'
select * from employee_payroll where salary = '80000' or name = 'sai' 
select * from employee_payroll where salary = '80000' and name = 'sai' 
select * from employee_payroll where salary = '80000' and name = 'akhil' 

update  employee_payroll
set salary = 90000
where num = 1






