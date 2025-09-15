-- Exercício 3: Procedure com Múltiplos Parâmetros - adicionarNovoPalco
-- Crie uma stored procedure chamada adicionarNovoPalco que adicione um novo palco ao festival. 
-- A procedure deve receber dois parâmetros de entrada:
-- ● nome_palco: O nome do novo palco.
-- ● capacidade_palco: A capacidade de público do novo palco.
-- ● Comando para Executar: CALL adicionarNovoPalco('Palco Sunset', 8000);
-- ● Depois de executar, verifique se o novo palco foi adicionado com: SELECT * FROM palco;

USE festival_musica;
CREATE DATABASE IF NOT EXISTS adicionarNovoPalco;
USE adicionarNovoPalco;
DELIMITER $$
CREATE PROCEDURE adicionarNovoPalco(
    IN nome_palco VARCHAR(100), 
    IN capacidade_palco INT 
)
BEGIN
    INSERT INTO palco(nome, capacidade)
    VALUES (nome_palco, capacidade_palco);
END $$
DELIMITER ;
CALL adicionarNovoPalco('Palco Secundário (Lua)', 10000);                
SELECT * FROM palco;

