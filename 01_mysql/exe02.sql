CREATE DATABASE db_ecommerce;
	
USE db_ecommerce;

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255),
categoria varchar(255),
descricao text,
valor float,
desconto varchar(255) ,
primary key(id)

);

INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Barbeador profissional","Higiene pessoal","Recarregável e sem fio",150.00,"15% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Cama elástica","Lazer e Brinquedos","Cama elástica que suporta até 200kg",600.00,"15% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Espelho","Casa","Espelho residencial anti-reflexo",150.00,"10% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Panela antiaderente","Cozinha","Panela antiaderente profissional assinada por chef's",2000.00,"5% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("AirFryer","Cozinha","A AirFryer mais economica da categora",500.00,"20% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Sofá 4 lugares","Casa","Sofá em suede retrátil",2500.00,"25% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Smartphone","Celulares e Eletrônicos","Smartphone de ultima geração camêra Quad-core",3000.00,"5% de desconto na compra à vista");
INSERT INTO tb_produtos (nome,categoria,descricao,valor,desconto)
values ("Pneu 175/70 R13","Automotivo","Pneu semi-slick",400.00,"15% de desconto na compra à vista");

SELECT * FROM tb_produtos WHERE valor >500;

select * FROM tb_produtos where valor < 500;

UPDATE tb_produtos set valor = 200 WHERE id=1;