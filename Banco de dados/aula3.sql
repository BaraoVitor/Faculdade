CREATE DATABASE universidade;
USE universidade; 
/* 3- TABELAS 
1 - ALUNOS
2- CURSOS
3 - MATRICULAS (ID_ALUNOS, ID_CURSO)
*/

CREATE TABLE alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(90) NOT NULL,
data_nascimento DATE NOT NULL 
);
CREATE TABLE cursos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(90) NOT NULL,
carga_horaria INT NOT NULL
);

CREATE TABLE matriculas(
id INT AUTO_INCREMENT PRIMARY KEY,
id_aluno INT,
id_curso INT,
nome VARCHAR(20),
cursos VARCHAR(20),
carga_horaria INT,
data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (id_aluno) REFERENCES alunos(id),
FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

SHOW TABLES;
DROP TABLES nova_tabela;

/*Inserir 5 nomes em alunos
Inserir 4 cursos
Engenharia de Software - 3600
Direito - 4200
*/
create table nova_tabela(
nome VARCHAR(20),
cursos VARCHAR(30),
carga_horaria INT
);

insert into nova_tabela(nome, carga_horaria, cursos)
values
("Vitor",3600,"Engenharia de Software"),
("Isabele",4200,"Direito"),
("Ana",3600,"Engenharia de Software"),
("carol",3600,"Engenharia de Software");
select * from  nova_tabela;


/*
-- funçoes  
*/