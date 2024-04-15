create database db_colaboradores; 

use db_colaboradores;

create table tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
	cargo varchar(255) not null,
    data_de_admissao varchar(255) not null,
	salario decimal(6,2) not null,
    departamento varchar(255) not null,
primary key(id)
);

insert into tb_colaboradores (nome, cargo, data_de_admissao, salario, turno) values ("Bianca Vasconcelos", "Desenvolvedora", "2020-01-15", "6000.00", "TI");
insert into tb_colaboradores (nome, cargo, data_de_admissao, salario, turno) values ("Yumi Maya", "Analista", "2018-05-10", "7000.00", "Financeiro");
insert into tb_colaboradores (nome, cargo, data_de_admissao, salario, turno) values ("Jeon Jungkook", "Gerente", "2015-03-20", "12000.00", "Vendas");
insert into tb_colaboradores (nome, cargo, data_de_admissao, salario, turno) values ("Leandro Brandao", "Designer", "2019-11-05", "5500.00", "Marketing");
insert into tb_colaboradores (nome, cargo, data_de_admissao, salario, turno) values ("Thais Carla", "Contadora", "2017-07-12", "8500.00", "Financeiro");

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2.000;

select * from tb_colaboradores where salario <= 2.000;

update tb_colaboradores set salario = 50.00 where id = 1;


