create database bd_cds;
use bd_cds;

create table tb_artista(
Cod_Art int not null auto_increment,
Nome_Art varchar (100) not null unique,
constraint pk_codart primary key(Cod_Art)
);


create table tb_gravadora(
Cod_Grav int not null auto_increment,
Nome_Grav varchar(50) not null unique,
constraint Cod_Grav primary key(Cod_Grav)
);

create table tb_categoria(
Cod_Cat int not null auto_increment,
Nome_Cat varchar(50) not null unique,
constraint Cod_Grav primary key(Cod_Cat)
);

create table tb_estado(
Sigla_Est char(2) not null,
Nome_Est char(50) unique not null,
constraint Pk_SiglaEst primary key(Sigla_Est)
);

create table tb_cidade(
Cod_Cid int not null auto_increment,
Nome_Cid varchar(100) not null,
Sigla_Est char(2) not null,
constraint Pk_CodCid primary key(Cod_Cid),
constraint Fk_SiglaEst foreign key(Sigla_Est) references tb_estado(Sigla_Est)
);
describe tb_cidade;

create table tb_cliente(
Cod_Cli int not null auto_increment,
Cod_Cid int not null,
Nome_Cli varchar(100) not null,
End_Cli varchar(200) not null,
Renda_Cli decimal(10,2) not null default 0,
Sexo_Cli enum('F', 'M')not null default 'F',
constraint Pk_CodCli primary key(Cod_Cli),
constraint Fk_CodCid foreign key(Cod_Cid)  references tb_cidade(Cod_Cid)
);
describe tb_cliente;


create table tb_conjuge(
Cod_Cli int not null,
Nome_Conj varchar (100) not null,
Renda_Conj decimal(10,2) not null default 0,
Sexo_Conj char(2) not null
);
describe tb_conjuge;
