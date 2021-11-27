create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes(
id bigint auto_increment,
especie varchar (200),
habilidade varchar (200),
xp bigint,
arma varchar(200),
vunerabilidade varchar(200),
primary key (id)
);
insert into tb_classes(especie,habilidade,xp,arma,vunerabilidade) values ("Guerreiro","Mortal Splash",120,"Espada","Elixir do Dragão");
insert into tb_classes(especie,habilidade,xp,arma,vunerabilidade) values ("Arqueira","Flash Orcs",100,"Arco e flecha","Ataque de curta distância");
insert into tb_classes(especie,habilidade,xp,arma,vunerabilidade) values ("Vilão","Ser rico",140,"Arma de laizer","Corpo a corpo");
insert into tb_classes(especie,habilidade,xp,arma,vunerabilidade) values ("Super Heroi","Ser rico",160,"Armadura de Ferro","Egocêntrico");
insert into tb_classes(especie,habilidade,xp,arma,vunerabilidade) values ("Bruxa da Lua","Cura por Ervas, Mágia do Caos",135,"Invocação da Deusa","Mágia do Deus Hades");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
usuario varchar (200),
nivel int,
ataque bigint,
defesa bigint,
classes_id bigint,
primary Key(id),
foreign key (personagens_id)references tb_classes (id)
);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Bruna",20,2120,1600);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Jeferson",7,1500,700);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Johnatan",10,1540,750);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Cris",15,1550,2360);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Marcela",17,1750,2400);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Erick",10,1550,2360);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Mirella",20,1680,2100);
insert into tb_personagens(usuario,nivel,ataque,defesa) values ("Geisian",35,7200,2360);

select * from td_personagens;

select * from tb_personagens where ataque>2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where usuario like "%c%";

select * from tb_personagens inner join tb_classes 
on tb_personagens.classes_id = tb_classes.id;

select tb_personagens.usuario, tb_classes.especies from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id
where tb_classes.id = 2;

