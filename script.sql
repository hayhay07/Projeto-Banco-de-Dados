show database;
create database dfFunc;
use dbFunc;
select database();


create table tbPersons(
    idPersons int,
    lastNamePersons varchar(100),
    firstNamePersons varchar(100),
    addressPersons varchar(100),
    cityPersons varchar(100)
);


create table tbAlunos(
    matriculaAluno int,
    nomeAluno varchar(100),
    enderecoAluno varchar(100),
    cidadeAluno varchar(100),
    telefoneAluno varchar(100),
    emailAluno varchar(100),
    dataNascimentoAluno date,
    sexoAluno varchar(5),
    idadeAluno int
);


CREATE TABLE users (
    id INT NOT NULL COMMENT 'Indentificador único para cada registro',
    nome VARCHAR(255) COMMENT 'Nome completo do usuário'
);


create table tbPesdsoas(
    idPessoas in not null unique,
    primeiroNomePessoas varchar(100) not null,
    ultimoNomePessoas varchar(100) not null,
    cpfPessoas varchar(100) not null unique,
    enderecoPessoas varchar(100)
);


create table tbPessoas(
    idPessoas in not null unique,
    primeiroNomePessoas varchar(100) not null,
    ultimoNomePessoas varchar(100) not null,
    cpfPessoas varchar(100) not null unique,
    enderecoPessoas varchar(100),
    constraint rest_unique_id unique (idPessoas),
    constraint rest_unique_cpf unique (cpfPessoas)
);


create table tbAluno(
    matricula int not null,
    nome varchar(100) not null,
    idade varchar(100) not null,
    cpf varchar(100) not null,
    curso varchar(100),
    cidade varchar(100) default 'Maranguape',
    constraint rest_unique_id unique (matricula),
    constraint rest_unique_cpf unique (cpf),
    constraint rest_check_idade check (idade > 14 and idade < 20)
);


