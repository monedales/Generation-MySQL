/*Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o
seguinte nome db_farmacia_bem_estar. O sistema trabalhará com as informações dos produtos 
comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, 
que deverão estar relacionadas.*/
CREATE DATABASE DB_FARMACIA_BEM_ESTAR;

USE DB_FARMACIA_BEM_ESTAR;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os produtos.*/
CREATE TABLE TB_CATEGORIAS (
ID BIGINT AUTO_INCREMENT,
CATEGORIA VARCHAR(300),
SUB_CATEGORIA VARCHAR(300),
PRIMARY KEY(ID)
);

/*Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da farmácia. Não esqueça de criar a Foreign Key 
da tabela tb_categorias na tabela tb_produtos.*/
CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(300),
PRECO FLOAT,
QTD INT,
FABRICANTE VARCHAR(300),
CATEGORIA_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_CATEGORIAS(ID)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO TB_CATEGORIAS (CATEGORIA,SUB_CATEGORIA)
VALUES ("MEDICAMENTOS","REMÉDIOS");
INSERT INTO TB_CATEGORIAS (CATEGORIA,SUB_CATEGORIA)
VALUES ("MEDICAMENTOS","FITOTERÁPICOS");
INSERT INTO TB_CATEGORIAS (CATEGORIA,SUB_CATEGORIA)
VALUES ("BELEZA E HIGIENE","HIGIENE BUCAL");
INSERT INTO TB_CATEGORIAS (CATEGORIA,SUB_CATEGORIA)
VALUES ("BELEZA E HIGIENE","CUIDADOS PARA CABELO");
INSERT INTO TB_CATEGORIAS (CATEGORIA,SUB_CATEGORIA)
VALUES ("BELEZA E HIGIENE","COSMÉTICOS");

SET SQL_SAFE_UPDATES = 0;
UPDATE TB_CATEGORIAS SET CATEGORIA = "MEDICAMENTOS" WHERE ID = 1;
UPDATE TB_CATEGORIAS SET CATEGORIA = "MEDICAMENTOS" WHERE ID = 2;
UPDATE TB_CATEGORIAS SET SUB_CATEGORIA = "REMÉDIOS" WHERE ID = 1;
UPDATE TB_CATEGORIAS SET SUB_CATEGORIA = "FITOTERÁPICOS" WHERE ID = 2;

/*Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para 
criar a relação com a tabela tb_categorias.*/
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("LORATAMED",10.19,50,"CIMED",1);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("VITAMINA D DOSS",46.99,25,"BIOLAB",1);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("CRONOGRAMA CAPILAR",28.90,13,"PANTENE",4);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("GEL DE LIMPEZA MICELAR",100.99,7,"BIODERMA",5);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("KIT CURAPROX BLACK",39.37,20,"CURAPROX",3);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("SINTOCALMY",78.17,10,"ACHÉ",2);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("PROTETOR SOLAR PROFUSE",77.99,9,"ACHÉ",5);
INSERT INTO TB_PRODUTOS (NOME,PRECO,QTD,FABRICANTE,CATEGORIA_ID)
VALUES ("LAMITOR",135.59,17,"TORRENT",1);

SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM TB_PRODUTOS WHERE PRECO > 50.00;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM TB_PRODUTOS WHERE PRECO > 5.00 AND PRECO < 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "C%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da 
tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas
os produtos que pertençam a uma categoria específica (Exemplo: Todes os 
produtos que pertencem a categoria cosméticos).*/
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE CATEGORIA = "BELEZA E HIGIENE";