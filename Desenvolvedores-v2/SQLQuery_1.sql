create table alunos(
    id int primary key identity,
    nome varchar(80) not null,
    cpf char(11) not null,
    cidade varchar(60) not null,
    estado char(2) not null,
    data_nascimento date,
    ativo bit default 1
);

create table categorias(
    id int primary key identity,
    descricao varchar(80) not null,
    cadastrado_em datetime default getdate()
);

create table cursos(
    id int primary key identity,
    categoria_id int not null,
    descricao varchar(80) not null,
    total_horas int not null,
    valor decimal(12, 2) not null default 0,
    cadastrado_em datetime default getdate(),
    ativo bit default 1,
    constraint fk_categoria_id foreign key (categoria_id) references categorias(id)
);

create table alunos_cursos(
    aluno_id int not null,
    curso_id int not null,
    cadastrado_em datetime default getdate(),
    constraint pk_alunos_cursos primary key (aluno_id, curso_id),
    constraint fk_aluno_id foreign key (aluno_id) references alunos(id),
    constraint fk_curso_id foreign key (curso_id) references cursos(id)
);

insert into alunos(nome, cpf, cidade, estado, data_nascimento) values
('Lucas', '40741024047', 'Juiz de Fora', 'MG', '2000-01-01'),
('Eduardo', '52235527094', 'Valença', 'RJ', '2000-02-14'),
('Daniel', '41020357029', 'Barra Mansa', 'RJ', '1996-03-13'),
('Cyd', '89132316038', 'Barra do Pirai', 'RJ', '1998-06-25'),
('Ramon', '51159778000', 'Volta Redonda', 'RJ', '1980-10-26');

insert into categorias(descricao) VALUES
('Acesso a dados'),
('Segurança'),
('Web');

insert into cursos(descricao, categoria_id, total_horas, valor) values
('EF Core', 1 , 17, 300),
('SQL Server', 1 , 5, 200),
('ASP.NET Core Enterprise', 3 , 5, 200),
('Fundamentos de IdentityServer4', 2 , 5, 200);

insert into alunos_cursos(aluno_id, curso_id) values
(1,1),
(1,2),
(2,3),
(3,1),
(4,4),
(5,1),
(5,2),
(5,3);

