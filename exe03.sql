CREATE DATABASE db_escola;	

USE db_escola;

CREATE TABLE tb_estudantes (
	id bigint auto_increment,
    nome varchar(255),
    anos int,
    serie int,
	turma char,
    nota float not null,
    primary key (id)
);

INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Gabriela",16,2,"A",5.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Marcos",16,2,"A",7.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("João",16,2,"B",8.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Vinicius",16,2,"B",4.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Guilherme",17,2,"B",3.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Sergio",17,2,"A",8.5);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Marcela",16,2,"A",7.0);
INSERT INTO tb_estudantes(nome,anos,serie,turma,nota)
values ("Maria",16,2,"B",5.0);

SELECT * FROM tb_estudantes where nota > 7.0;

SELECT * FROM tb_estudantes where nota < 7.0;

UPDATE tb_estudantes SET anos= 17 where id =1;