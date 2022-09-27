/*Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco
 de dados deverá ter o seguinte nome db_curso_da_minha_vida. O sistema trabalhará com as 
 informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas
 tb_cursos e tb_categorias, que deverão estar relacionadas.*/
CREATE DATABASE DB_CURSO_DA_MINHA_VIDA;

USE DB_CURSO_DA_MINHA_VIDA;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave 
Primária, relevantes para classificar os produtos.*/
CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
PLATAFORMA VARCHAR(300),
FORMATO VARCHAR(300),
PRIMARY KEY(ID)
);

/*Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária,
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos. */
CREATE TABLE TB_CURSOS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(300),
CARGA_HORARIA INT,
MODALIDADE VARCHAR(300),
PRECO DECIMAL,
CATEGORIA_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_CATEGORIAS(ID)
);

-- Insira 4 registros na tabela tb_categorias.
INSERT INTO TB_CATEGORIAS (PLATAFORMA, FORMATO)
VALUES ("ALURA","REMOTO");
INSERT INTO TB_CATEGORIAS (PLATAFORMA, FORMATO)
VALUES ("DIGITAL HOUSE","REMOTO E AO VIVO");
INSERT INTO TB_CATEGORIAS (PLATAFORMA, FORMATO)
VALUES ("FIAP","AO VIVO");
INSERT INTO TB_CATEGORIAS (PLATAFORMA, FORMATO)
VALUES ("FIAP","REMOTO E AO VIVO");

-- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("MASTERING C#",136,"IMERSÃO",6072.00,3);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("Desenvolvimento Web Full Stack",540,"FORMAÇÃO",9480.00,2);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("CSO - Infosec + Cyber Defense",135,"IMERSÃO",4469.40,4);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("Java Xpert - Full Stack Development",136,"IMERSÃO",6072.00,3);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("DEVSECOPS - Securing CI/CD & Devops",142,"IMERSÃO",4966.00,4);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("Formação FRONT-END",439,"ASSINATURA ANUAL",1020.00,1);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("Formação em MOBILE",575,"ASSINATURA ANUAL",1020.00,1);
INSERT INTO TB_CURSOS (NOME,CARGA_HORARIA,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("Data Dive - Business Intelligence Fundamentals",89,"IMERSÃO",4968.00,3);

SELECT * FROM tb_cursos;
SELECT * FROM tb_categorias;

-- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 6000,00.
SELECT * FROM tb_cursos WHERE PRECO > 6000.00;

-- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 1000,00 e R$ 5000,00.
SELECT * FROM tb_cursos WHERE PRECO > 1000.00 AND PRECO < 5000.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_cursos WHERE NOME LIKE "%J%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON
tb_cursos.CATEGORIA_ID = tb_categorias.ID;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados 
da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica 
(Exemplo: Todes os cursos que pertencem a categoria Java).*/
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON
tb_cursos.CATEGORIA_ID = tb_categorias.ID WHERE NOME LIKE "Formação%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON
tb_cursos.CATEGORIA_ID = tb_categorias.ID WHERE MODALIDADE = "IMERSÃO";


