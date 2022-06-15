select * from categorias;

begin transaction
    update categorias set descricao = upper(descricao) where id > 0;
    go
    delete categorias where id = 1002;
    go
;

commit;

--rollback;

begin transaction
    insert into categorias(descricao, cadastrado_em) values('categoria 1', getdate());
    insert into categorias(descricao, cadastrado_em) values('categoria 2', getdate());
    go
    save transaction atualizacao
    update categorias set descricao = 'app web 2' where descricao = 'app web';
    go
;

rollback transaction atualizacao;

commit;

--rollback;