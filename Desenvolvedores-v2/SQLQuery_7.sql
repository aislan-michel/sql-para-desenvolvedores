create procedure PesquisarCategoriaPorId(@id int)
as 
begin
    select * from categorias where id = @id;
end;

execute dbo.PesquisarCategoriaPorId @id = 3;

create procedure PersistirCategoria(@descricao varchar(255))
as 
begin
    if(@descricao is null)
    begin
        raiserror('descrição inválida', 16, 1)
        RETURN
    end

    insert into categorias(descricao, cadastrado_em) values(@descricao, getdate())
end;

exec dbo.PersistirCategoria @descricao = null;

select * from categorias;