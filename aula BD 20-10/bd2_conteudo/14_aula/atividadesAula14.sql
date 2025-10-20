use lojaCalcados;
select * from estoque;

-- ATIVIDADE 1 - Letra a
desc categoria;
insert into categoria(nome) values ("sapatênis");

select * from categoria;

select * from marca;

desc produto;

insert into produto(nome, id_categoria, id_marca, descricao) 
VALUES ("Sapatênis Casual Puma",5,3,"Sapatênis Casual Puma"); 

-- ATIVIDADE 1 - Letra b
select * from produto;

desc estoque;

insert into estoque(id_produto,tamanho,cor,preco,quantidade)
VALUES (11,40,"Cinza",219.90,6),(11,41,"Preto",219.90,4);

-- ATIVIDADE 2
-- UTILIZAR O COMANDO UPDATE 
UPDATE produto SET descricao = "Tênis confortável com design moderno e amortecimento Air"
WHERE nome = "Tênis Nike Air Max";

-- Atividade 3
-- Item A
SELECT * from estoque order by id_produto;

-- ITEM C
SELECT * FROM estoque 
where quantidade<10;

-- ITEM B PRECISA JUNTAR 2 TABELAS: PRODUTO E ESTOQUE
SELECT produto.nome, estoque.quantidade from produto join estoque
on produto.id = estoque.id_produto;


-- ATIVIDADE 4
-- ITEM A
SELECT produto.nome, categoria.nome, marca.nome, estoque.preco 
from produto join categoria on produto.id_categoria = categoria.id
join marca on produto.id_marca = marca.id 
join estoque on produto.id = estoque.id_produto;

-- ITEM B


-- ATIVIDADE 5
-- FUNÇÕES DE AGREGAÇÃO:
-- SUM(COLUNA) -> PARA SOMAR VALORES ENCONTRADOS NA COLUNA INFORMADA
-- AVG(COLUNA) -> PARA CALCULAR A MÉDIA ARITMÉTICA DOS VALORES DA COLUNA 
-- PARA AGRUPAR DADOS UTILIZE AO FINAL DO COMANDO GROUP BY <COLUNA>

-- ATIVIDADE 5
-- ITEM B: QUANTIDADE DE PARES POR PRODUTO (INCLUSIVE SEU NOME)
SELECT produto.nome, SUM(estoque.quantidade) "Quantidade Total"
from produto join estoque on produto.id = estoque.id_produto 
GROUP BY produto.nome;

--ITEM C




