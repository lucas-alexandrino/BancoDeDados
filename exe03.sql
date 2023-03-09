CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id bigint auto_increment,
    modo_de_acao varchar(255),
    pilula_gotas varchar(255),
    caixa_cartela varchar(255),
    primary key (id)
);

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    dosagem varchar(255),
    indicacao varchar(255),
    efeito_colateral varchar(255),
    via_administracao varchar(255),
    nome varchar(255),
    valor int,
    primary key(id)
);
ALTER TABLE tb_produtos ADD descricao_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (descricao_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (modo_de_acao,pilula_gotas,caixa_cartela)
values ("Bloqueio de receptores","Pipula","Caixa");
INSERT INTO tb_categorias (modo_de_acao,pilula_gotas,caixa_cartela)
values ("Inibição de enzimas","Pipula","Cartela");
INSERT INTO tb_categorias (modo_de_acao,pilula_gotas,caixa_cartela)
values ("Bloqueio de receptores","Gotas","Caixa");
INSERT INTO tb_categorias (modo_de_acao,pilula_gotas,caixa_cartela)
values ("Aumento atividade celular","Gotas",null);
INSERT INTO tb_categorias (modo_de_acao,pilula_gotas,caixa_cartela)
values ("Efeito Terapeutico","Pilulas",null);




INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem única","Maiores de 18 anos","Queda de cabelo","Oral",1,"Kapidex",15);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem dividida","Maiores de 18 anos","Queda de cabelo","Oral",3,"Amorxicilina",14);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem escalonada","Menores de 18 anos","Dor de cabeça","Injecao",4,"AmorPraZol",30);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem de carga","Maiores de 18 anos","Dores musculares","Retal",3,"Kaavalex",20);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem  em tapering","Menores de 18 anos","Dor de garganta","Tópica",2,"DiverTrol",50);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem unica","Maiores de 18 anos","Dor de cabeça","Tópica",3,"Algocilina",400);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem  em tapering","Menores de 18 anos","Dor de garganta","Tópica",5,"Risotril",200);
INSERT INTO tb_produtos (dosagem,indicacao,efeito_colateral,via_administracao,descricao_id,nome,valor)
values("Dosagem  em tapering","Maiores de 18 anos","Ficar arrogante","Instramuscular",2,"Embelezol",100);



SELECT * FROM tb_produtos WHERE  valor >= 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 and 60;
SELECT * FROM tb_produtos WHERE nome like '%c%';

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.descricao_id;

SELECT nome,dosagem,indicacao,pilula_gotas,efeito_colateral FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.descricao_id
WHERE tb_categorias.id = 3;

DELETE FROM tb_produtos WHERE id = 9;

ALTER TABLE tb_produtos AUTO_INCREMENT = 1;
