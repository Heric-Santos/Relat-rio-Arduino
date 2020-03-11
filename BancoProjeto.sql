create database EstacionamentoX;
use EstacionamentoX;

create table tbCliente (
idCliente int primary key, 
login varchar (40),
senha varchar (20) 
);

create table tbVagas (
idVagas int primary key,
numVagas int,
numVagasEsp int,
numVagasMotos int,
numVagasCarros int,
situacao varchar (20)
);

create table tbVeiculo(
idVeiculo int primary key,
marca varchar (20),
placa varchar (9),
cor varchar (20),
modelo varchar (20),
horarioEntrada varchar (7),
horarioSaida varchar (7),
valorTotal varchar (10)
);

create table tbTelefoneUsuario(
idTelefoneUsuario int primary key,
telefoneUsuario varchar (21)
);

create table tbTelefoneCliente(
idTelefoneCliente int primary key,
telefoneCliente varchar (21) 
);

create table tbUsuario(
idUsuario int primary key,
nome varchar (21), 
rg varchar (15),
cpf varchar (15),
idVeiculo int,
idTelefoneUsuario int,
foreign key (idVeiculo) references tbVeiculo(idVeiculo),
foreign key (idTelefoneUsuario) references tbTelefoneUsuario (idTelefoneUsuario)
);

create table tbSensor (
idSensor int primary key,
idVagas int,
situacao varchar (20),
foreign key (idVagas) references tbVagas (idVagas)
);
