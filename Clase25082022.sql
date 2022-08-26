drop schema prueba;

create schema prueba;

use prueba;

drop table if exists ciudad;

create table ciudad(
id int auto_increment not null,
descripcion varchar(45) default null,
primary key (id)
);

create table ciudad(
id int auto_increment not null,
descripcion varchar(45) not null unique,
primary key (id)
);


drop table if exists usuario;

create table usuario(
id bigint not null auto_increment,
clave varchar(255) default null,
usuario varchar(255) default null,
primary key (id)
);

drop table if exists usuario;

create table usuario(
id bigint not null auto_increment,
clave varchar(255) default null,
usuario varchar(255) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(250) not null,
ciudad_id int not null default 1,
primary key (id),
constraint fk_ciudad foreign key(ciudad_id) references ciudad(id) on delete restrict on update cascade,
constraint uk_nombre_completo unique (nombre, apellido),
constraint ch_mail check(email like '%@%')
);

alter table usuario drop constraint fk_ciudad;

alter table usuario drop index fk_ciudad;

alter table usuario add constraint fk_ciudad  foreign key (ciudad_id) references ciudad(id) on delete restrict on update cascade;

#SET foreign_key_checks = 1;

select * from usuario;

select * from ciudad;

update ciudad set descripcion = "Antananrivo" where id = 1;

insert into ciudad values (1, "Bogota");

INSERT INTO `prueba`.`usuario`
(`usuario`,
`nombre`,
`apellido`,
`email`,
`ciudad_id`)
VALUES
("I'm the best",
"Jorge",
"Garzon",
"jorgehgarzon@gmail.com",
1);

show columns from usuario in prueba;


select distinct descripcion as city from ciudad;

show tables;

describe usuario;

show databases;


