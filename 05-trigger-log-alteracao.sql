DELIMITER $$
CREATE trigger trg_alt_locacao
before update on locacao 
for each row
begin
	insert into log(texto)
	values (
	    concat('Alteração de registro: id-',
	old.idlocacao,'cli-',
	old.idcliente,' fun-',
	old.idfuncionario,' dtloc-',
	old.data_locacao,' vlr-',
	old.valor_locacao,' mul-',
	coalesce(old.multa,'NULL'), ' dtent-',
	coalesce(old.data_entrega,'NULL')
	)
);
	
end $$
DELIMITER ;
