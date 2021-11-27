create database db_escola;
use db_escola;
create table tb_alunes(
 id bigint auto_increment,
 nome varchar(200),
 ano varchar (200),
 periodo varchar (200),
 nascimento varchar(200),
 media double,
 primary key (id)
);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Mirella Farias","2021","integral", "29/12/1992",8.6);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Bruna Lima","2021","integral", "21/02/1997",9.5);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Geisian Reis","2021","integral", "09/05/1995",10);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Erick Costa","2021","integral", "09/11/1996",7.6);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Johnatan Siqueira","2021","integral", "19/06/1995",9);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Marcela Almeida","2021","integral","29/05/2001",9.6);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Lucas Robert","2020","integral", "08/01/2000",7);
insert into tb_alunes (nome,ano,periodo,nascimento,media) values ("Giovana Jesus","2018","integral", "05/12/2001",8);

select*from tb_alunes;
 update tb_alunes set media=6 where id=5;
 update tb_alunes set media=5 where id=8;
 
 select*from tb_alunes where media>7;
 select*from tb_alunes where media<7;

 