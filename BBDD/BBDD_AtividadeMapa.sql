-- Script generated by Marcio Jose Santana RA 19102877-5
-- Disciplina: Banco de Dados II 52/2021
-- Atividade Mapa: Engenharia de Software    Version: 1.0

/* Criando o Banco de Dados do Sistema Unifarma (Bussines Unifarma System)*/
CREATE SCHEMA IF NOT EXISTS BOS_Unifarma;


/* Criação de Tabelas */
Use BOS_Unifarma;


create table if not exists Categoria (
	codcategoria int not null auto_increment,
    categoria varchar(70),
    constraint pk_categoria primary key (codcategoria))engine= InnoDB;

create table if not exists ItemEntrada (
	coditementrada int not null auto_increment,
    lote varchar(45),
    qtde int not null,
    valor float,
    produto_codproduto int not null,
    entrada_codentrada int not null,
    constraint pk_coditementrada primary key (coditementrada)) engine = InnoDB;
    
create table if not exists Entrada (
	codentrada int not null auto_increment,
    dataped date,
    dataentr date,
    total varchar(45),
    frete double,
    num_nf int not null,
    imposto varchar(45),
    Transportadora_codtransportadora int not null,
    constraint pk_codentrada primary key (codentrada))engine = InnoDB;
    
create table if not exists Produto (
	codproduto int not null auto_increment,
    descricao varchar(45),
    peso double,
    controlado varchar(45),
    qtdemin double,
    Fornecedor_codfornecedor int not null,
    Categoria_codcategoria int not null,
    constraint pk_produto primary key (codproduto))engine = InnoDB;
    
create table if not exists Fornecedor (
	codfornecedor int not null auto_increment,
    fornecedor varchar(45),
    endereco varchar(45),
    num int not null,
    bairro varchar(45),
    cep varchar(45),
    contato varchar(45),
    cnpj bigint(45) not null,
    insc varchar(45),
    tel bigint(12),
    Cidade_codcidade int not null,
    constraint pk_codfornecedor primary key (codfornecedor))engine = InnoDB;
    
create table if not exists Cidade (
	codcidade int not null,
    cidade varchar(45),
    uf varchar(45),
    constraint pk_codcidade primary key (codcidade))engine = InnoDB;
    
 create table if not exists ItemSaida (
	codintementrada int not null auto_increment,
    lote varchar(45),
    qtde int not null,
    valor double,
    Produto_codproduto int not null,
    Saida_codsaida int  not null,
    constraint pk_codintementrada primary key (codintementrada)) engine = InnoDB;
    
create table if not exists Loja (
	codloja int not null auto_increment,
    nome varchar(45),
    endereco varchar(45),
    num int not null,
    bairro varchar(45),
    tel bigint(10),
    insc varchar(45),
    cnpj varchar(45),
    Cidade_codcidade int not null,
    constraint pk_codloja primary key (codloja)) engine = InnoDB;
    
create table if not exists Transportadora (
	codtransportadora int not null auto_increment,
    transportadora varchar(45),
    endereco varchar(45),
    num int not null,
    bairro varchar(45),
    cep int not null,
    cnpj int not null,
    insc int not null,
    contato bigint(10),
    tel bigint(10),
    Cidade_codcidade int not null,
    constraint pk_codtransportadora primary key (codtransportadora)) engine = InnoDB;
    
create table if not exists Saida(
	codsaida int not null auto_increment,
    total varchar(45),
    frete double,
    imposto varchar(45),
    Loja_codloja int not null,
    Transportadora_codtransportadora int not null,
    constraint pk_codsaida primary key (codsaida)) engine = InnoDB;
   
   /* Criando Chaves Estrangeiras */
   
   ALTER TABLE Produto 
   add constraint fk_Produto_Fornecedor1 
   foreign key (Fornecedor_codfornecedor) 
   references Fornecedor (codfornecedor);
   
ALTER TABLE Produto 
   add constraint fk_Produto_Categoria1 
   foreign key (Categoria_codcategoria) 
   references Categoria (codcategoria);
   
ALTER TABLE ItemSaida 
   add constraint fk_ItemSaida_Saida1 
   foreign key (Saida_codsaida) 
   references Saida (codsaida);
   
  ALTER TABLE ItemSaida 
   add constraint fk_ItemSaida_Produto1 
   foreign key (Produto_codproduto) 
   references Produto (codproduto); 
   
ALTER TABLE Saida 
   add constraint fk_Saida_Loja1 
   foreign key (Loja_codloja) 
   references Loja (codloja); 
   
ALTER TABLE Saida 
   add constraint fk_Saida_Transportadora1 
   foreign key (Transportadora_codtransportadora) 
   references Transportadora (codtransportadora);
   
ALTER TABLE Loja 
   add constraint fk_Loja_Cidade1 
   foreign key (Cidade_codcidade) 
   references Cidade (codcidade);  
   
ALTER TABLE Transportadora 
   add constraint fk_Transportadora_Cidade1 
   foreign key (Cidade_codcidade) 
   references Cidade (codcidade);
   
 ALTER TABLE Fornecedor 
   add constraint fk_Fornecedor_Cidade1 
   foreign key (Cidade_codcidade) 
   references Cidade (codcidade);
   
 ALTER TABLE ItemEntrada 
   add constraint fk_ItemEntrada_Produto1 
   foreign key (produto_codproduto) 
   references Produto (codproduto);   
   
  ALTER TABLE ItemEntrada 
   add constraint fk_ItemEntrada_Entrada1 
   foreign key (entrada_codentrada) 
   references Entrada (codentrada); 
   
ALTER TABLE Entrada 
   add constraint fk_Entrada_Transporadora1 
   foreign key (Transportadora_codtransportadora) 
   references Transportadora (codtransportadora); 
   