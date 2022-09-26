/* Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco
 de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com
 as informações dos produtos comercializados pela empresa. O sistema trabalhará
 com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/
 CREATE DATABASE DB_PIZZARIA_LEGAL;
 
 USE DB_PIZZARIA_LEGAL;
 
 /* Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da 
 Chave Primária, relevantes para classificar as pizzas.*/ 
 CREATE TABLE TB_PIZZAS (
 ID BIGINT AUTO_INCREMENT,
 TIPO VARCHAR(255),
 MASSA VARCHAR(255),
 PRIMARY KEY(ID) 
);

/* Crie a tabela tb_pizzas e determine 4 atributos, além da 
Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas. */
 CREATE TABLE TB_CATEGORIAS(
 ID BIGINT AUTO_INCREMENT,
 CATEGORIA VARCHAR(255) NOT NULL,
 SABOR VARCHAR(255) NOT NULL,
 BORDA VARCHAR(255) NOT NULL,
 PRECO DECIMAL(3,2) NOT NULL,
 CATEGORIA_ID BIGINT,
 PRIMARY KEY(ID),
 FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_PIZZAS(ID)
 );
 
 ALTER TABLE TB_CATEGORIAS MODIFY PRECO FLOAT;
 
-- Insira 5 registros na tabela tb_categorias.
INSERT INTO TB_PIZZAS (TIPO,MASSA)
VALUES ("SALGADA","TRADICIONAL");
INSERT INTO TB_PIZZAS (TIPO,MASSA)
VALUES ("DOCE","TRADICIONAL COM CANELA");
INSERT INTO TB_PIZZAS (TIPO,MASSA)
VALUES ("SALGADA","INTEGRAL");
INSERT INTO TB_PIZZAS (TIPO,MASSA)
VALUES ("SALGADA","PAN");
INSERT INTO TB_PIZZAS (TIPO,MASSA)
VALUES ("DOCE","CHOCOLATE");

/*Insira 8 registros na tabela tb_pizzas, preenchendo a Chave 
Estrangeira para criar a relação com a tabela tb_categorias.*/
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("TRADICIONAL","MARGUERITA","SIMPLES",34.99,1);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("TRADICIONAL","CALABRESA","SIMPLES",36.99,1);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("TRADICIONAL","MUSSARELA","SIMPLES",34.99,1);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("VEGANA","3 COGUMELOS","CAJUPIRY",53.99,3);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("VEGANA","JACA DESFIADA","CAJUCHEDDAR",55.99,3);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("VEGETARIANA","BRÓCOLIS COM CREAM CHEESE","CATUPIRY",54.99,4);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("DOCE","NUTELLA COM NOZES","LEITE NINHO",42.99,5);
INSERT INTO TB_CATEGORIAS (CATEGORIA, SABOR, BORDA, PRECO, CATEGORIA_ID)
VALUES ("DOCE","BANANA NEVADA","DOCE DE LEITE",37.99,2);


-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM TB_CATEGORIAS WHERE PRECO > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM TB_CATEGORIAS WHERE PRECO > 50.00 AND PRECO < 100.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam 
-- a letra M no atributo nome.
SELECT * FROM TB_CATEGORIAS WHERE SABOR LIKE "%M%";
SELECT * FROM TB_CATEGORIAS WHERE SABOR LIKE "M%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias.
*/
SELECT * FROM TB_CATEGORIAS INNER JOIN TB_PIZZAS ON
TB_CATEGORIAS.CATEGORIA_ID = TB_PIZZAS.ID;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam 
a uma categoria específica (Exemplo: Todas as pizzas que são doce)
*/
SELECT * FROM TB_CATEGORIAS INNER JOIN TB_PIZZAS ON
TB_CATEGORIAS.CATEGORIA_ID = TB_PIZZAS.ID WHERE CATEGORIA = "VEGANA";

SELECT * FROM TB_PIZZAS;
SELECT * FROM TB_CATEGORIAS;
