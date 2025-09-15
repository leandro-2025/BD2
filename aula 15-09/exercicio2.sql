-- Exercício 2: Procedure com Parâmetro - apresentacoesPorGenero
-- Crie uma stored procedure chamada apresentacoesPorGenero que receba o nome de um gênero musical como parâmetro (IN) e retorne 
-- o nome do artista e o nome do palco para todas as apresentações daquele gênero.
-- ● Dica: Você vai precisar de um JOIN entre as tabelas apresentacao, artista e palco.
-- ● Comando para Executar: CALL apresentacoesPorGenero('Funk');

CREATE DATABASE IF NOT EXISTS apresentacoesPorGenero;
USE apresentacoesPorGenero;

DELIMITER $$
CREATE PROCEDURE apresentacoesPorGenero(IN generoMusical VARCHAR(50))
BEGIN
    -- Selecionar nome do artista e nome do palco
    SELECT nome.palco AS artista, nome AS palco
    FROM apresentacao 
    JOIN artista ON apresentacao.id_artista = artista.id
    JOIN palco ON apresentacao.id_palco = palco.id
    WHERE genero = generoMusical;
END $$
DELIMITER ;
 CALL apresentacoesPorGenero('Funk');

