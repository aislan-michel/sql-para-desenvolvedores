select * from categorias;

select * from cursos;

-- prefixo indica preferencia

select c.descricao as curso, cat.descricao as categoria 
from cursos c 
inner join categorias cat on cat.id = c.categoria_id; 

--insert into categorias(descricao) values('categoria teste');

select cat.descricao as categoria, c.descricao as curso
from categorias cat
left join cursos c on c.categoria_id = cat.id; --mesmo se não tiver curso, tras a categoria

select c.descricao as curso, cat.descricao as categoria 
from cursos c 
RIGHT join categorias cat on cat.id = c.categoria_id;

select c.descricao as curso, cat.descricao as categoria 
from cursos c 
full join categorias cat on cat.id = (c.categoria_id+4);

select descricao from cursos where id = 1
union
select descricao from categorias where id = 2
union 
select 'valor dinamico'
union  -- elimina duplicidade
select 'valor dinamico';

select descricao from cursos where id = 1
union all
select descricao from categorias where id = 2
union all 
select 'valor dinamico'
union all 
select 'valor dinamico';