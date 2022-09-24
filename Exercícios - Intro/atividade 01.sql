/* Crie um banco de dados para um serviço de RH de uma empresa,
onde o sistema trabalhará com as informações dos colaboradores 
desta empresa. */
CREATE DATABASE db_rh_moneda;

USE db_rh_moneda;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes 
CREATE TABLE tb_funcionarios(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(1000),
IDADE INT,
GENERO CHAR(255),
FUNCAO CHAR(255),
SALARIO FLOAT,
PRIMARY KEY(ID)
);

-- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_funcionarios (NOME,IDADE,GENERO,FUNCAO,SALARIO)
VALUES ("LETÍCIA",30,"FEMININO","DEVA",3550.69);
INSERT INTO tb_funcionarios (NOME,IDADE,GENERO,FUNCAO,SALARIO)
VALUES ("LOUIS TIGRINHO",11,"MACHO","ARRANHADOR DE SOFÁS",24.69);
INSERT INTO tb_funcionarios (NOME,IDADE,GENERO,FUNCAO,SALARIO)
VALUES ("OZZY OSBOURNE",7,"MACHO","CAÇADOR DE LASERS",666);
INSERT INTO tb_funcionarios (NOME,IDADE,GENERO,FUNCAO,SALARIO)
VALUES ("TIGRESA",2,"FÊMEA","ESCALA ÁRVORES",51.43);
INSERT INTO tb_funcionarios (NOME,IDADE,GENERO,FUNCAO,SALARIO)
VALUES ("LESTAT DE LIONCOURT",261,"MASCULINO","ARISTOCRATA",6875.90);

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_funcionarios WHERE SALARIO > 2000;
-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_funcionarios WHERE SALARIO < 2000;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
SET SQL_SAFE_UPDATES = 0; -- impede de executar update ou delete sem where

UPDATE tb_funcionarios SET SALARIO = 666.11 WHERE ID = 3;

SELECT * FROM tb_funcionarios;
