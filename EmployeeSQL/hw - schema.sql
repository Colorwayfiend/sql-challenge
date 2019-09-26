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



