# Banco de dados de uma locadora de jogos (MySQL)

Scripts de um banco de dados de locação de jogos, feitos na faculdade (Unisenai, Análise e Desenvolvimento de Sistemas).

## O que tem aqui

| Arquivo | O que é |
| --- | --- |
| `01-tabela-log.sql` | tabela `log`, que guarda o histórico de alterações |
| `02-view-top50-jogos.sql` | view `vw_top50_jogos`: os 50 jogos mais locados, por plataforma |
| `03-function-dif-datas.sql` | função `fn_calcular_dif_datas`: dias entre duas datas |
| `04-procedure-inserir-locacao.sql` | procedure `sp_inserir_locacao`: registra uma locação com a data de hoje |
| `05-trigger-log-alteracao.sql` | trigger `trg_alt_locacao`: grava no `log` os dados antigos sempre que uma locação é alterada |

## Tecnologias
MySQL (testado no schema `locacaobd`)

## Como usar
Execute os arquivos na ordem numérica, depois de criar as tabelas da base (`locacao`, `item_locacao`, `jogo`, `plataforma`, entre outras). Os arquivos 03, 04 e 05 usam `DELIMITER`, por isso rode-os no MySQL Workbench, no DBeaver ou no cliente `mysql`.

Exemplos:
```sql
SELECT * FROM vw_top50_jogos;
SELECT fn_calcular_dif_datas('2026-05-01', '2026-05-10');
CALL sp_inserir_locacao(1, 1, '2026-05-10', 15.00);
```
