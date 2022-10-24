create database cadastro
default character set utf8
default collate utf8_general_ci;

create table clientes (
cpf varchar(11) not null,
nome varchar(50) not null,	
email varchar(180),
telefone varchar(20),
sexo enum('M','F'),
cidade varchar(30),
estado varchar(30),
pais varchar(30) default 'Brasil',
primary key (cpf)
) default charset = utf8;

create table destino (
destino_id long not null,
dia date
)
