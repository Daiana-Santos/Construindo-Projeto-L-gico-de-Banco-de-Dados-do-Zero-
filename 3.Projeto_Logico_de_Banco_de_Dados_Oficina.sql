-- Construindo o Primeiro Projeto Lógico de Banco de Dados

Use Oficina;

-- # Recuperação simples com SELECT statement
select * from Equipe order by idEquipe  ;

-- # Filtros com o WHERE statement
select OsDadosDoVeículo,count(*), OsStatus, OsDescrição from OrdemServiço 
		where OsDescrição = 'Revisão Periódica e Conserto' group by OsDadosDoVeículo;
-- Seleciona Mecânico pela especialidade.
select MNome ,MEspecialidade,MTelefone,MEndereço from Equipe where MEspecialidade = 'Polimento';
-- Verifica quantidade de produtos no vendedor acima de 10unidades.
select prodQuantity from produtcSeller where prodQuantity > 10;


-- # Crie expressões para criar atributos derivados
select count(distinct VRevisão) from ValorServiços;
-- Mostra a valor Minimo e Máximo e o Total da tabela Valor Pecas
select sum(VPConserto) as Total_R$, max(VPConserto) as Max_R$, min(VPConserto)  as Min_R$ from ValorPecas;
-- Filtra e agrupa Dados do veiculo de acordo com a Data de Entrega
select OsDadosDoVeículo, count(*), OsDataEntrega from OrdemServiço group by OsDataEntrega;

-- # Defina Ordenações dos dados com ORDER BY 
select OsDescrição from OrdemServiço order by OsDataEmissão;
select * from cliente order by idCliente ;

-- #Condições de filtros aos grupos - HAVING statement
select MBairro, count(*) from Equipe group by MBairro having count(*) > 1;
-- Filtra clientes com o sobrenome 'Silva'
select CNome,CSobrenome, count(*) from cliente where CSobrenome like ' Silva' group by idCliente having count(*) = 1;

-- #Crie junções entre tabelas para fornecer uma perspectiva mais complexas do dados 
select * from OrdemServiço join cliente;
select * from OrdemServiço inner join cliente on idOrdemServiço = idCliente;
select concat(CNome,' ',CSobrenome) as Nome_Completo, Ccpf,CEndereço from OrdemServiço 
	inner join cliente on idOrdemServiço = idCliente 
	where CEndereço like '%Carangola%'
	order by idCliente;

