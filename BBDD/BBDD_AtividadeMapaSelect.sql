INSERT INTO `bos_unifarma`.`categoria`
(`codcategoria`,`categoria`)
VALUES (null, 'Genérico'),(null, 'Marca'),(null, 'Similiar');

INSERT INTO `bos_unifarma`.`cidade`(`codcidade`,`cidade`,`uf`)
VALUES (1,'São Paulo','SP'),(2, 'Minas Gerais', 'MG'),(3, 'Bahia', 'BA');

INSERT INTO `bos_unifarma`.`fornecedor`
(`codfornecedor`,`fornecedor`,`endereco`,`num`,`bairro`,`cep`,`contato`,`cnpj`,`insc`,`tel`,`Cidade_codcidade`)
VALUES(Null,'BioFarma','Rua Schilling',22,'Vila Leopoldina','04512-000','Sr. Marcos',042094210001,'265456998-95','1141849920',1),
	  (Null,'Drogasil','Rua Leopoldina',23,'Vila Leopoldina','04513-000','Sr. Macola',042094210002,'265456998-96','1141849921',2),
      (Null,'Drogafarma','Rua Carlos Weber',223,'Vila Leopoldina','04514-000','Sr. Marcos',042094210001,'265456998-95','1141849920',3);
   
INSERT INTO `bos_unifarma`.`produto`(`codproduto`,`descricao`,`peso`,`controlado`,`qtdemin`,`Fornecedor_codfornecedor`,`Categoria_codcategoria`)
VALUES (Null,'Azatioprina',15,'SIM',10,1,2),(Null,'Danazol',20,'SIM',15,2,3),(Null,'Fenoterol',30,'SIM',20,3,2),(Null,'Gabapentina',20,'SIM',50,2,3),
	   (Null,'Paracetamol',15,'SIM',10,1,1),(Null,'Acetazolamida',20,'SIM',15,2,2),(Null,'Fenoterol',30,'SIM',20,3,3),(Null,'Gabapentina',20,'SIM',50,2,1);

INSERT INTO `bos_unifarma`.`transportadora`(`codtransportadora`,`transportadora`,`endereco`,`num`,`bairro`,`cep`,`cnpj`,`insc`,
`contato`,`tel`,`Cidade_codcidade`)
VALUES
(null,'Bifarma','Rua Osasco',188,'São Paulo',06326000,12345678,5245793,811,1141849920,1);

INSERT INTO `bos_unifarma`.`loja`(`codloja`,`nome`,`endereco`,`num`,`bairro`,`tel`,`insc`,`cnpj`,
`Cidade_codcidade`)
VALUES
(null,'Drogasil S/A','Rua Osasco',188,'São Paulo',06326000,12345678,5245793,1),
(null,'Unifarma S/A','Rua Carapicuiba',288,'São Paulo',06326002,12345679,5245793,2);

INSERT INTO `bos_unifarma`.`saida`(`codsaida`,`total`,`frete`,`imposto`,`Loja_codloja`,`Transportadora_codtransportadora`)
VALUES
(null,'20',10000,500,1,1);

#trigger para diminuir os valores na quantidade da tabela produto    
INSERT INTO `bos_unifarma`.`itemsaida`(`codintementrada`,`lote`,`qtde`,`valor`,`Produto_codproduto`,`Saida_codsaida`)
VALUES
(null,'Lote 2',4,5,19,1);

#Testando a parte de voltar a quantidade na tabela produto
DELETE FROM itemsaida WHERE codintementrada = 9 AND Produto_codproduto = '9';

/*Parte 1 do Mapa */
select * from categoria where codcategoria = 2;
select * from categoria limit 2;
select codcidade from Cidade inner join fornecedor on cidade.codcidade = fornecedor.Cidade_codcidade;

/*Parte 2 do Mapa*/
select distinct categoria from categoria;
select fornecedor, count(*) as 'Fornecedores'
from fornecedor group by fornecedor;

/*Parte 4 do Mapa*/
select * from fornecedor where fornecedor like '%d%';

/*Parte 3 do Mapa*/
select count(*) as 'contar_forn' from fornecedor;
select avg(qtdemin) as 'Média_Produto 'from produto;

select * from categoria order by codcategoria desc;

#select * from produto
#select * from itemsaida
#select * from saida    
    