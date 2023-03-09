CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE  tb_personagens (
	id bigint auto_increment,
    nome varchar(255),
    habilidade varchar (255),
    pais_origem varchar(255),
    frase varchar (255),
    primary key (id)
);
CREATE TABLE tb_classes (
	id bigint auto_increment,
    classificacao varchar(255),
    funcao varchar(255),
    primary key (id)
);
ALTER TABLE tb_personagens drop classificacao_id;

ALTER TABLE tb_personagens add classificacao_id bigint;
ALTER TABLE tb_personagens add poder int;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classificacao_id) REFERENCES tb_classes (id);

----- 4 

INSERT INTO tb_classes (classificacao,funcao)
values ("Duelistas são os personagens mais ofensivos do Valorant. 
Eles formam a linha de frente, buscam combates diretos com os oponentes e geralmente desempenham a função de entry fragger, ou seja, 
os primeiros a entrar numa ofensiva ao bombsite inimigo.","Duelista");

INSERT INTO tb_classes (classificacao,funcao)
values ("Os Controladores têm esse nome, pois conseguem controlar a visão do mapa com suas skills, principalmente smokes. 
Personagens dessa função coletam informações para possibilitar entradas ofensivas aos companheiros.","Controladores");

INSERT INTO tb_classes (classificacao,funcao)
values ("Sentinela é uma das quatro funções que os personagens do Valorant podem desempenhar na partida. 
Essa classe é focada em defesa. Portanto, não é muito comum vê-los com grande número de kills no placar.","Sentinelas");

INSERT INTO tb_classes (classificacao,funcao)
values ("Os Iniciadores possuem características tanto de Sentinelas quanto de Controladores. Logo, seu principal objetivo é dar suporte aos aliados.","Iniciadores");

INSERT INTO tb_classes (classificacao,funcao)
values ("Os outros personagens tem caracteristicas marcantes de cada um deles, mas não se definem","Valorant");





-- 5

INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values("Reyna","DEVORAR | Inimigos abatidos por Reyna deixam Orbes de Alma que duram 3s.","México","Por mais que esse mundo me machuque, eu matarei por ele! ",1,2000);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Breach","ESTOPIM | EQUIPE e DISPARE a carga para armar um jato de ação rápida pela parede. A carga é detonada, cegando todos os jogadores que estiverem olhando para ela.","Suécia","Nada dessa bobagem de 'uma vitória é uma vitória'. Devemos ganhar muito e parecer bem fazendo isso.",4,1000);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Cypher","JAULA CIBERNÉTICA | joga a jaula cibernética diante de Cypher. Ative para criar uma zona que bloqueia a visão e reduz a velocidade de inimigos que passarem por ela.","Marrocos","Nada se esconde mim, nada",3,1000);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Sage","ORBE DE LENTIDÃO| O orbe detona ao pousar, criando um campo duradouro que desacelera os jogadores dentro dele.","China","Eu sou escudo e espada.",3,800);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("KAYO","GRANADA/CLARÃO | A granada de clarão explode após um curto período, cegando qualquer um que estiver na linha de visão.","Estados Unidos","Vamos fazer isso.",4,2000);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Omen","PARANOIA | emite um projétil sombrio adiante, reduzindo brevemente o alcance de visão dos jogadores tocados. O projétil atravessa paredes.","Turquia","Se devo viver neste pesadelo, meus inimigos podem se juntar a mim.",2,1500);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Jett","CORRENTE ASCENDENTE | impele Jett bem alto no ar.","Coreia do Sul","Woo! Nós temos isso.",1,1400);
INSERT INTO tb_personagens (nome,habilidade,pais_origem,frase,classificacao_id,poder)
values ("Raze","CARGA DE EXPLOSIVOS | Joga uma Carga de Explosivos que gruda em superfícies. causando dano e movendo tudo que for atingido.","Brasil","Vou brocar!",1,2030);

-- 6 7 8

SELECT * FROM tb_personagens where poder > 2000;
SELECT * FROM tb_personagens where poder < 2000 and poder > 1000;
SELECT * FROM tb_personagens where nome like 'c%';

-- 9

SELECT nome, habilidade, pais_origem from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classificacao_id;

SELECT nome, habilidade, pais_origem,funcao from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classificacao_id;

SELECT nome,habilidade,frase,poder,funcao FROM tb_personagens
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classificacao_id
WHERE tb_classes.id = 1;

