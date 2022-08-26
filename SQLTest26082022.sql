
create database test26082022;

create table members (
member_id int auto_increment,
name varchar(100),
primary key(member_id)
);

create table comittees (
comittee_id int auto_increment,
name varchar(100),
primary key (comittee_id)
);

insert into members(name) values('John'),('Jane'),('Mary'),('David'),('Amelia');

insert into comittees(name) values('John'),('Mary'),('Amelia'),('Joe');

select * from members;
select * from comittees;

select
	m.member_id,
    m.name as member,
    c.comittee_id,
    c.name as comittee
from
	members m
inner join comittees c on c.name = m.name;	

select 
	m.member_id,
    m.name as member,
    c.comittee_id,
    c.name as comittee
from
	members m
inner join comittees c using(name);	