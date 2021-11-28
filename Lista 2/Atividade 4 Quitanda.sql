create database db_cidade_das_frutas;
use db_cidade_das_frutas;
create table tb_categorias(
id bigint auto_increment,
codigo bigint,
produto varchar (200),
tipo varchar (200),
primary key (id)
);
insert into tb_categorias (codigo,produto,tipo) value (100,"Morango","Fruta");
insert into tb_categorias (codigo,produto,tipo) value (110,"Milho","Legumes");
insert into tb_categorias (codigo,produto,tipo) value (120,"Alface","vergura");
insert into tb_categorias (codigo,produto,tipo) value (130,"Brócolis, Couve-flor, Milho, Ervilha","Legumes");
insert into tb_categorias (codigo,produto,tipo) value (140,"Leite e Queijo","Laticinios");

create table tb_produtos(
id bigint auto_increment,
preco decimal (10,2),
quantidade bigint,
congelado boolean,
descricao varchar(200),
origem varchar(200),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (29.95,5,false,"Morango caixa com 250g","Atibaia-SP",1);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (71.90,10,false,"Pacote de espiga milho verde 700g","Minas Gerais",2);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (20.00,10,false,"Pé de Alface freco","São Paulo",3);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (149.75,5,true,"Pacote de 2,5Kg de legumes","Minas Gerais",4);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (149.75,5,true,"Pacote de 2,5Kg de milho verde congelado","Atibaia-SP",2);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (157.43,7,false,"Queijo 500g e Leite 1Litro","Minas Gerais",5);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (114.99,2,false,"Queijo Canastra 1Kg","Sítio São Paulo",5);
insert into tb_produtos (preco,quantidade,congelado,descricao,origem,categoria_id) value (22.09,10,false,"Pé de Alface fresco","Campinas",3);

select*from tb_produtos;
select*from tb_produtos where preco>50.00;
select*from tb_produtos where preco between 3 and 60.00;
select*from tb_categorias where produto like "%c%";

select tb_categorias.codigo, tb_categorias.produto, tb_categorias.tipo, 
tb_produtos.preco, tb_produtos.quantidade, tb_produtos.congelado, tb_produtos.descricao, tb_produtos.origem, tb_produtos.categoria_id
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categoria_id;

select tb_categorias.codigo, tb_categorias.produto, tb_categorias.tipo, 
tb_produtos.preco, tb_produtos.quantidade, tb_produtos.congelado, tb_produtos.descricao, tb_produtos.origem, tb_produtos.categoria_id
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categoria_id
where categoria_id = 1 or categoria_id = 2;
