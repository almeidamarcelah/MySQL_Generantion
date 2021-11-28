create database db_construindo_a_nossa_vida;
use  db_construindo_a_nossa_vida;
create table tb_categorias(
id bigint auto_increment,
decoracao varchar (200),
ferramentas varchar (200),
materiais varchar(200),
primary key (id)
);
insert into tb_categorias (decoracao,ferramentas,materiais) value ("Quarto","Espátula Celuloide","Papel de Parede e adesivos decorativos");
insert into tb_categorias (decoracao,ferramentas,materiais) value ("Banheiro","parafusadeira, parafusos","Barra de apoio de segurança,box");
insert into tb_categorias (decoracao,ferramentas,materiais) value ("Cozinha","massa,cimento","azuleijos");
insert into tb_categorias (decoracao,ferramentas,materiais) value ("Sala","massa","piso de madeira e azulejos");
insert into tb_categorias (decoracao,ferramentas,materiais) value ("Jardim","materiais de jardinagem","Aplicação de grama, banco decorativos");


create table tb_produtos(
id bigint auto_increment,
tamanho varchar (200),
preco decimal (10,2),
quantidade bigint (200),
cor varchar (200),
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categorias(id)
);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("20 metros",57.99,2,"Colorido",1);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("2 metros(barra)/2 metro/3 metros(box)",684.90,1,"Prata e preto",2);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("10 com/15cm",1400.50,200,"Azulejos brancos e pretos",3);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("20cm/30cm",7719.90,150,"Madeira escura envernizado",4);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("100cm/50cm",789.90,50,"Grama para aplicação, cortada",5);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("10 metros",34.90,1,"tematica do Harry Potter",1);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("50cm/30cm",5914.90,320,"Madeira clara",4);
insert into tb_produtos (tamanho,preco,quantidade,cor,categoria_id) value ("Banco decorativo para duas pessoas",700.80,2,"Banco na cor branca",5);

select*from tb_produtos;
select*from tb_produtos where preco>50.00;
select*from tb_produtos where preco between 29.00 and 60.00;
select*from tb_categorias where decoracao like "%c%";

select tb_categorias.decoracao, tb_categorias.ferramentas, tb_categorias.materiais, 
tb_produtos.tamanho, tb_produtos.preco, tb_produtos.quantidade, tb_produtos.cor, tb_produtos.categoria_id
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categoria_id;

select tb_categorias.decoracao, tb_categorias.ferramentas, tb_categorias.materiais, 
tb_produtos.tamanho, tb_produtos.preco, tb_produtos.quantidade, tb_produtos.cor, tb_produtos.categoria_id
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categoria_id
where categoria_id = 1 or categoria_id = 2;