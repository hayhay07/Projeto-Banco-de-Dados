create table tbCliente(
    idCliente int not null,
    pNomeCliente varchar(50),
    uNomeCliente varchar(50),
    constraint pktbCliente primary key (idCliente)
);

create table tbOrdem(
    idOrdem int not null,
    numOrdem int not null,
    idPessoa int,
    constraint pkidOrdem primary key (idOrdem)
);

alter table tbOrdem change idPessoa idCliente int not null;
alter table tbOrdem drop primary key;
alter table tbOrdem change idOrdem codOrdem int not null;
alter table tbOrdem add constraint pktbOrdem primary key (codOrdem);
alter table tbOrdem add constraint fktbOrdem 
  foreign key (idCliente) references tbCliente(idCliente);
create index indxNomeCliente on tbCliente(pNomeCliente);
create table tbCliente drop index indxCliente;
create table tbCliente add index indxNomeCliente(pNomeCliente);



insert into tbCliente (idCliente, pNomeCliente, uNomeCliente) 
  values (1, 'Hadassa', 'Nogueira');

insert into tbCliente (idCliente, pNomeCliente, uNomeCliente) 
  values (2, 'Joabe', 'Nobre');

insert into tbCliente (idCliente, pNomeCliente, uNomeCliente) 
  values (3, 'Nathanael', 'Rubens');

insert into tbCliente (idCliente, pNomeCliente, uNomeCliente)  
  values (4, 'Margarida', 'Londres');

insert into tbCliente (idCliente, pNomeCliente, uNomeCliente) 
  values (5, 'Gustavo', 'Micael');



insert into tbOrdem values (1, 101, 1);
insert into tbOrdem values (2, 102, 2);
insert into tbOrdem values (3, 103, 3);
insert into tbOrdem values (4, 104, 4);
insert into tbOrdem values (5, 105, 5);

create table tbFuncion (
  idFuncio int not null,
  nomeFuncio varchar(10),
  salarioFuncio numeric(15,2),
  id_Setor int,
  constraint pktbFuncion primary key (idFuncio),
  constraint fktbFuncion foreign key (id_Setor) references tbSetor(idSetor)
);

create table tbSetor(
  idSetor int not null autoencremment,
  nomeSetor varchar(20),
  constraint pktbSetor primary key (idSetor)
);


insert into tbSetor (idSetor, nomeSetor) 
  values (1, 'Desenvolvimento');

insert into tbSetor (idSetor, nomeSetor) 
  values (2, 'Manutenção');

insert into tbSetor (idSetor, nomeSetor) 
  values (3, 'Financeiro');

insert into tbSetor (idSetor, nomeSetor)  
  values (4, 'Vendas');












