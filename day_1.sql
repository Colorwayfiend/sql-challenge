create table language (
 id serial primary key,
 language varchar(30) not null,
  rating int);
  
-- Insert data into the table
insert into language (language, rating)
values ('HTML', 95),
	('JS',99),('JQUERY',98), ('MYSQL', 70),('MYSQL',70);

--Query all fields from the table
select*
from language;

--update 'JS' to 'Javascript'
update language 
set language = 'HTML' 
WHERE id =1;

select*
from language

select language as lang
from language order by language desc, rating

--add a new column 'master'
alter table language
add column mastered boolean default true;

--import a csv into an SQL database