/*Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará com as informações dos produtos desta empresa. 
Banco de Dados -1*/
CREATE DATABASE db_quitanda;
USE db_quitanda;
CREATE TABLE tb_produtos(
id_produto bigint auto_increment primary key,
nome varchar (50),
qtd bigint,
valor decimal (50,2),
valor_nutricional decimal(50,2),
id_categoria bigint,
foreign key(id_produto) references tb_categoria(id_categoria)

);
CREATE TABLE tb_categoria(
id_categoria bigint auto_increment primary key,
nome_categoria varchar (50)
);

INSERT tb_categoria(nome_categoria) VALUES("Legume");
INSERT tb_categoria(nome_categoria) VALUES("Fruta");
INSERT tb_categoria(nome_categoria) VALUES("Verdura");
INSERT tb_categoria(nome_categoria) VALUES("Grãos");
INSERT tb_categoria(nome_categoria) VALUES("Molho");

/*-----//------//------//-----//----//-----//-----//-----*/

INSERT tb_produtos(nome,qtd,valor,valor_nutricional,id_categoria) 
VALUES("Batata doce",200,5.50,99.8,1);

INSERT tb_produtos(nome,qtd,valor,valor_nutricional,id_categoria) 
VALUES("Alface",400,3.50,99.9,3);

INSERT tb_produtos(nome,qtd,valor,valor_nutricional,id_categoria) 
VALUES("Uva",180,7.50,99.0,2);

INSERT tb_produtos(nome,qtd,valor,valor_nutricional,id_categoria) 
VALUES("Grão de bico",500,2.30,99.9,4);

INSERT tb_produtos(nome,qtd,valor,valor_nutricional,id_categoria) 
VALUES("Molho de alho",100,10.0,85.8,5);

/*-----//------//------//-----//----//-----//-----//-----*/


SELECT*FROM tb_produtos;

SELECT*FROM tb_categoria;

SELECT*FROM tb_categoria INNER JOIN tb_produtos ON tb_categoria.id_categoria = tb_produtos.id_categoria WHERE tb_produtos.valor > 5.00;

SELECT*FROM tb_produtos WHERE nome LIKE "%a%";

UPDATE tb_produtos SET nome="Molho pesto" WHERE id_produto = 1;

