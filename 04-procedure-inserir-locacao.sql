DELIMITER $$
CREATE PROCEDURE `locacaobd`.`sp_inserir_locacao`(
in p_cliente_id int,
in p_funcionario_id int,
in p_prev_entrega date,
in p_valor numeric(17,2)
)
begin
	insert into locacao(idcliente,idfuncionario,data_locacao,valor_locacao,previsao_entrega)
	values  (p_cliente_id,p_funcionario_id, curdate(),p_valor,p_prev_entrega);
end $$
DELIMITER ;
