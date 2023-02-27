//* 1 - Conforme modelo ER abaixo, cria um Database no MySQL ou de sua escolha.*/
create table editoras 
( 
    id_editora int auto_increment primary key,
    nome varchar(40)
);

create table assuntos 
(
    id_assunto char auto_increment primary key,
    descricao varchar(40)

);

create table livros 
(
    id_livro int auto_increment primary key,
    id_assunto char(1) not null,
    id_editora int not null,
    titulo varchar(80),
    preco decimal (12.2) not null, 
    lancamento date
        contraint assuntos_fk_livros 
        foreing key (id_assunto_assunto) references assuntos (id_assunto)
        on update cascade
        on delete rescrict 
     contraint editoras_fk_livros 
     foreing key (id_editora_editoras) references editoras(id_editora)
     on update cascade
     on delete rescrict
);



create table autores_livros 
(
    maricula int auto_increment primary key,
    id_livro int not null
    contraint livros_fk_autores_livros 
    foreing key (id_livro_livro) references livro(id_livro)
    update cascade
    delete rescrict

create table autores 
matricula int auto_increment primary key,
nome varchar(40) unique,
cpf varchar(11),
endereco varchar(50),
data_nascimento date,
nacionalidade varchar(30)

);

/*2-Crie os SQLs solicitados abaixo.*/

insert into editoras (id, nome)
values (1, 'mirandela editora'),
       (2, 'editora via-norte'),
       (3, 'editora ilhas tijuca'),
       (4, 'maria josé editora')

insert into assuntos(sigla, descricao)
values      ('B', 'banco de dados'),
            ('p', 'programação'),
            ('r', 'redes'),
            ('s','sistemas operacionais')      

insret into livros (titulo, preço, lençamento, id_assunto, id_editora)
values      ('banco de dados', 31.20, 1999-01-10,'B', 1),
             ('programando em linguagem c', 30.00, 1997-10-01, 'p', 1),
             ('programando em linguagem c++', 111.50, 1998-11-01, 'p', 3),
             ('banco de dados na bioinformatica', 48.00, null, 'b', 2),
             ('redes de computadores', 42.00, 1996-09-01, 'R', 2 )


/*3-Crie comandos SQLs que retorne os dados solicitados abaixo.*/

/*a-Monte um comando para excluir da tabela livros aqueles que possuem o 
código maior ou igual a 2, que possuem o preço maior que R$ 50,00 e que
 já foram lançados.*/

delete from livros 
where id>=2 and preco > 50 and lancamento < '2022-11-19'

/*b-Escreva o comando que seleciona as colunas NOME, CPF
 e ENDERECO, da tabela AUTOR, para aqueles que possuem a 
 palavra ‘joão’ no nome.*/

    select (nome,cpf, endereco)
    from autores 
    where nome like %joão%



/*c-Excluir o livro cujo título é ‘BANCO DE DADOS DISTRIBUÍDO’ ou ‘
BANCOS DE DADOS DISTRIBUÍDOS’. Somente essas duas opções devem 
ser conside*/

delete from livros 
where titulo like 'banco de dados distribuido%'

/*d-Selecione o nome e o CPF de todos os autores que nasceram após 01
 de janeiro de 1990.*/

 select (nome, cpf)
 from autores 
 where data_nascimento> '1990-01-01'

 /*e-Selecione a matrícula e o nome dos autores que possuem RIO DE
  JANEIRO no seu endereço.*/

 select (matricula, nome, endereco)
 from autores 
 where endereco like %rio de janeiro%


/*f-Atualize para zero o preço de todos os livros onde a data de
 lançamento for nula ou onde seu preço atual for inferior a R$ 55,00.*/

 update livros 
 set preco=0
 where lancamento is null or preco<55

 /*g-Exclua todos os livros onde o assunto for diferente de ‘S’, ‘P’, ou ‘B’.*/

 delete from livros 
 where id_assunto!= 's' and id_assunto != 'p' and id_assunto !='b'

 /*h-Escreva o comando para contar quantos são os autores cadastrados na
  tabela AUTORES.*/

  select cout(matricula)as total_cadastrados 
  from autores










