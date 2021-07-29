
DELIMITER $
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`tg_atualiza_compra_nova` AFTER INSERT ON `compra` FOR EACH ROW
if New.idcompra <=> idcompra then
BEGIN

	update estoque
    set qtdest = (estoque_has_compra_qtd + qtdest)
    where nmcompra = compra_nmcompra;
	
END;
END IF;
