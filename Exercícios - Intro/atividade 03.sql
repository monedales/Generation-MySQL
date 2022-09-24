/* Crie um banco de dados para um registro de uma escola, onde o sistema
 trabalhará com as informações dos estudantes deste registro dessa escola.*/

CREATE DATABASE db_escola;

USE db_escola;

-- Crie uma tabela de estudantes e determine 5 atributos relevantes
CREATE TABLE tb_alunes (
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(1000),
IDADE INT,
SERIE INT,
MATERIA CHAR(255),
NOTA FLOAT,
PRIMARY KEY(ID)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Letícia Moneda",13,8,"Inglês",8.5);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Louis Moneda",11,6,"Literatura",7.0);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Luis Otávio",12,7,"Português",6.5);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Jane Doe",16,11,"Física",5.0);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Ozzy Moneda",7,2,"Educação Física",9.0);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Maria Oliveira",15,10,"Artes",8.5);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Serena Ragassi",14,9,"Matemática",6.5);
INSERT INTO tb_alunes (NOME,IDADE,SERIE,MATERIA,NOTA)
VALUES ("Perséfone Olímpia",13,8,"História",8.0);

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0
SELECT * FROM tb_alunes WHERE NOTA > 7;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0
SELECT * FROM tb_alunes WHERE NOTA < 7;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
SET SQL_SAFE_UPDATES = 0; -- impede de executar update ou delete sem where
UPDATE tb_alunes SET NOTA = 7.0 WHERE ID = 7;

SELECT * FROM tb_alunes;
