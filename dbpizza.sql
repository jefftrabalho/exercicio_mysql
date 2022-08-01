create database db_pizzaria_legal;
use  db_pizzaria_legal;
create table tb_categorias(
id bigint auto_increment,
doce varchar(3),
salgada varchar (3),
primary key (id)

);

create table tb_pizzas(
id bigint auto_increment,
tamanho  varchar(250),
recheio varchar(250),
borda varchar (250),
id_categoria bigint not null,
tipo_de_entrega varchar(255),
primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

insert into tb_categorias (doce,salgada )values ("sim" ,"nao");
insert into tb_categorias(doce,salgada) values ("nao", "sim");
insert into tb_categorias(doce,salgada ) values("sim", "sim");
insert into tb_pizzas(tamanho,recheio,borda,id_categoria,tipo_de_entrega) 
values("pequena","prestigio", "chocolate",1 ,"retirar");
insert into tb_pizzas(tamanho,recheio,borda,id_categoria,tipo_de_entrega) 
values("grande","bahiana", "chedar",1 ,"entregar");
select * from tb_categorias where id >=2;
select * from tb_pizzas where recheio like "%c%";
select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categoria