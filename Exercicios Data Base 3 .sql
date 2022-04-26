/*Crie um banco de dados para um serviço de um Games Online.
 O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações
 dos personagens do jogo.
 O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/
 CREATE DATABASE db_generation_game_online;
 USE db_generation_game_online;
 
 CREATE TABLE tb_classes(
 id_classe BIGINT auto_increment primary key,
 nome_classe varchar (50),
 cavaleiro_classe varchar (50)
 );
 CREATE TABLE tb_personagens(
 id_personagem BIGINT auto_increment primary key,
 nome varchar (50),
 poder_ataque bigint,
 poder_defesa bigint,
 poder_armadura bigint,
 classe_id bigint,
 foreign key (id_personagem) REFERENCES tb_classes (id_classe)
 
 );

INSERT INTO tb_classes(nome_classe, cavaleiro_classe) VALUES("Ouro", "S");

INSERT INTO tb_classes(nome_classe, cavaleiro_classe) VALUES("Prata", "A");

INSERT INTO tb_classes(nome_classe, cavaleiro_classe) VALUES("Bronze", "B");

INSERT INTO tb_classes(nome_classe, cavaleiro_classe) VALUES("Divino", "SS");

INSERT INTO tb_classes(nome_classe, cavaleiro_classe) VALUES("Espectro", "C");


/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Seya", 2000, 900, 1000, 2);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Shaka", 10000, 6000, 5000, 1);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Shun", 1000, 1000, 1000, 2);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Radamanthys", 3000, 2000, 2500, 5);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Shina", 1500, 1000, 900, 3);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Mu", 9000, 5000, 4800, 1);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Hades", 50000, 25000, 7000, 4);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, poder_armadura, classe_id)
VALUES("Atena", 60000, 30000, 8000, 4);

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

SELECT*FROM tb_personagens WHERE poder_ataque > 2000;

SELECT*FROM tb_personagens WHERE poder_defesa >=  1000  AND poder_defesa <=  2000 ;

SELECT*FROM tb_personagens WHERE nome LIKE  " %s% ";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON   tb_personagens . classe_id  = 
tb_classes . id_classe ;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON  tb_personagens . classe_id  = 
tb_classes . id_classe  WHERE id_classe =  1 ;

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

/*Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o 
seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categoria bigint auto_increment primary key,
nome varchar (50),
avaliacao decimal (20,2)

);

CREATE TABLE tb_pizzas(
id_pizza bigint auto_increment primary key,
sabor varchar(50),
borda_recheada varchar (10),
preço decimal (20,2),
tamanho varchar (20),
categoria_id bigint,
foreign key (id_pizza) REFERENCES tb_categorias(id_categoria)

);


INSERT tb_categorias ( nome, avaliacao) VALUES ( "Doce", 9.88);

INSERT tb_categorias ( nome, avaliacao) VALUES ( "Salgada", 9.95);

INSERT tb_categorias ( nome, avaliacao) VALUES ( "Vegana", 9.50);

INSERT tb_categorias ( nome, avaliacao) VALUES ( "Especial", 9.98);

INSERT tb_categorias ( nome, avaliacao) VALUES ( "Simples", 8.90);

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/
INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Mussarela" ,"Não", 55.00, "Grande", 2);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Calabresa", "Sim", 60.00, "Grande", 2);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Carne c/ queijo" ,"Sim", 70.00, "Grande", 4);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Brócolis" ,"Não", 50.00, "Grande", 3);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Chocolate" ,"Não", 45.00, "Pequena", 1);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Frango" ,"Não", 40.00, "Pequena", 5);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Rúcula c/ tomate", "Não", 48.00, "Pequena", 3);

INSERT tb_pizzas ( sabor, borda_recheada, preço, tamanho, categoria_id)
VALUES ( "Aleo e óleo" ,"Não", 38.00, "Grande", 5);
/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

SELECT * FROM tb_pizzas WHERE preço >  45.00 ;

SELECT * FROM tb_pizzas WHERE preço >=  50.00  AND preço <=  60.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE " %a% ";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON  tb_pizzas . categoria_id  = 
tb_categorias . id_categoria ;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON  tb_pizzas . categoria_id  = 
tb_categorias . id_categoria  WHERE id_categoria = 4;

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/
/*Crie um banco de dados para um serviço de uma Farmácia.
 O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
 O sistema trabalhará com as informações dos produtos comercializados pela empresa.
 O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/
 
 CREATE DATABASE db_farmacia_bem_estar;
 USE db_farmacia_bem_estar;
 
 CREATE TABLE tb_categorias (
 id_categoria bigint auto_increment primary key,
 nome_categoria varchar (50),
 eficacia decimal (50.2)
 
 );
 
 CREATE TABLE tb_produtos (
 cod_produto bigint auto_increment primary key,
 nome_produto varchar (50),
 tipo varchar (50),
 preço decimal (20,2),
 indicação varchar (20),
 categoria_id bigint,
 foreign key (cod_produto) REFERENCES tb_categorias ( id_categoria)
 );
 
 INSERT tb_categorias ( nome_categoria, eficacia) VALUES ( "Comprimido", 90.00);
 
 INSERT tb_categorias ( nome_categoria, eficacia) VALUES ( "Oral", 97.00);
 
 INSERT tb_categorias ( nome_categoria, eficacia) VALUES ( "Injeção", 99.0);
 
 INSERT tb_categorias ( nome_categoria, eficacia) VALUES ( "Capsula", 88.70);
 
 INSERT tb_categorias ( nome_categoria, eficacia) VALUES ( "Antibiotico", 98.00);
 /*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Amoxilina", "Generico", 22.00, "Maiores de 5 anos", 1);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Remédio para tosse", "Anti-tosse", 34.00, "Maiores de 10 anos", 2);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Remédio para infecção", "Anti-infecção", 50.00, "Receita médica", 5);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "pfizer", "Vacina Covid", 00.00, "Livre", 3);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Dramin", "Analgesico", 15.00, "Maiores de 8", 4);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Rsolver", "Antialergico", 68.00, " Receita médica", 2);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "VitaC++", "Vitamina", 100.00, "Livre", 1);
 
 INSERT tb_produtos ( nome_produto, tipo, preço, indicação, categoria_id)
 VALUES ( "Esparadrapo", "Curativo", 5.00, "Livre", 1);
 
 /*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/
 SELECT * FROM tb_produtos WHERE preço > 50.00;
 
 SELECT * FROM tb_produtos WHERE preço >= 5.00 AND preço <= 60.00;
 
 SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos . categoria_id  =
tb_categorias . id_categoria ;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos . categoria_id  =
tb_categorias . id_categoria  WHERE id_categoria = 3;

 /*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

/*
Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti.
O nome do Banco de dados deve ter o seguinte nome db_cidade_das_carnes ou
cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos
comercializadores pela empresa.
O sistema funcionará com 2 tabelas tb_produtos e tb_categorias, que mostram
estar relacionado. */

CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id_categoria bigint auto_increment primary key,
nome_categoria varchar (20),
qualidade decimal (20,1)

);

CREATE TABLE tb_produtos (
cod_produto bigint auto_increment primary key,
nome_produto varchar (100),
preço decimal (20,2),
qtd int,
categoria_id bigint,
foreign key (cod_produto) REFERENCES tb_categorias (id_categoria)

);

INSERT tb_categorias ( nome_categoria, qualidade) VALUES ( "Carne bovina", 98.00);

INSERT tb_categorias ( nome_categoria, qualidade) VALUES ( "Carne de porco", 92.00);

INSERT tb_categorias ( nome_categoria, qualidade) VALUES ( "Frango", 98.00);

INSERT tb_categorias ( nome_categoria, qualidade) VALUES ( "Galinha Caipira", 95.00);

INSERT tb_categorias ( nome_categoria, qualidade) VALUES ( "Peixe", 99.00);

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Coxa" ,30.00, 250, 3);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Costeleta",45.00, 250, 2);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Salmão" ,75.00, 180, 5);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "pé galinha caipira" ,20.00, 500, 4);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Picanha" ,150.00, 300, 1);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Sardinha" ,20.00, 250, 5);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Bisteca" ,28.00, 400, 2);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Colchão mole" ,35.00, 320, 1);

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

SELECT * FROM tb_produtos WHERE preço > 50.00;

SELECT * FROM tb_produtos WHERE preço >= 50.00  AND preço <= 150.00 ;

 SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos . categoria_id  =
tb_categorias . id_categoria ;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos . categoria_id  =
tb_categorias . id_categoria  WHERE id_categoria = 4;

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

/* 
Crie um banco de dados para um serviço de uma loja de Material de Construção.
O nome do Banco de dados deve ter o seguinte nome db_construindo_vidas.
O sistema funciona com as informações dos produtos comercializados pela empresa.
O sistema funciona com 2 tabelas tb_produtos e tb_categorias, que devem estar relacionadas. */

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id_categoria bigint auto_increment primary key,
nome_produto varchar (100),
precaucoes varchar (255)

);

CREATE TABLE tb_produtos (
cod_produto bigint auto_increment primary key,
nome_produto varchar (255),
preço decimal,
qtd int,
categoria_id bigint,

foreign key (cod_produto) REFERENCES tb_categorias (id_categoria)


);

INSERT tb_categorias ( nome_produto, precaucoes) 
VALUES ( "Caixa d'agua 1L", "Manter fechada em local coberto");

INSERT tb_categorias ( nome_produto, precaucoes) 
VALUES ( "Super cola", "Mantenha longe de crianças");    

INSERT tb_categorias ( nome_produto, precaucoes) 
VALUES ( "Pia", "Necessita de técnico para instalação");

INSERT tb_categorias ( nome_produto, precaucoes) 
VALUES ( "Caixa d'agua 2L", "Manter fechada em local coberto");

INSERT tb_categorias ( nome_produto, precaucoes) 
VALUES ( "Argamassa", "Mantenha em local fresco");

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Caixa d' agua 2L", 250.00, 20, 4);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Cola para madeiras", 50.00, 100, 2);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Caixa d' agua 1L", 180.00, 20, 1);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Pia residencial", 500.00, 80, 3);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Massa fixadora", 70.00, 250, 5);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Caixa d'Agua Cristal", 250.00, 5, 4);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Caixa d'Azul celeste", 180.00, 15, 1);

INSERT tb_produtos (nome_produto, preço, qtd, categoria_id)
VALUES ( "Cola para plásticos", 60.00, 150, 2);

SELECT * FROM tb_produtos WHERE preço > 100.00;

SELECT * FROM tb_produtos WHERE preço >= 70.00  AND preço <= 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE  "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON   tb_produtos . categoria_id  = 
tb_categorias . id_categoria ;

SELECT  *  FROM tb_produtos INNER JOIN tb_categorias ON   tb_produtos . categoria_id  = 
tb_categorias . id_categoria  WHERE id_categoria =  5 ;

/*----//---//----//---//----//---//----//---//----//---//----//---//----//---//----//---//*/
/* Atividade 6
Crie um banco de dados para uma plataforma de Cursos Online (EAD).
O nome do Banco de dados deve ter o seguinte nome db_curso_da_minha_vida.
O sistema funciona com as informações dos produtos comercializados pela empresa.
O sistema funcionará com 2 tabelas tb_cursos e tb_categorias, que devem estar
relacionado. */

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id_categoria bigint auto_increment primary key ,
    nome_categoria varchar ( 50 ),
    taxa_de_alunos int

);

CREATE TABLE tb_cursos (
cod_curso bigint auto_increment primary key ,
    nome_curso varchar ( 50 ),
    preco decimal (50,2),
    vagas int ,
    categoria_id bigint ,
    foreign key (cod_curso) REFERENCES tb_categorias(id_categoria)
);


INSERT tb_categorias (nome_categoria, taxa_de_alunos)
VALUES ( "informatica", 80.0 );

INSERT tb_categorias (nome_categoria, taxa_de_alunos)  
VALUES ( "portugues", 75.0 );

INSERT tb_categorias (nome_categoria, taxa_de_alunos)
VALUES ( "Ciencias", 60.0 );

INSERT tb_categorias (nome_categoria, taxa_de_alunos)
VALUES ( "Desenhos", 45.5 );

INSERT tb_categorias (nome_categoria, taxa_de_alunos)
VALUES ( "Matematica", 70.3 );



INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Programação", 1500.0, 60, 1);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Gramatica", 500.0, 150, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Artimeticas", 450.0, 100, 5);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Biologia", 1200.0, 50, 3);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenhos 3d", 400.0, 70, 4);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Programaçãp JAVA", 1500.0, 40, 1);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Estudo da vida animal", 750.0, 80, 3);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Redação", 95, 120.0, 2);


SELECT * FROM tb_cursos WHERE preco > 500.00 ;

SELECT * FROM tb_cursos WHERE preco >=  600.00  AND preco <= 1000.00 ;

SELECT * FROM tb_cursos WHERE nome_curso LIKE  "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON  tb_cursos . categoria_id  =
tb_categorias . id_categoria ;

SELECT  *  FROM tb_cursos INNER JOIN tb_categorias ON  tb_cursos . categoria_id  =
tb_categorias . id_categoria  WHERE id_categoria =4;





