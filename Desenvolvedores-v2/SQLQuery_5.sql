select left(descricao, 4), descricao from categorias;

select right(descricao, 4), descricao from categorias;

select substring(descricao, 2, 5), descricao from categorias; 

select 'aislan' + ' michel';

select 'aislan' + ' michel' + null;

select concat('aislan', ' michel');

select concat(descricao, ' Teste') from categorias;

select isnull(null, 'default');

select coalesce(null, null, 'default');

select iif(-1 > 0, 'maior que zero', 'menor que zero');

select iif(len(descricao) > 5, 'maior que cinco', 'menor que cinco'), descricao from categorias;