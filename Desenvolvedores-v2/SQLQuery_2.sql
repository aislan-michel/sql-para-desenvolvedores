select * from alunos;

select distinct cidade, estado from alunos;

select * from alunos order by nome;

select * from alunos order by 2 desc; --indice da coluna

select * from alunos order by nome, cpf desc, estado;

select top 3 * from alunos order by id;

select top 10 percent * from alunos order by id;

select * from alunos order by id offset 2 rows;

select * from alunos order by id offset 2 rows fetch first 2 rows only;

select * from alunos where nome = 'lucas';

select * from alunos where id >= 3;

select * from alunos where id >= 3 and nome = 'ramon';

select * from alunos where id >= 3 and (nome = 'ramon' or nome = 'daniel');

select * from alunos where nome like '%s';

select * from alunos where nome like 'r%';

select * from alunos where nome like '%e%';

select * from alunos where nome like '%e%o';

select max(id) as id from alunos;

select min(id) as id from alunos;

select * from alunos where id = (select max(id) from alunos);

select count(*) as quantidadeRegistros, sum(total_horas) as totalHoras, sum(valor) as valor from cursos;

select cidade, estado, count(*) as quantidade from alunos group by cidade, estado;

select cidade, estado, count(*) as quantidade from alunos 
group by cidade, estado having count(*) > 1; --duplicados

select * from alunos where id in (2,4);

select * from alunos where id in (select id from alunos);

select * from alunos where id between 2 and 4;

select * from alunos where id between (select min(id) from alunos) and (select max(id) from alunos);



