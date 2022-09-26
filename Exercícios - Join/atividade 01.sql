/*Crie um banco de dados para um serviço de um Games Online. 
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará  
com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/
CREATE DATABASE DB_GENERATION_GAME_ONLINE;

USE DB_GENERATION_GAME_ONLINE;

/* Crie a tabela tb_classes e determine pelo menos 2 atributos, além da
 Chave Primária, relevantes para classificar os personagens do Game Online.*/
CREATE TABLE TB_CLASSES(
ID BIGINT AUTO_INCREMENT,
TIPO VARCHAR(500),
HABILIDADE VARCHAR(500),
PRIMARY KEY(ID)
);

/*Crie a tabela tb_personagens e determine 4 atributos, 
além da Chave Primária, relevantes aos personagens do Game Online.*/
CREATE TABLE TB_PERSONAGENS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(300),
ATAQUE INT,
DEFESA INT,
EQUIPAMENTO VARCHAR(300),
CATEGORIA_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_CLASSES(ID)
);

-- Insira 5 registros na tabela tb_classes.
INSERT INTO TB_CLASSES (TIPO, HABILIDADE)
VALUES ("MAGO","BOLA DE FOGO");
INSERT INTO TB_CLASSES (TIPO, HABILIDADE)
VALUES ("GUERREIRO","GANHE 2 DE ARMADURA");
INSERT INTO TB_CLASSES (TIPO, HABILIDADE)
VALUES ("SACERDOTE","CURE 2 DE VIDA");
INSERT INTO TB_CLASSES (TIPO, HABILIDADE)
VALUES ("LADINO","ROUBE 2 DE VIDA");
INSERT INTO TB_CLASSES (TIPO, HABILIDADE)
VALUES ("CAÇADOR","EVOQUE 2 FERAS");

 /* Insira 8 registros na tabela tb_personagens, preenchendo 
 a Chave Estrangeira para criar a relação com a tabela tb_classes. */
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("KHADGAR",3000,2100,"HELLFIRE",1);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("VOL'JIN",3300,1600,"RHOK'DELAR",6);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("ANDUIN",1850,2150,"ALMA DRAGÔNICA",4);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("VALIRA",1950,1600,"ADAGA",5);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("MAIEV",3000,1900,"RUÍNA DOS REIS",5);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("EDWIN VANCLEEF",2600,2050,"LÂMINA ASSASSINA",5);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("GARROSH",2500,2800,"UIVO SANGRENTO",3);
INSERT INTO TB_PERSONAGENS (NOME, ATAQUE, DEFESA, EQUIPAMENTO,CATEGORIA_ID)
VALUES ("JAINA PROUDMORE",2500,1900,"ALUNETH",1);

SET SQL_SAFE_UPDATES = 0;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM TB_PERSONAGENS WHERE ATAQUE > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM TB_PERSONAGENS WHERE DEFESA > 1000 AND DEFESA < 2000;

/* Faça um SELECT utilizando o operador LIKE, buscando todes os personagens 
que possuam a letra C no atributo nome.*/
SELECT * FROM TB_PERSONAGENS WHERE NOME LIKE "%C%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.*/
SELECT * FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON
TB_PERSONAGENS.CATEGORIA_ID = TB_CLASSES.ID;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens
 com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam 
a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
*/
SELECT * FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON 
TB_PERSONAGENS.CATEGORIA_ID = TB_CLASSES.ID WHERE TIPO = "MAGO";

SELECT * FROM TB_CLASSES;
SELECT * FROM TB_PERSONAGENS;







