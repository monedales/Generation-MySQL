/* Crie um banco de dados para um e-commerce, onde o sistema trabalhará 
com as informações dos produtos deste e-commerce. */

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos
CREATE TABLE tb_produtos ( 
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(1000),
PRECO FLOAT,
QUANTIDADE INT,
CATEGORIA CHAR(255),
SUB_CATEGORIA CHAR(255),
PRIMARY KEY(ID)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Arranhador canto sofá",90.50,6,"para gatos","brinquedos");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Arranhador frente sofá",150.39,6,"para gatos","brinquedos");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Arranhador rampa ",105.69,6,"para gatos","brinquedos");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Arranhador castelo",205.50,3,"para gatos","brinquedos");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Kit arranhadores: sofás, rampa e castelo",500.99,2,"para gatos","brinquedos");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Kit playground felino - P - 3 peças",380.19,7,"para gatos","móveis");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Kit playground felino - M - 5 peças",490.00,2,"para gatos","móveis");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Kit playground felino - G - 8 peças",650.69,1,"para gatos","móveis");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Planner - meu gato, minha vida",39.90,10,"para humanos","papelaria");
INSERT INTO tb_produtos (NOME,PRECO,QUANTIDADE,CATEGORIA,SUB_CATEGORIA)
VALUES ("Caneca - Gateira",49.90,10,"para humanos","acessórios");

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE PRECO > 500;
-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE PRECO < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
SET SQL_SAFE_UPDATES = 0; -- impede de executar update ou delete sem where
UPDATE tb_produtos SET PRECO = 30.19 WHERE ID = 9;

SELECT * FROM tb_produtos;
