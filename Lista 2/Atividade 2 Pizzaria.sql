create database db_pizzaria_legal;
use  db_pizzaria_legal;
create table tb_categorias(
id bigint auto_increment,
sabor varchar (200),
descricao varchar (200),
borda varchar(200),
primary key (id)
);
insert into tb_categorias (sabor,descricao,borda) value ("Margherita","Molho de tomate, muçarela ralada grosso, rodelas de tomatee folhas de manjericão","Recheaga com requeijão");
insert into tb_categorias (sabor,descricao,borda) value ("Portuguesa","queijo muçarela, presunto, tomate em rodelas, ovo cozido ,cebola, Molho de tomate, Azeitonas","Recheaga com cheddar");
insert into tb_categorias (sabor,descricao,borda) value ("Moda da casa","Frango, baccon, muçarela, tomate, molho de tomate","Sem recheio");
insert into tb_categorias (sabor,descricao,borda) value ("Vegana","Brócolis, queijo, molho de tomate","Recheaga com requeijão");
insert into tb_categorias (sabor,descricao,borda) value ("Sensação","Chocolate, morango, granulado ","Recheada com chocolate");

create table tb_pizza(
id bigint auto_increment,
tamanho varchar (200),
preco decimal (10,2),
tempoPreparo varchar (200),
promocaoDia varchar (200),
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categorias(id)
);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Familía",29.90,"30 minutos","Quinta por R$21,90",2);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Broto",25.90,"20 minutos","Quarta por R$19,90",1);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Familía",45.90,"40 minutos","Sexta por R$25,90",3);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Familía",42.90,"40 minutos","Sabádo por R$23,90",2);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Broto",27.90,"30 minutos","Quinta por R$20,90",3);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Broto",22.90,"30 minutos","Quinta por R$16,90",4);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Familía",48.90,"50 minutos","Domingo por R$24,90",5);
insert into tb_pizza (tamanho,preco,tempoPreparo,promocaoDia,categoria_id) value ("Broto",29.90,"30 minutos","Quinta por R$19,90",5);

select*from tb_pizza;
select*from tb_pizza where preco>50.00;
select*from tb_pizza where preco between 29.00 and 60.00;
select*from tb_categorias where descricao like "%c%";

select tb_categorias.sabor, tb_categorias.descricao, tb_categorias.borda, 
tb_pizza.tamanho, tb_pizza.preco, tb_pizza.tempoPreparo, tb_pizza.promocaoDia 
from tb_categorias inner join tb_pizza on tb_categorias.id = tb_pizza.categoria_id;

select tb_categorias.sabor, tb_categorias.descricao, tb_categorias.borda, 
tb_pizza.tamanho, tb_pizza.preco, tb_pizza.tempoPreparo, tb_pizza.promocaoDia 
from tb_categorias inner join tb_pizza on tb_categorias.id = tb_pizza.categoria_id
where categoria_id = 1 or categoria_id = 2;