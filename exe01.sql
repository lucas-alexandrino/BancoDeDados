CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    salario float,
    cargo varchar(255),
    genero varchar(255),
    primary key (id)
);

INSERT INTO tb_colaboradores(nome,idade,salario,cargo,genero)
values ("João",20,1800.00,"Analista","Masculino");
INSERT INTO tb_colaboradores(nome,idade,salario,cargo,genero)
values ("Maria",28,3500.00,"Supervisora","Feminino");
INSERT INTO tb_colaboradores(nome,idade,salario,cargo,genero)
values ("Italo",25,2200.00,"Gerente","Outro");

SELECT * FROM tb_colaboradores WHERE salario >2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores set salario=3000.00 WHERE id = 1;