-- Criação do Banco de Dados para o cenário Oficina
-- drop database Oficina;
create database Oficina;
use Oficina;
show tables;

-- criar tabela cliente 
-- drop table cliente;
create table cliente(
		idCliente int auto_increment primary key,
        idClienteOs int,
        idClienteStatusOs int,
        CNome varchar(10),
		CSobrenome varchar(20),
        CEndereço varchar (255),
		constraint fk_Cliente_OrdemServiço foreign key (idClienteOs) references OrdemServiço(idOrdemServiço),
        constraint fk_Cliente_StatusOrdem foreign key (idClienteStatusOs) references StatusOrdem(idStatusOs)
);
alter table client auto_increment=1;
 desc client;
 
 -- criar tabela Ordem de Serviço
 -- drop table OrdemServiço;
 create table OrdemServiço(
		idOrdemServiço int auto_increment primary key,
        idOsStatus int,
        idOsValores int,
        OsDataEmissão date,
        OsDataEntrega date,
		OsDescrição varchar(255),
        constraint fk_OrdemServiço_StatusOrdem foreign key (idOsStatus) references StatusOrdem(idStatusOs),
        constraint fk_OrdemServiço_TabValores foreign key (idOsValores) references TabValores(idTabValor)
);
desc OrdemServiço;

-- Criar tabela Status da Ordem de Serviço
-- drop table StatusOrdem;
create table StatusOrdem(
		idStatusOs int primary key,
        SitStatusOrdem enum ('Aprovado', 'Cancelado', 'EmAndamento')default 'Aprovado'
);
DESC StatusOrdem;

-- Criar tabela valores
-- drop table TabValores;
create table TabValores(
		idTabValor int auto_increment primary key,
        VlrConserto float,
        VlrRevisão float,
        VlrPcsConserto float,
        VlrPcsRevisão float
);

 -- Criar tabela Equipe
 -- drop table Equipe;
 create table Equipe(
			idEquipe int primary key,
            Equipe enum ('Equipe 01', 'Equipe 02', 'Equipe 03'),
            idEquipeOs int,
            idEqMecanico int,
            constraint fk_Equipe_OrdemServiço foreign key (idEquipeOs) references OrdemServiço(idOrdemServiço),
			constraint fk_Equipe_Mecânicos foreign key (idEqMecanico) references Mecânicos(idMecânico)
 );
desc equipe;

-- Criar tabela Mecânicos
-- drop table Mecânicos;
create table Mecânicos(
		idMecânico int auto_increment primary key,
		Mnome varchar(45),
        CSobrenome varchar(20),
        Mtelefone varchar (45),
        MEspecialidade varchar (45),
        MEndereço varchar(45)
);

show tables;
select * from referential_CONSTRAINTS where CONSTRAINT_SCHEMA = 'Oficina';



