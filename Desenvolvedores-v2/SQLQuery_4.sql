select * from categorias;

begin transaction
    update categorias set descricao = upper(descricao) where id > 0;
    go
    delete categorias where id = 1002;
    go
;

commit;

--rollback;