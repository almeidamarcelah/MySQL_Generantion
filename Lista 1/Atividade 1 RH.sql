create database db_rh;

use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar (200) not null,
codigo bigint not null,
salario decimal (10,2) not null,
cargo varchar (200) not null,
projeto varchar (200) not null,
primary key (id)
);
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Aimée",9981,40000.90,"Piou","New Generantion");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Bruna Lima",2118,4500.90,"Desenvolvedora Jr","Time Black");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Kayque Gonçalves",7112,4200.90,"Desenvolvedora Jr","Time Black");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Iara Santos",1344,8200.90,"Desenvolvedora Pleno","Girls Power");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Jhonatan Siqueira",5199,1980.00,"Estagiario","Garotos de Programa");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Pedro Jones",2943,1800.90,"Estagiario","Garotos de Programa");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Erick Costa",1324,10000.90,"Desenvolvedor Pleno","New Generation");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Cassandra Lucas",1522,1980.90,"Estagiaria","Generation");
insert into tb_funcionarios(nome, codigo, salario, cargo, projeto) values ("Luiza Castro",1566,1980.90,"Estagiaria","Girls Power");

select concat('R$',format(salario,2,'pt_BR')) as salario from tb_funcionarios;
select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;
update tb_funcionarios set cargo = "Desenvolvedor Jr." where id = 5;
update tb_funcionarios set cargo = "Desenvolvedor Jr." where id = 5;
update tb_funcionarios set salario = 4600.19 where id = 5;
