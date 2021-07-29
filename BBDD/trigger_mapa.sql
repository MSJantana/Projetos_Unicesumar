DELIMITER $

CREATE TRIGGER Tgr_itemsaida_Insert AFTER INSERT
ON itemsaida
FOR EACH ROW
BEGIN
	UPDATE Produto SET qtdemin = qtdemin - NEW.qtde
WHERE codproduto = NEW.Produto_codproduto;
END$

CREATE TRIGGER Tgr_itemsaida_Delete AFTER DELETE
ON itemsaida
FOR EACH ROW
BEGIN
	UPDATE Produto SET qtdemin = qtdemin + OLD.qtde
WHERE codproduto = OLD.Produto_codproduto;
END$

DELIMITER ;