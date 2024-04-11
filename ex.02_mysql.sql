create database db_produtos;

use db_produtos;

drop table tb_produtos;

create table tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    marca varchar(255) not null,
	preco decimal(6,2) not null,
	tonalidade varchar(255) not null,
	tipo_de_produto varchar(255) not null,
primary key(id)
);

insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Base Líquida", "MAC Maquiagem", "200.00", "Bege Médio" "Pele");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Batom Matte", "Revlon", "50.00" "Vermelho", "Lábios");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Paleta de Sombras", "Urban Decay", "300.00", "Diversas", "Olhos");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Pó Compacto", "Maybelline", "80.00" "Bege Claro", "Pele");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Máscara de Cílios", "Melu", "20.00" "Preto", "Olhos");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Blush em Pó", "NARS", "150.00" "Rosa", "Rosto");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Delineador Líquido", "Stila", "100.00" "Preto", "Olhos");
insert into tb_produtos (nome, preco, marca, preco, tonalidade, tipo_de_produto) values ("Corretivo Líquido", "Clinique", "120.00" "Bege Médio", "Pele");


select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set estoque = 200 where id = 2;


