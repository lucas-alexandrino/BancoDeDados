CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
	id bigint auto_increment,
    nome varchar(255),
    sabor varchar(255),
    valor int,
	ingredientes varchar(255),
    primary key(id)
);
CREATE TABLE tb_categorias (
	id bigint auto_increment,
	salgado_doce varchar(255),
    valor50 varchar(255),
    primary key(id)
);

ALTER TABLE tb_pizzas add categoria_id bigint;

ALTER TABLE tb_pizzas ADD constraint fk_pizzas_categoras
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id);



INSERT INTO tb_categorias (salgado_doce,valor50)
values ("Salgado","Valor maior que R$50!");
INSERT INTO tb_categorias (salgado_doce,valor50)
values ("Salgado","Valor menor que R$50!");
INSERT INTO tb_categorias (salgado_doce,valor50)
values ("Doce","Valor menor que R$50!");
INSERT INTO tb_categorias (salgado_doce,valor50)
values ("Doce","Valor maior que R$50!");
INSERT INTO tb_categorias (salgado_doce)
values ("Agri-doce");



INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza Margherita","Margherita",40,"molho de tomate, mussarela fresca, manjericão e azeite de oliva",2);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza de Chocolate","Chocolate",45,"chocolate derretido,coco ralado,nozes e chocolate branco",3);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values("Pizza de Nutella","Nutella",65,"nutella,creme de avelã e amêndoas",4);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza Calabresa","Calabresa",40," molho de tomate, mussarela e linguiça calabresa fatiada.",2);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza Portuguesa","Portuguesa",50,"molho de tomate, mussarela, presunto, ovos, cebola, azeitona e pimentão.",1);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza Frango com Catupiry","Frango com Catupiry",57,"molho de tomate, mussarela, frango desfiado e catupiry.",1);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values("Pizza Napolitana","Napolitana",80,"molho de tomate, mussarela, alho, azeitona e anchovas.",1);
INSERT INTO tb_pizzas (nome,sabor,valor,ingredientes,categoria_id)
values ("Pizza de banana e chocolate","Chocolate e banana",70,"fatias de banana e pedaços de chocolate derretido,açúcar de confeiteiro.",4);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor > 50 and valor < 100;

SELECT * FROM tb_pizzas where nome like '%M%';

-- 9


SELECT nome,sabor,valor,salgado_doce from tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT nome,sabor,valor,salgado_doce,valor50 FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.id = 1;