DELIMITER $$
CREATE FUNCTION `locacaobd`.`fn_calcular_dif_datas`(data_ini date, data_fim date) RETURNS int(11)
    DETERMINISTIC
begin
	      return datediff(data_fim,data_ini);
       end $$
DELIMITER ;
