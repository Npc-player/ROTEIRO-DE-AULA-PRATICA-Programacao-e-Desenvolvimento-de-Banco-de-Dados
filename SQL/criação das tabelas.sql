-- language: sql

Create table if not exists Estado (
Id INT auto_increment primary key,
Nome VARCHAR(50) not null unique,
UF CHAR(2) not null unique
);

CREATE TABLE if not exists Municipio (
Id INT auto_increment primary key,
Estado_Id INT,
Nome VARCHAR(80) not null,
CodIBGE INT not null unique,
constraint fk_Id_Estado
foreign key (Estado_Id) references estado (Id)
);

CREATE TABLE Cliente (
Id INT auto_increment PRIMARY KEY,
Nome VARCHAR(80) not null,
CPF CHAR(11) not null unique,
Celular CHAR(11) not null unique,
EndLogradouro VARCHAR(100) not null,
EndNumero VARCHAR(10) not null,
EndMunicipio INT not null,
EndCEP CHAR(8) not null,
Municipio_Id INT not null,
constraint fk_Id_Municipio 
foreign key (Municipio_Id) references municipio (Id) 
);

create table if not exists ContaReceber (
Id INT auto_increment PRIMARY KEY,
Cliente_ID INT not null,  
FaturaVendaId INT not null unique,
DataConta DATE not null,
DataVencimento DATE not null,
Valor DECIMAL(18,2) not null,
Situação ENUM('1','2','3') not null,
constraint fk_Id_Cliente 
foreign key (Cliente_ID) 
references Cliente (Id)
);
