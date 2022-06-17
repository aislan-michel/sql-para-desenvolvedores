create function Mascarar(@data varchar(255), @quantidadeCaracterees int)
returns varchar(255)
as
begin
    return left(@data, @quantidadeCaracterees) + '**** ****'

end;

create function ContarRegistros()
returns int
as
begin
    return (select count(id) from categorias);

end;

create function GetCategoriaById(@id int)
returns table
as
return (select * from categorias where id = @id);

select dbo.Mascarar('aislan michel', 4);

select dbo.Mascarar(descricao, 4) from categorias;

select dbo.ContarRegistros();

select * from dbo.GetCategoriaById(2);