create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_categorias(
id bigint auto_increment,
nome varchar(250),
ativo boolean,
primary key(id)

 )
 select * from tb_categorias;
 insert into  tb_categorias (nome,ativo) values ("lake", true);
 
use db_farmacia_bem_estar;
create table tb_produtos(
id bigint auto_increment,
nome varchar(100),
preco decimal(10,2),
uso varchar(50),
linha_profissional boolean,
categoria_id bigint not null, 
primary key(id),
foreign key(categoria_id) references tb_categorias (id)
);

insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("colorama",5.99,"adulto",true,1);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("colortop",2.99,"adulto",true,1);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("acaba tudo",250.99,"adulto",true,2);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("limpa geral",50.99,"adulto",false,2);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("pure vudu",500.99,"adulto",false,3);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("kaiake",100.99,"adulto",true,3);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("pinta dedo",11.99,"adulto",false,7);
insert into tb_produtos (nome,preco,uso,linha_profissional,categoria_id)
values("fixa tudo",30.99,"adulto",false,1);

select*from tb_produtos where preco < 50;
select*from tb_produtos where preco  >=50 and preco <= 150;
select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id


