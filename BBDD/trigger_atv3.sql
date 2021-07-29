
DELIMITER $

CREATE TRIGGER tg_atualiza_compra AFTER INSERT
ON compra
FOR EACH ROW
BEGIN
	UPDATE estoque SET qtdest = qtdest + 1
WHERE compra_idest = NEW.idest;
END$

insert into compra values (10 ,2, '1');
insert into fornecedor values (2,'12345678932547','Bioritmo');

select * from compra