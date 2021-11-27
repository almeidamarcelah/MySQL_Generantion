create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table td_categorias(
id bigint auto_increment,
codigo varchar(200),
categoria varchar(200),
controle boolean,
primary key(id)
);

insert into tb_categorias (codigo,categoria,controle) value ("451","Medicamento", true);
insert into tb_categorias (codigo,categoria,controle) value ("521","Medicamento controlado", true);
insert into tb_categorias (codigo,categoria,controle) value ("201","Higiene intima", true);
insert into tb_categorias (codigo,categoria,controle) value ("201","Beleza", true);
insert into tb_categorias (codigo,categoria,controle) value ("405","Suplementos", true);

create table tb_produtos(
id bigint not null auto_increment,
nome varchar (220),
descricao varchar (200),
quantidade bigint,
preco decimal (10,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Neosaldina","Para dores de cabeça intensas",10,11.8,1);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Absorvente Intimus","Absorvente para a região intima feminina, 12 por 10",5,59.95,3);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Rivotril","tranquilizante",10,2);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("​Sertralina (Tolrest)","Antidepressivo",10,319.90,2);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Shampoo e Condicionador","Tresemmé",4,59.60,4);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Escova de bambu","Escova de dentes, material babu",10,3);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Centrum","Vitamina C e D",5,5);
insert into tb_produtos(nome,descricao,quantidade,preco,categoria_id) values ("Dorflex","Dores musculares",1,5.99,1);

select*from tb_produtos;

select*from tb_categorias;

select*from tb_produtos where preco>50.00;
select*from tb_produtos where preco between 3 and 60;
select*from tb_produtos where preco >= 3 and preco>=60;

select*from tb_produtos where nome like "%b%";

select*from tb_produtos inner join tb_categorias
on tb_categorias.id=tb_produtos.categoria_id;

select*from tb_produtos inner join tb_categorias
on tb_categorias.id=tb_produtos.categoria_id
where tb_categorias.id=1;