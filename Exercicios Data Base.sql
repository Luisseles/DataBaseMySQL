-- BANCO DE DADOS -1 CRIE UM BANCO DE DADOS PARA UM SERVIÇO DE RH DE UMA EMPRESA
-- ONDE O SISTEMA TRABALHARÁ COM AS INFORMAÇÕES DOS COLABORADORES DESTA EMPRESA.

USE db_startup_RH;
CREATE TABLE tb_funcionarios(
     id_colaborador bigint auto_increment primary key,
     nome varchar (200),
     cargo varchar (50),
     tel varchar (13),
     cpf varchar (20),
     salario decimal (10,3)
	
); 

SELECT * FROM tb_funcionarios;
INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Luis Henrique", "Dev.Java", "1198620-000","111.456.789-00", 4000);

INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Ana Clara", "Designer", "1148720-300","444.316.859-40", 5000);

INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Leticia Santos", "Dev.Web", "1141560-321","552.332.898-45", 4000);

INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Joaquina da Silva", "Atendente", "1198502-200","440.555.000-50", 3000);

INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Miguel Ferreira", "Gerente", "1195620-555","020.456.789-00", 8000);

INSERT INTO tb_funcionarios(nome, cargo, tel, cpf, salario)
VALUE ("Fernando Alves", "Estagiário", "114596-111","444.988.789-00", 1800);

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET tel = "1189275-400" WHERE id_colaborador = 2;
SELECT * FROM tb_funcionarios;


-- BANCO DE DADOS -2 CRIE UM BANCO DE DADOS PARA UM E-COMMERCE, ONDE O SISTEMA
-- TRABALHARÁ COM AS INFORMAÇÕES DOS PRODUTOS DESTE E-COMMERCE.

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id_produto int auto_increment primary key,
nome varchar (100),
quantidade bigint,
avaliacao decimal (20,1),
valor decimal(10,2)

);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Celular Iphone 11", 200, 90.7, 6000);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Notebook", 100, 98.0, 4000);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Smart TV", 600, 99, 5000);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Headset", 90, 85, 300);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Geladeira", 250, 98, 3500);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Ventilador", 300, 99, 150);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Fogão", 200, 96, 3200);

INSERT INTO tb_produtos(nome, quantidade, avaliacao, valor)
VALUES("Celular Android", 600, 96, 2000);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET quantidade = 350 WHERE id_produto = 6;

SELECT * FROM tb_produtos;


-- BANCO DE DADOS -3 CRIE UM BANCO DE DADOS PARA UM REGISTRO DE UMA ESCOLA,
-- ONDE O SISTEMA TRABAHARÁ COM INFORMAÇÕES RELEVANTES DOS ESTUDANTES PARA SE TRABALHAR
-- COM O SERVIÇO DESSA ESCOLA.

CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
   id_aluno int auto_increment primary key,
nome_aluno varchar (50),
idade int,
curso varchar (50),
periodo varchar (20),
nota decimal (10,1)

);
SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Luis Henrique", 23, "Análise e Desen.de Sistemas", "noturno", 9.5);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Beatriz A.", 25, "Direito", "noturno", 8.7);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Maria Ap.", 20, "Nutrição", "Diurno", 6.5);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Mario Alberto", 28, "Ciências", "noturno", 6.8);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Bianca Lima", 23, "Astronomia", "integral", 8.5);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Alice S.", 33, "Geografia", "diurno", 9.0);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Lucas F..", 28, "Matemática", "integral", 10.0);

INSERT INTO tb_alunos(nome_aluno, idade, curso, periodo, nota)
VALUES("Anderson L.", 35, "Culinária", "noturno", 9.3);


SELECT * FROM tb_alunos WHERE nota < 7.0;
SELECT * FROM tb_alunos WHERE nota > 7.0;

UPDATE tb_alunos SET nota = 9.1 WHERE id_aluno = 2;

SELECT * FROM tb_alunos;
