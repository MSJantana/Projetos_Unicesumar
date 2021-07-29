/* Criando o Banco de Dados
CREATE SCHEMA IF NOT EXISTS bos_covid19
*/

/* Criação de Tabelas*/

CREATE TABLE IF NOT EXISTS tipo_local (
	idtipo_local int not null, 
    hospital Varchar(45), 
    clinica varchar(45), 
    UPA varchar(45),
    local_atendimento_idlocal_atendimento int not null,
    local_atendimento_medico_idmedico int not null) engine= InnoDB;
        
   # ALTER TABLE bos_covid19.tipo_local add constraint pk_local_atendimento_tipo_local foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
   # ALTER TABLE bos_covid19.tipo_local add constraint pk_local_atendimento_medico_tipo_local foreign key (local_atendimento_medico_idmedico) references bos_covid19.local_atendimento (medico_idmedico);
          
CREATE TABLE IF NOT EXISTS local_atendimento (
	idlocal_atendimento int not null,
    medico_idmedico int not null,
    nome varchar(50),
    cnpj int not null,
    telefone varchar(10))engine= InnoDB;
    
# ALTER TABLE bos_covid19.local_atendimento add constraint pk_medico_local_atendim foreign key (medico_idmedico) references bos_covid19.medico (idmedico);
     
CREATE TABLE IF NOT EXISTS medico (
	idmedico int not null ,
	nome varchar(150) not null,
    funcao varchar(45) not null,
    local varchar(10) not null,
    turno varchar(45),
    telefone varchar(45))engine= InnoDB;
           
    
CREATE TABLE IF NOT EXISTS funcao (
	idfuncao int not null ,
    medico varchar(45),
    enfermeiro varchar(45),
    zelador varchar(45),
    medico_idmedico int not null)engine= InnoDB;
    
     # ALTER TABLE funcao add constraint pk_idmedico_funcao foreign key (medico_idmedico) references bos_covid19.medico(idmedico);

CREATE TABLE IF NOT EXISTS endereco (
	rua varchar(15),
    numero int(8) not null,
    bairro varchar(20),
    cep varchar(8),
    cidade varchar(20),
    paciente_idpaciente int not null,
    local_atendimento_idlocal_atendimento int not null,
    local_atendimento_medico_idmedico int not null,
    medico_idmedico int not null)engine= InnoDB;
    
   # ALTER TABLE endereco add constraint pk_paciente_endereco foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
   # ALTER TABLE endereco add constraint pk_medico_endereco foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
   # ALTER TABLE endereco add constraint pk_local_atendimento_idlocal_endereco foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
   # ALTER TABLE endereco add constraint pk_local_atendimento_medico_endereco foreign key (local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);

CREATE TABLE IF NOT EXISTS exame (
	idexame int not null ,
    resultado varchar(45),
    paciente_idpaciente int not null,
    medico_idmedico int not null)engine= InnoDB;
    
 # ALTER TABLE exame add constraint pk_paciente_exame foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
 # ALTER TABLE exame add constraint pk_paciente_exame_medico foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
    
CREATE TABLE IF NOT EXISTS diagnostico (
	iddiagnostico int not null,
    status varchar(1),
    prontuario_idprontuario int not null)engine= InnoDB;
    
    # ALTER TABLE diagnostico add constraint pk_prontuario_diagnostico foreign key (prontuario_idprontuario) references bos_covid19.prontuario(idprontuario);
        
CREATE TABLE IF NOT EXISTS prontuario (
	idprontuario int not null,
	origem_paciente varchar(45),
    locais_atedimento varchar(45),
    paciente_idpaciente int not null,
    paciente_local_atendimento_idlocal_atendimento int not null,
    paciente_local_atendimento_medico_idmedico int not null)engine= InnoDB;
    
   # ALTER TABLE prontuario add constraint pk_paciente_idpaciente_prontuario foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
   # ALTER TABLE prontuario add constraint pk_paciente_local_atendimento_idlocal_prontuario foreign key (paciente_local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
   # ALTER TABLE prontuario add constraint pk_paciente_local_atendimento_medico_prontuario foreign key (paciente_local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);

CREATE TABLE IF NOT EXISTS paciente (
	idpaciente int not null ,
	nome varchar(150),
	cpf int not null,
	telefone int not null,
    medico_idmedico int not null,
    local_atendimento_idlocal_atendimento int not null,
    local_atendimento_medico_idmedico int not null)engine= InnoDB;
    
   # ALTER TABLE paciente add constraint pk_medico_idmedico foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
   # ALTER TABLE paciente add constraint pk_paciente_local_atendimento_idlocal_paciente foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
   # ALTER TABLE paciente add constraint pk_paciente_local_atendimento_medico_paciente foreign key (local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);
        
CREATE TABLE IF NOT EXISTS pessoa_con (
	paciente int not null,
	nome varchar(150))engine= InnoDB;
    
     # ALTER TABLE pessoa_con add constraint pk_pacienteid_pessoa_con foreign key (paciente) references bos_covid19.paciente(idpaciente);
        
/* Criando Chaves Primárias 
ALTER TABLE tipo_local add primary key (idtipo_local);
ALTER TABLE local_atendimento add primary key (idlocal_atendimento,medico);
ALTER TABLE medico add primary key (idmedico);
ALTER TABLE funcao add primary key (idfuncao);
ALTER TABLE exame add primary key (idexame);
ALTER TABLE diagnostico add primary key (iddiagnostico);
ALTER TABLE prontuario add primary key (idprontuario);
ALTER TABLE paciente add primary key (idpaciente,local_atendimento_idlocal_atendimento,local_atendimento_medico_idmedico);
*/

/* Criando Chaves Estrangeiras

 ALTER TABLE bos_covid19.tipo_local add constraint pk_local_atendimento_tipo_local foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
 ALTER TABLE bos_covid19.tipo_local add constraint pk_local_atendimento_medico_tipo_local foreign key (local_atendimento_medico_idmedico) references bos_covid19.local_atendimento (medico_idmedico);
 ALTER TABLE bos_covid19.local_atendimento add constraint pk_medico_local_atendim foreign key (medico_idmedico) references bos_covid19.medico (idmedico);
 ALTER TABLE bos_covid19.local_atendimento add constraint pk_idmedico_local_atendim foreign key(medico_idmedico) references bos_covid19.medico(idmedico);
 ALTER TABLE bos_covid19.funcao add constraint pk_idmedico_funcao foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
 ALTER TABLE bos_covid19.endereco add constraint pk_paciente_endereco foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
 ALTER TABLE bos_covid19.endereco add constraint pk_medico_endereco foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
 ALTER TABLE bos_covid19.endereco add constraint pk_local_atendimento_idlocal_endereco foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
 ALTER TABLE bos_covid19.endereco add constraint pk_local_atendimento_medico_endereco foreign key (local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);   
 ALTER TABLE bos_covid19.exame add constraint pk_paciente_exame foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
 ALTER TABLE bos_covid19.exame add constraint pk_paciente_exame_medico foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
 ALTER TABLE bos_covid19.diagnostico add constraint pk_prontuario_diagnostico foreign key (prontuario_idprontuario) references bos_covid19.prontuario(idprontuario);
 ALTER TABLE bos_covid19.prontuario add constraint pk_paciente_idpaciente_prontuario foreign key (paciente_idpaciente) references bos_covid19.paciente(idpaciente);
 ALTER TABLE bos_covid19.prontuario add constraint pk_paciente_local_atendimento_idlocal_prontuario foreign key (paciente_local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
 ALTER TABLE bos_covid19.prontuario add constraint pk_paciente_local_atendimento_medico_prontuario foreign key (paciente_local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);
 ALTER TABLE bos_covid19.paciente add constraint pk_medico_idmedico foreign key (medico_idmedico) references bos_covid19.medico(idmedico);
 ALTER TABLE bos_covid19.paciente add constraint pk_paciente_local_atendimento_idlocal_paciente foreign key (local_atendimento_idlocal_atendimento) references bos_covid19.local_atendimento (idlocal_atendimento);
 ALTER TABLE bos_covid19.paciente add constraint pk_paciente_local_atendimento_medico_paciente foreign key (local_atendimento_medico_idmedico) references bos_covid19.medico (idmedico);
 ALTER TABLE bos_covid19.pessoa_con add constraint pk_pacienteid_pessoa_con foreign key (paciente) references bos_covid19.paciente(idpaciente);
 
*/



