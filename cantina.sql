create database cantina;

use cantina;

create table cliente(
idcliente int primary key auto_increment,
nome varchar(50),
cpf varchar (12),
sexo varchar (10),
telefone varchar(20),
nascimento DATE,
email varchar(50),
senha varchar(8)
);

insert into cliente (nome, cpf, sexo, telefone, nascimento, email, senha) 
values ('gabriel','2222222','masculino','40028922','2000-03-15','gabriel@gmail.com', aes_encrypt('54321','senha'));
insert into cliente(nome,cpf,sexo,telefone,nascimento,email,senha) values('Ivanildo Brito','1234','masculino','91111-1111','2004-05-29','ivanildo@gmail.com','123');
insert into cliente(nome,cpf,sexo,telefone,nascimento,email,senha) values('Ana Silva','5345','feminino','92222-2222','2004-01-30','ana@gmail.com','123');
insert into cliente(nome,cpf,sexo,telefone,nascimento,email,senha) values('Pedro Pedreira ','679','masculino','93333-3333','1999-09-10','pepe@gmail.com','abc');


CREATE TABLE funcionarios (
nome  VARCHAR(50) not null,
CPF DECIMAL(11,0 ) PRIMARY KEY,
email VARCHAR(50) not null,
telefone VARCHAR(11) not null,
endereco VARCHAR(70) not null,
cargo VARCHAR(50)not null,
salario DECIMAL(10)not null
);

insert into funcionarios(nome, CPF, email, telefone, endereco, cargo, salario) values ('admin','1325678','gmail','243','rua tal','funcionario/administrador','20');
insert into funcionarios(nome, CPF,  email, telefone, endereco, cargo, salario) values ('admin','123489','.','..','...','funcionario','2');
insert into funcionarios(nome, CPF,  email, telefone, endereco, cargo, salario) values ('admin','3456780','admin@gmail.com','.....','..','funcionario','22');



create table produto(
id int primary key auto_increment,
nome varchar(50),
descricao varchar(255),
tipo varchar(50),
imagem varchar(50),
preco decimal(8,2),
quantidade int
);

insert into produto(nome,descricao,tipo,imagem,preco,quantidade)
values
('Coxinha','Salgado frito recheado de frango','slagado','coxinha.png',6,4),
('Coca-Cola','Bebida gelada sabor cola','bebida','coca.png',6,5),
('Café','Bebida quente de grãos torrados do fruto de cafeeiro','bebida','cafe.png',4,2),
('Salgadinho','Snack nos sabores (Churrasco, cebola, presunto, queijo, pimenta, pão de alho, costela com limão, pastel de carne, camarão com pimenta, bacon e calabresa)','salgadinho','salgadinho.png',5,12),
('Bauru','Salgado assado recheado com presunto e queijo','salgado','bauru.png',5,6),
('Hamburgão','Salgado assado recheado com hamburguer e queijo cheddar','salgado','hamburgao.png',5,3),
('Guaraná','Bebida gaseificada sabor guaraná','bebida','guarana.png',5,8),
('Folhado de Frango','Salgado assado sabor frango','salgado','folhado.png',4,2),
('Croissant','Salgado assado com sabores (quatro queijos, frango, presunto e queijo e chocolate)','salgado','croissant.png',5,6);



create table pedido(
idpedido int primary key auto_increment,
idcliente int,
totalpedido  decimal(8,2),
datapedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
situacao varchar(50) default 'Espera'
);

insert into pedido (idpedido,idcliente,totalpedido,datapedido,situacao) values
 ('1','1','20','2022/06/12','pedido feito'),
 ('2','2','10','2022/06/10','pedido feito'),
 ('3','3','10','2022/06/10','pedido feito'),
 ('4','4','10','2022/06/10','pedido feito'),
 ('5','1','10','2022/06/10','pedido feito');




create table venda(
idvenda int primary key auto_increment,
idpedido int,
idproduto int,
quantidade int,
preco float,
total float
);

alter table venda
add constraint fk_produto foreign key(idproduto) references produto(id);

alter table venda
add constraint fk_pedido foreign key(idpedido) references pedido(idpedido);

alter table pedido
add constraint fk_cliente foreign key(idcliente) references cliente(idcliente);