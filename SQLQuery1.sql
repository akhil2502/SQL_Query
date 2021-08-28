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

alter table employee_payroll
add phonenumber varchar(20)
go


update  employee_payroll
set phonenumber = '9999999999'
where num=1

update  employee_payroll
set phonenumber = '9988999999'
where num=2

update  employee_payroll
set phonenumber = '9999997799'
where num=3

update  employee_payroll
set phonenumber = '6699999999'
where num=4

update  employee_payroll
set phonenumber = '9999999999'
where num=5

alter table employee_payroll
drop column address

alter table employee_payroll
add  address varchar(20)

update  employee_payroll
set address = 'mumbai'

alter table employee_payroll
add department varchar(20)

update  employee_payroll
set department = 'mech'
where num=1

update  employee_payroll
set department = 'ce'
where num=2

update  employee_payroll
set department = 'ece'
where num=3

update  employee_payroll
set department = 'ca'
where num=4 or num=5

create table employee_pay1(
basic_pay int ,
deductions_pay int,
taxable_pay int,
incometax int,
net_pay int
)
alter table employee_pay1
add num int

insert  into  employee_pay1 values (25000,900,1000,2000,45000,1)
insert  into  employee_pay1 values (27000,700,2000,2000,48000,2)
insert  into  employee_pay1 values (25000,900,1000,2000,40000,3)
insert  into  employee_pay1 values (20000,800,1000,2000,40000,4)
insert  into  employee_pay1 values (30000,1000,3000,2000,48000,5)
select * from employee_pay1
select * from employee_payroll

select * from employee_payroll join employee_pay1 
on employee_payroll.num = employee_pay1.num