use loja;

DELIMiTER $$
create procedure estoque()
begin
    select produto.nome, estoque.tamanho, estoque.cor,
    estoque.preco, estoque.quantidade
    from produto join estoque on produto.id = estoque.id_produto
    order by produto.nome;
    
end $$
DELIMITER ;
call estoque;

-- CRIAR UM SP LISTAR OS DADOS DE UM PRODUTO EM ESTOQUE
-- COM QUANTIDADE MENOR OU IGUAL A QUE O USUARIO INFORMAR.
DELIMiTER $$
create procedure produtoPorQuantidade(in qtde int)
begin
    select produto.nome as produto, estoque.tamanho, estoque.cor,
    estoque.preco, estoque.quantidade
    from produto join estoque on produto.id = estoque.id_produto
    where estoque.quantidade <= qtde
    order by produto.nome;
    
end $$
DELIMITER ;
call produtoPorQuantidade(10);

-- CRIAR UM SP PARA MOSTRAR O NOME E A DESCRIÇAO DOS PRODUTOS
-- DA MARCA INFORMADA COMO PARAMETRO PELO USUARIO.
use loja;
DELIMiTER $$
create procedure marca(in marca varchar(50))
begin
    select produto.nome produto, marca.nome marca, produto.descricao
    from produto join marca on produto.id_marca = marca.id
    where marca.nome = marca
    order by produto.nome;
end $$
DELIMITER ;
call marca("Nike");


