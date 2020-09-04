CREATE DATABASE  IF NOT EXISTS escola CHARACTER SET utf8 COLLATE utf8_general_ci;

use escola;

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

ALTER TABLE aluno ADD CONSTRAINT FOREIGN KEY (id_horario_aula) REFERENCES horario(id);

ALTER TABLE professor ADD CONSTRAINT FOREIGN KEY (id_horario_aula) REFERENCES horario(id);
INSERT INTO horario(descricao) VALUES ('Manhã'),('Tarde'),('Noite');

SELECT * FROM horario;


INSERT INTO aluno(nome, materia,id_horario_aula) VALUES ('André Vieira','Portugues',2),('Gabriel Gomes','Matematica',3),
('Alinto Souza','Geografia',1),('Arthu Barbosa Vieira', 'Arte',1);

SELECT * FROM aluno;

SELECT aluno.nome, horario.descricao
FROM aluno
INNER JOIN horario
ON aluno.id_horario_aula = horario.id
WHERE horario.descricao LIKE '%Manhã';

INSERT INTO professor(nome, id_horario_aula) VALUES ('André Vieira',1),('Gabriel Gomes',2),
('Alinto Souza',3),('Arthu Barbosa Vieira', 3);

SELECT professor.nome, horario.descricao
FROM professor
INNER JOIN horario
ON professor.id_horario_aula = horario.id;

UPDATE professor SET nome = 'Caio Mesquita' WHERE id = 4;

SELECT * FROM professor;













