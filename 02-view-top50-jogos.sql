create view vw_top50_jogos as 
select j.titulo, p.nome, sum(il.qtde) unidades_locadas
from locacao l 
      inner join item_locacao il on   il.idlocacao = l.idlocacao 
      inner join jogo j on j.idjogo = il.idjogo
      inner join plataforma p on p.idplataforma = il.idplataforma 
group by j.titulo, p.nome
order by 3 desc limit 50