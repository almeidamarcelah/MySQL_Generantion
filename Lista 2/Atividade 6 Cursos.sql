create database db_ccursoDaMinhaVida;
use  db_ccursoDaMinhaVida;
create table tb_categoria(
id bigint auto_increment,
formacao varchar (200),
descricao varchar (200),
codigo varchar(200),
primary key (id)
);
insert into tb_categoria (formacao,descricao,codigo) value ("Programação","aprender a programar em back-end","8855");
insert into tb_categoria (formacao,descricao,codigo) value ("Front-end","aprender a programar em front-end (O guache na tela)","1022");
insert into tb_categoria (formacao,descricao,codigo) value ("Data Science","utilizar banco de dados","2236");
insert into tb_categoria (formacao,descricao,codigo) value ("Mobile","aprender a programação para android","4469");
insert into tb_categoria (formacao,descricao,codigo) value ("Inovação e Gestão","gestão Scrum e desenvolvimento interpessoal","2237");

create table tb_cursos(
id bigint auto_increment,
curso varchar (200),
duracao varchar (200),
preco decimal (10,2),
quantidadeAulas bigint (200),
categoria_id bigint,
primary key(id),
foreign key (categoria_id)references tb_categoria(id)
);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Java e Orientação a Objetos","130 horas",56.95,12,1);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Kotlin","100 horas",59.96,6,1);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("React JS","90 horas",62.80,9,2);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Modelagem de Dados","120 horas",55.75,5,3);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Android"," 80 horas",75.60,10,4);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Gerente Ágil","100 horas",36.55,13,5);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Gestão de Qualidade","96 horas",64.00,7,5);
insert into tb_cursos (curso,duracao,preco,quantidadeAulas,categoria_id) value ("Flutter"," 110 horas",56.9,11,4);

select*from tb_cursos;
select*from tb_cursos where preco>50.00;
select*from tb_cursos where preco between 3.00 and 60.00;
select*from tb_cursos where curso like "%j%";

select tb_categora.formacao, tb_categoria.descricao, tb_categoria.codigo, 
tb_cursos.curso,tb_cursos.duracao,tb_cursos.preco,tb_cursos.quantidadeAulas,tb_cursos.categoria_id
from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id;

select tb_categora.formacao, tb_categoria.descricao, tb_categoria.codigo, 
tb_cursos.curso,tb_cursos.duracao,tb_cursos.preco,tb_cursos.quantidadeAulas,tb_cursos.categoria_id
from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id
where categoria_id = 1 or categoria_id = 2;