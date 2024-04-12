CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50),
    descricao_categoria VARCHAR(100)
);

CREATE TABLE tb_pizzas (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50),
    descricao_pizza VARCHAR(100),
    preco_pizza DECIMAL(8, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES 
('Salgada', 'Pizzas com recheios salgados'),
('Doce', 'Pizzas com recheios doces'),
('Vegetariana', 'Pizzas sem carne');

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, preco_pizza, categoria_id) VALUES
('Pizza de Pepperoni', 'Pepperoni, queijo mussarela, molho de tomate e azeitonas pretas', 40.00, 1),
('Pizza de Margherita', 'Molho de tomate, queijo mussarela, tomate fresco e manjericão', 45.00, 1),
('Pizza de Chocolate', 'Chocolate ao leite e granulado de chocolate', 50.00, 2),
('Pizza de Frango com Catupiry', 'Frango desfiado, catupiry, milho e azeitonas verdes', 55.00, 1),
('Pizza Vegetariana', 'Molho de tomate, queijo mussarela, brócolis, palmito e champignon', 60.00, 3),
('Pizza Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo provolone, queijo parmesão e gorgonzola', 70.00, 1),
('Pizza de Banana com Canela', 'Banana, canela e leite condensado', 40.00, 2),
('Pizza de Pepperoni', 'Pepperoni e queijo mussarela', 65.00, 1);

SELECT * FROM tb_pizzas WHERE preco_pizza > 45.00;

SELECT * FROM tb_pizzas WHERE preco_pizza BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.*, c.nome_categoria AS categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome_categoria AS categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Doce';