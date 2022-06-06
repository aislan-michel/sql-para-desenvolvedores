create table alunos(
    id int primary key identity,--auto-increment
    nome varchar(80) not null,
    cpf char(11) not null,
    data_nascimento date,
    ativo bit default 1
);