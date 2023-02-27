create table cliente
(
    cpf int auto_increment primary key,
    nome varchar(100) not null unique,
    telefone char(11) not null,
    endereco varchar(100) not null
);
 
 
create table carros
(
    id_carro int auto_increment primary key,
    placa char(7) not null,
    modelo varchar(20) not null,
    cod_marca int not null,
    marca char(20) not null,
    ano int not null,
    data_aluguel date not null,
    data_devolucao date not null,
    valor numeric (10,2),
    cpf_cliente int not null,
    cod_alocacao_alocacao int not null,
       constraint carros_fk_cliente
        foreign key (cpf_cliente) references cliente(cpf)
        on delete restrict
        on update cascade
         constraint carros_fk_alocacao
         foreign key (cod_alocacao_alocacao) references alocacao(cod_alocacao)
         on delete restrict
         on update cascade
);
 
create table alocacao
(
    cod_alocacao int auto_increment primary key,
    cod_cliente int not null,
    cod_carro int not null,
    data_aluguel date not null,
    data_devolucao date not null,
    valor numeric (10,2),
    num_registro int not null
);
 
 
insert into cliente
values(0567421235, 'luis silva', 997654534, 'rua balbino')
insert into cliente
values(1111111111, 'rodolfo monteiro', 92222222, 'rua londres')
 
insert into carros (id_carro, placa, modelo, cod_marca, marca, ano, data_aluguel, data_devolucao, valor, cpf_cliente, cod_alocacao_alocacao)
values(1256, 'min3b5', 'plus', 001, 'vw', 2016, '2017-10-19', '2017-12-25', 10000.0, 0567421235, '123')
insert into carros (id_carro, placa, modelo, cod_marca, marca, ano, data_aluguel, data_devolucao, valor, cpf_cliente, cod_alocacao_alocacao)
values(7777, 'min355', 'io', 002, 'vw', 2020, '2021-09-19', '2021-09-25', 14000.0, 1111111111, 124)
 
insert into alocacao (cod_alocacao, cod_cliente, cod_carro, data_aluguel, data_devolucao, valor, num_registro)
values(123, 0567421235, 1256, '2017-10-19', '2017-10-25', 10000.0, 59)
insert into alocacao (cod_alocacao, cod_cliente, cod_carro, data_aluguel, data_devolucao, valor, num_registro)
values(138, 1111111111, 7777, '2021-09-19', '2021-09-25', 14000.0, 89)
 
 
1-  SELECT * FROM alocacao  WHERE data_aluguel BETWEEN '2021-09-19' and '2021-09-25'
 
2-  SELECT * FROM cliente WHERE nome LIKE '%silva%'
 
3-  UPDATE alocacao
    SET valor = valor * 1.2
    WHERE valor = (SELECT MIN(valor) FROM alocacao)
 
 
 
 
 
 
 
    create table pesquisador
    (
    cod_pesquisador int auto_increment primary key,
    nome varchar(100) not null unique
    );
 
 
 
     create table pesquisador_artigos
    (
    id int auto_increment primary key,
    cod_pesquisador_pesquisador int not null,
       cod_artigo_artigos int not null,
     constraint pesquisador_artigos_fk_pesquisador
      foreign key (cod_pesquisador_pesquisador) references pesquisador(cod_pesquisador)
        on delete restrict
         on update cascade
     constraint pesquisador_artigos_fk_artigos
     foreign key (cod_artigo_artigos) references artigos(cod_artigo)
        on delete restrict
         on update cascade
    );
    create table artigos
    (
    cod_artigo int auto_increment primary key,
    titulo varchar(100) not null,
    pag_inicial varchar(100) not null,
    pag_final varchar(100) not null,
   titulo_periodico varchar(100),
   editora varchar(100) not null
 
    );
 
3-  insert into pesquisador (cod_pesquisador, nome )
    values(555, 'joao pedro')
    insert into pesquisador (cod_pesquisador, nome )
    values(575, 'joao lucas')
 
 1 e 2-insert into artigos(cod_artigo, titulo, pag_inicial, pag_final, titulo_periodico, editora )
       values(1234, 'Não existe vitoria sem sacrificio', 'comeco da historia de Diego', 'conta que nunca desistiu de seus sonhos', 'Benvira', 'Saraiva')
 
 
 
 
 
 
 
 
create table socios
(
    id int auto_increment primary key,
    numero char(11) not null,
    endereco varchar(100) not null,
    nome varchar(100) not null unique,
    cod_tipo_socio int not null,
    descricao_socio varchar(100) not null
);
 
 
 
create table servicos
(
    cod_servico int auto_increment primary key,
    descricao varchar(200),
    mes_referencia date not null,
    valor_pago numeric(3,2),
    id_socios int not null,
    constraint servicos_fk_socios
    foreign key (id_socios) references socios(id)
        on delete restrict
         on update cascade
);
 
 
 
 
 1 e 2- insert into servicos(cod_servico, descricao, mes_referencia, valor_pago, id_socios )
        values(556,'gerenciar pizzaiolos', '2020-01', 500.0 , 0567421235)
        insert into servicos(cod_servico, descricao, mes_referencia, valor_pago, id_socios )
        values(506,'gerenciar restaurante', '2020-01', 700.0 , 55555555)
 
3-  insert into socios (id, numero,endereco, nome, cod_tipo_socio, descricao_tipo_socio )
    values(0567421235,997654534,'rua barao do rio branco', 'luis pedro', 556, 'pizzaria')
    insert into socios (id, numero,endereco, nome, cod_tipo_socio, descricao_tipo_socio )
    values(55555555,998748378,'rua barao do rio branco', 'luis paulo', 506, 'restaurante')
