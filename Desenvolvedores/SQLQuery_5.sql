select * from alunos;

delete from alunos
where id = 3;

truncate table alunos; --perfomatico para limpar tabelas

delete top(1) from alunos; --deleta 1 registro
delete top(10) percent from alunos; --deleta 10% dos registros