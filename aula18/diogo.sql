create table estudantes
(
    id int auto_increment primary key,
    nome varchar(30) unique not null,
    idade int not null
);


create table matricula 
(
    id_matricula int auto_increment primary key,
    id_estudantes int not null,
    id_aulas int not null,
    constraint matricula_fk_estudantes
    foreign key (id_estudantes)references estudantes(id)
    on update cascade
    on delete restrict
    constraint matricula_fk_aulas
    foreign key (id_aulas) references aulas(id)
    on update cascade
    on delete restrict
);


create table aulas
(
    id int auto_increment primary key,
    descricao varchar(50) 
);


insert into estudantes (id, nome, idade)
values (555, 'roberto albino' 15)
insert into estudantes (id, nome, idade)
values (666, 'pedro oliveira ', 16)
insert into estudantes (id, nome, idade)
values (777, 'luis silva ', 17)

insert into aulas(id, descricao)
values (89, 'portugues')
insert into aulas(id, descricao)
values (87, 'ingles')
insert into aulas(id, descricao)
values (99, 'matematica')

insert into matriculas(id_matricula, id_estudantes, id_aulas)
values (1, 555, 89)
insert into matriculas(id_matricula, id_estudantes, id_aulas)
values (2, 666, 99)
insert into matriculas(id_matricula, id_estudantes, id_aulas)
values (3, 777, 99)



--função de agregação (minimo 2. ex. Sum, count)

select count (id) as quantidade de estudantes 
from estudantes 

select count(id) as de aulas da semana 
from aulas 

select sum (idade) as soma das idades de todos os estudantes
from estudantes

--group by

select id_aulas, id_estudantes sum(id) as 'quantidade de aulos na uala de matematica'
from matricula
group by id aulas, id_estudante 


--joins
    --quantos estudantes estao matriculado em cada aula 
select  e.nome  
from estudantes join matricula m on m.estudante_id= e.nome 
