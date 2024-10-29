--create database EAP
--go
--use eap
--go
--create schema EAP
--go
-- Drop existing tables if they exist
DROP TABLE IF EXISTS EAP.Escala;
DROP TABLE IF EXISTS EAP.Paragem;
DROP TABLE IF EXISTS EAP.Cais;
DROP TABLE IF EXISTS EAP.Terminal_rodoviario;
DROP TABLE IF EXISTS EAP.Viagem;
DROP TABLE IF EXISTS EAP.Bilhete_Bagagem;
DROP TABLE IF EXISTS EAP.Bagagem;
DROP TABLE IF EXISTS EAP.Bilhete;
DROP TABLE IF EXISTS EAP.Condutor;
DROP TABLE IF EXISTS EAP.Passageiro;
DROP TABLE IF EXISTS EAP.Pessoa;
DROP TABLE IF EXISTS EAP.Eletrico;
DROP TABLE IF EXISTS EAP.Combustao;
DROP TABLE IF EXISTS EAP.Autocarro;
DROP TABLE IF EXISTS EAP.Modelo_autocarro;

create table EAP.Modelo_autocarro(
    id int identity(1,1) primary key,
    nome_modelo varchar(20) not null,
    marca varchar(20),
    ano date
)

create table EAP.Autocarro(
    id int identity(1,1) primary key,
    kms int default 0,
    num_lugares int not null,
    matricula char(8) unique not null check(matricula like '__-__-__'),
    capacidade int not null,
    modelo_id int references EAP.Modelo_autocarro(id) on delete set null on update cascade,
)

create table EAP.Combustao(
    modelo_id int primary key references EAP.Modelo_autocarro(id) on delete cascade on update cascade,
    cilindrada int,
    combustivel varchar(8) check(combustivel ='gasolina' or combustivel='gasoleo'),
)

create table EAP.Eletrico(
    modelo_id int primary key references EAP.Modelo_autocarro(id) on delete cascade on update cascade,
    autonomia int
)

create table EAP.Pessoa(
    id int identity(1,1) primary key,
    nome varchar(20) not null,
    apelido varchar(20) not null,
    email varchar(20) unique check(email like '%@%.%'),
    nif char(9) unique
)

create table EAP.Passageiro(
    pessoa_id int primary key references EAP.Pessoa(id) on delete cascade on update cascade,
    faixa_etaria varchar(7)
)

create table EAP.Condutor(
    pessoa_id int primary key references EAP.Pessoa(id) on delete cascade on update cascade,
    carta_conducao char(12) unique
    
)

create table EAP.Bilhete(
    id int identity(1,1) primary key,
    num_assento int,
    hora_compra time,
    passageiro_id int references EAP.Passageiro(pessoa_id) on delete no action on update cascade not null,
)

create table EAP.Bagagem (
	id int identity(1,1),
	tipo varchar(5) not null check (tipo = 'mao' or tipo = 'porao'),
	peso float not null,
	volume float not null, 
	primary key (id),
);

create table EAP.Bilhete_Bagagem (
	bagagem_id int,
	bilhete_id int,
	num int default 1,

	primary key (bagagem_id,bilhete_id),
	foreign key (bagagem_id) references EAP.Bagagem(id) on delete cascade on update cascade,
	foreign key (bilhete_id) references EAP.Bilhete(id) on delete cascade on update cascade,
);

create table EAP.Viagem (
	id int identity(1,1),
	hora_inicio time not null,
	autocarro_id int not null,
	condutor_id int not null,

	primary key (id),
	foreign key (autocarro_id) references EAP.Autocarro(id) on delete no action on update cascade,
	foreign key (condutor_id) references EAP.Condutor(pessoa_id) on delete no action on update cascade,
);

create table EAP.Terminal_rodoviario (
	nome varchar(15),
	latitude float,
	longitude float,

	primary key (nome),
);

create table EAP.Cais (
	rodoviaria varchar(15),
	numero int,
	is_Empty bit,

	primary key (rodoviaria, numero),
	foreign key (rodoviaria) references EAP.Terminal_rodoviario(nome) on delete no action on update cascade,
);

create table EAP.Paragem (
	viagem_id int,
	ordem int,
	rodoviaria varchar(15) not null,
	arrival_time time not null,
	departure_time time not null,

	primary key (viagem_id, ordem),
	foreign key (viagem_id) references EAP.Viagem(id) on delete no action on update cascade,
	foreign key (rodoviaria) references EAP.Terminal_rodoviario(nome) on delete no action on update cascade,
);

create table EAP.Escala (
    bilhete_id int,
    numero int,
    origem varchar(15) not null,
    destino varchar(15) not null,
    viagem_id int not null,

	check (origem != destino),
    primary key (bilhete_id, numero),
    foreign key (origem) references EAP.Terminal_rodoviario(nome) on delete no action on update no action,
    foreign key (destino) references EAP.Terminal_rodoviario(nome) on delete no action on update no action,
    foreign key (viagem_id) references EAP.Viagem(id) on delete cascade on update cascade
);

