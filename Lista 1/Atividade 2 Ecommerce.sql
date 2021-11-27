create database db_ecommerce;
use db_ecommerce;
create table tb_loja(
id bigint auto_increment,
codigo bigint,
produtos varchar (200),
cor varchar (200),
tamanho varchar(200),
quantidade int,
preco decimal(10,2),
primary key (id)
);

insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0145, "Coletor Menstrual", "Vermelho", "P",1,85.60);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0156, "Disco Menstrual","Rosa","P",1,90.80);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0255, "Absorvente de Pano","Estampado, vermelho", "P",4,114.70);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0740, "Calsinha Absorvente","Estampado, vermelho", "P",4,365.60);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0558, "Copo Estelirizador", "Roxo", "P",1,55.90);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0986, "Aplicador", "Amarelo", "P",1,45.60);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0335,"Panela Estelirizadora","Laranja","P",1,185.60);
insert into tb_loja (codigo,produtos,cor,tamanho,quantidade,preco) value (0385,"Kit completo","Rosa","P",1,514.60);

select * from tb_loja;
select * from tb_loja where preco>500.00;
select * from tb_loja where preco<500.00;
update tb_loja set preco = 95.50 where id=3;