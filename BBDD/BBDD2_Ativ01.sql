/* Criando o Banco de Dados
CREATE SCHEMA IF NOT EXISTS bos_covid19
*/

/* Criação de Tabelas*/

CREATE TABLE IF NOT EXISTS tipo_local (
	idtipo_local int not null, 
    hospital Varchar(45), 
    clinica varchar(45), 
    UPA varchar(45),
    primary key (idtipo_local),
    constraint pk_local_atendimento foreign key(idtipo_local) references local_atendimento(idlocal_atendimento)) engine= InnoDB;
    
    
   # alter table bos_covid19.local_atendimento add constraint pk_local_atendimento foreign key (idlocal_atendimento) references bos_covid19.tipo_local (idtipo_local);
   # alter table bos_covid19.local_atendimento add constraint pk_idmedico foreign key(idmedico) references bos_covid19.medico(idmedico);
   # alter table bos_covid19.tipo_local drop foreign key pk_local_atendimento;
   # alter table local_atendimento drop foreign key pk_idmedico;
   # constraint pk_idmedico foreign key(medico) references medico(idmedico)
    
   
CREATE TABLE IF NOT EXISTS local_atendimento (
	idlocal_atendimento int not null,
    medico int not null,
    nome varchar(50),
    cnpj int not null,
    telefone varchar(10),
    primary key (idlocal_atendimento, medico))engine= InnoDB;
    
CREATE TABLE IF NOT EXISTS medico (
	idmedico int not null ,
	nome varchar(150),
    funcao varchar(45),
    local varchar(10),
    turno varchar(45),
    telefone varchar(45),
    primary key(idmedico))engine= InnoDB;
    
CREATE TABLE IF NOT EXISTS funcao (
	idfuncao int not null ,
    medico varchar(45),
    enfermeiro varchar(45),
    zelador varchar(45),
    primary key (idfuncao))engine= InnoDB;

CREATE TABLE IF NOT EXISTS endereco (
	rua varchar(15),
    numero int(8) not null,
    bairro varchar(20),
    cep varchar(8),
    cidade varchar(20))engine= InnoDB;

CREATE TABLE IF NOT EXISTS exame (
	idexame int not null ,
    resultado varchar(45),
    primary key (idexame))engine= InnoDB;

CREATE TABLE IF NOT EXISTS diagnostico (
	iddiagnostico int not null,
    status varchar(1),
    primary key(iddiagnostico))engine= InnoDB;
        
CREATE TABLE IF NOT EXISTS prontuario (
	idprontuario int not null,
	origem_paciente varchar(45),
	primary key(idprontuario))engine= InnoDB;

CREATE TABLE IF NOT EXISTS paciente (
	idpaciente int not null ,
	nome varchar(150),
	cpf int not null,
	telefone int not null,
    primary key(idpaciente))engine= InnoDB;
        
CREATE TABLE IF NOT EXISTS pessoa_con (
	nome varchar(150))engine= InnoDB;
        
/* Criando Chaves Primárias 
ALTER TABLE tipo_local add primary key (idtipo_local);
ALTER TABLE local_atendimento add primary key (idlocal_atendimento,medico);
ALTER TABLE medico add primary key (idmedico);
ALTER TABLE funcao add primary key (idfuncao);
ALTER TABLE exame add primary key (idexame);
ALTER TABLE diagnostico add primary key (iddiagnostico);
ALTER TABLE prontuario add primary key (idprontuario);
ALTER TABLE paciente add primary key (idpaciente);

CREATE TABLE Products (
    id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE WarehouseMovements (
    time DATETIME NOT NULL,
    product1 INT NOT NULL,local_atendimentolocal_atendimento
    product2 INT NOT NULL,
    CONSTRAINT fk_product_1 FOREIGN KEY (product1) REFERENCES Products (id),
    CONSTRAINT fk_product_2 FOREIGN KEY (product2) REFERENCES Products (id)
    
  ALTER TABLE `bos_covid19`.`tipo_local` 
  ADD CONSTRAINT `pk_local_atendimento`
  FOREIGN KEY (`idtipo_local`)
  REFERENCES `bos_covid19`.`local_atendimento` (`idlocal_atendimento`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;    
);
*/

/*Criando Chaves Estrangeiras

alter table bos_covid19.local_atendimento add constraint local_atendimento_pk_tipo_local foreign key (idlocal_atendimento) references bos_covid19.tipo_local (idtipo_local);

*/





