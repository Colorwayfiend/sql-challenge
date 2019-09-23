create table dept(
	id serial primary key,
	dept_no varchar(30) not null,
	dept_name varchar(30) not null);
	
create table dept_emp(
	id serial primary key,
	emp_no int,
	dept_no varchar(30) not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null);
	
create table dept_manager(
	id serial primary key,
	dept_no varchar(30) not null,
	emp_no int,
	from_date varchar(30) not null,
	to_date varchar(30) not null);
	
create table employees(
	id serial primary key,
	emp_no int,
	birth_date varchar(30) not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(30) not null,
	hire_date varchar(30) not null);
	
create table salaries(
	id serial primary key,
	emp_no int,
	salary int,
	from_date varchar(30) not null,
	to_date varchar(30) not null);
	
create table titles(
	id serial primary key,
	emp_no int,
	title varchar(30) not null,
	from_date varchar(30)not null,
	to_date varchar(30) not null);



--1.List the details for each employee: employee number, last name, first name
--gender and salary

select em.emp_no, em.last_name, em.first_name, em.gender, s.salary
from employees em
join salaries s
on (em.emp_no = s.emp_no);

--2.list employees hired in 1987
select em.emp_no, em.last_name, em.first_name, em.hire_date
from employees em
where hire_date like '%1987%';

--3.list the manager of each dept. with the following info:
--dept number, dept, name, the manager's employee number, last name, 
--first name and start and end employment dates
select dm.dept_no, dm.to_date, dm.from_date, dm.emp_no, em.last_name, d.dept_name, em.first_name
from employees em
join dept_manager dm on (em.emp_no = dm.emp_no)
join dept d on (d.dept_no = dm.dept_no);

--4.list the dept of each employee with the following info: employee
--number, last name, first name, and dept name
select de.emp_no, em.last_name, em.first_name, d.dept_name
from dept_emp de
join employees em
on de.emp_no = em.emp_no
join dept d
on de.dept_no = d.dept_no;

--5.list all employees whose first name is 'Duangkaew' and last names begin with 'P'
select em.first_name, em.last_name
from employees em
where first_name = 'Duangkaew' and last_name like 'P%';

--6.list all employees in the sales dept, including their employee number, 
--last name, first name and dept name
select de.emp_no, em.last_name, em.first_name, d.dept_name 
from dept_emp de
join employees em
on de.emp_no =em.emp_no
join dept d 
on d.dept_no = de.dept_no
where dept_name = 'Sales';

--7.list all employees in the sales and developement departments,
--including their employee number,last name, first name and dept. name
select de.emp_no, em.last_name, em.first_name, d.dept_name 
from dept_emp de
join employees em
on de.emp_no =em.emp_no
join dept d 
on (d.dept_no = de.dept_no)
where dept_name = 'Sales' 
or dept_name = 'Development';

--8.in descending order, list the frequency count of employee last
--names, i.e., how many employees share each last name.
select last_name,
count(last_name) as "frequency"
from employees
group by last_name
order by count(last_name) desc;