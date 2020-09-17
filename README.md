# Objetivo: Descreva inicialmente o objetivo do banco de dados criado, e qual tipo de solução isso poderia se aplicar. (Ex.: Meu projeto possui as tabelas Fornecedores e Representantes, natural em um módulo de compras.)

![giphy-6](https://user-images.githubusercontent.com/56928555/93413257-373f9f80-f875-11ea-929c-b48625f2eb14.gif)


## Script SQL:

## 1 – Criação do banco de dados:

## Escreva o script para criação do banco de dados.

## 2 – Criação das tabelas:

 ## Escreva os scripts para criação das tabelas. DEVE haver um relacionamento entre 2 tabelas!

## 3 – Inserção dos dados:

## Em seguida, utilize os comandos de inserção para inserir alguns registros em seu banco (não precisam ser muitos. 2 registros já são suficientes)

## 4 – Consulta:

## Por fim, elabore o script de uma consulta relevante e que faça sentido, utilizando pelo menos um destes recursos: funções de agregação, junção interna, junção externa, subconsultas, e/ou FULLTEXT. *Explique a finalidade da consulta!


O objetivo do banco de dados criado, é ajudar aos indivíduos de uma certa escola consulta seus dados de maneira mais rápida e intuitiva, o meu projeto possui as tabelas aluno,professor e horário, natural quando se descreve uma escola.

  Para criar o banco de dados utilizei o seguinte script:

CREATE DATABASE IF NOT EXISTS escola CHARACTER SET utf8 COLLATE utf8_general_ci;

USE escola;

Para cria as tabelas aluno,professor e horário utilizei  o seguinte comando:

CREATE TABLE aluno (

id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

nome VARCHAR(50),

materia VARCHAR(50),

id_horario_aula INT

);



CREATE TABLE professor(

id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

nome VARCHAR(50),

id_horario_aula INT

);



CREATE TABLE horario (

id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

descricao VARCHAR(50)

);



 Para haver relações entre as tabelas coloquei o seguinte comando, criando uma chave primaria na tabela aluno e professor:

ALTER TABLE aluno ADD CONSTRAINT FOREIGN KEY (id_horario_aula) REFERENCES horario(id);

ALTER TABLE professor ADD CONSTRAINT FOREIGN KEY (id_horario_aula) REFERENCES horario(id);



Agora inserimos o dados na tabela horário, aluno e professor:

INSERT INTO horario(descricao) VALUES ('Manhã'),('Tarde'),('Noite');



INSERT INTO aluno(nome, materia,id_horario_aula) VALUES ('André Vieira','Portugues',2),('Gabriel Gomes','Matematica',3),('Alinto Souza','Geografia',1),('Arthu Barbosa Vieira', 'Arte',1);

INSERT INTO professor(nome, id_horario_aula) VALUES ('André Vieira',1),('Gabriel Gomes',2),

('Alinto Souza',3),('Arthu Barbosa Vieira', 3);



 Para haver uma consulta relevante e mostra os resultados relacionados das tabelas aluno e professor relacionando com horários sendo ela uma chave primaria utilizaremos o seguinte comando

SELECT professor.nome, horario.descricao

FROM professor

INNER JOIN horario

ON professor.id_horario_aula = horario.id;

SELECT aluno.nome, horario.descricao

FROM aluno

INNER JOIN horario

ON aluno.id_horario_aula = horario.id

WHERE horario.descricao LIKE '%Manhã';




![earlyacess](https://user-images.githubusercontent.com/56928555/93413491-c5b42100-f875-11ea-809b-15d000b68de3.gif)

