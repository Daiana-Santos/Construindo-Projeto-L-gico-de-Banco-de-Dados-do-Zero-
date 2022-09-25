-- inserção de dados e queries

use Oficina;
show tables;

-- Cliente: Nome, Sobrenome, Endereço
insert into cliente (CNome, CSobrenome, CEndereço)
		values('Maria','Silva','Rua Silva de prata 29, Carangola - Cidade das Flores'),
			  ('João','Albuquerque','Rua Salvador 45, Arpoador - Cidade das Flores'),
              ('Vitória','Rodrigues','Avenida Antonio da Cruz 69, Centro - Cidade das Flores'),
              ('Angelica','Souza Lima','Rua Andorinha 78, Mirante - Cidade das Flores'),
              ('José','Alves da Silva','Rua Perdizes de prata 90, Carangola - Cidade das Flores');
select * from cliente;

-- OrdemServiço: idOsStatus, idOsValores, DataEmissão, Descrição
insert into OrdemServiço ( OsDataEmissão, OsDataEntrega, OsDescrição)
				  values ('2023/04/30','2023/05/04',  'Revisão Periódica'),
                         ('2023/01/25','2023/01/08',  'Revisão Periódica e Conserto'),
                         ('2023/03/04','2023/02/24',  'Conserto');
select * from OrdemServiço;


-- TabValores:idTabValor, Conserto , Revisão, PcsConserto,PcsRevisão 
insert into TabValores (idTabValor, Conserto , Revisão, PcsConserto,PcsRevisão )
				values(5, 100.00, 80.00, 75.00, 30.00);
select * from TabValores;

-- StatusOrdem: idStatusOs,SitStatusOrdem
insert into StatusOrdem (idStatusOs,SitStatusOrdem)
		values (1, 'Cancelado'), 
			   (2, 'Aprovado'), 
               (3, 'EmAndamento'), 
               (4, 'Aprovado');
 select * from StatusOrdem;
 
-- Mecânico: Mnome, Mtelefone,Especialidade,Endereço
insert into Mecânicos (Mnome, Mtelefone,MEspecialidade,MEndereço)
		Values ('Arnaldo', '119873456','Injeção Eletrônica', 'Rua Jacarandas - Centro - Cidade das Flores'),
			   ('Mario', '117353546','Motor', 'Rua Maria delfina - Aruã - Cidade das Flores'),
               ('Arlinda', '218364568','Polimento', 'Rua Delfin Roxo - Centro - Cidade das Flores');
select * from Mecânicos;




                         
							







