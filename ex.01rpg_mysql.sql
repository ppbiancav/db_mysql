create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint PRIMARY KEY AUTO_INCREMENT, 
	raca varchar(255) not null,
	arma varchar(255) not null
 ); 
 
 INSERT INTO tb_classes (raca, arma) VALUES ("Elfo Vampiro", "Esgrima");
 INSERT INTO tb_classes (raca, arma) VALUES ("Paladino Humano", "Cajado");
 INSERT INTO tb_classes (raca, arma) VALUES ("Druida", "Tacapas");
 INSERT INTO tb_classes (raca, arma) VALUES ("Arqueiro", "Espada Esgrima");
 INSERT INTO tb_classes (raca, arma) VALUES ("Ladrão", "Adaga");
 
 select * from tb_classes;
 
create table tb_personagens(
	id BIGINT AUTO_INCREMENT primary key,
	nome VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
	carisma DECIMAL(6,2) NOT NULL,
    classes_id bigint, 
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
); 

INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Henry Fitzroy", 2800, 2000, 6, 1);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Rick Schluz", 2300, 1700, 5, 4);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Tina Kimmy", 2000, 1600, 1, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Leora Nyma", 1500, 1000, 9, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Niel Lowovisk", 2400, 2000, 4, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Taylor Lee", 2200, 1000, 1, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Scott Alves", 1800, 2000, 7, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, carisma, classes_id) values ("Cox Gray", 3200, 2000, 6, 3);

select * from tb_personagens; 

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

select nome, ataque, defesa, carisma, tb_classes.raca, tb_classes.arma from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id;

select nome, ataque, defesa, carisma, tb_classes.raca, tb_classes.arma from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id
where raca like 'Ladrão';

