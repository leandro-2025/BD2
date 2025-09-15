-- Exercícios de Stored Procedures

-- Exercício 1: Procedure Simples - listarArtistasSertanejo
-- Crie uma stored procedure chamada listarArtistasSertanejo que retorne o nome de todos os artistas cujo gênero seja 'Sertanejo'.

CREATE DATABASE IF NOT EXISTS listarArtistasSertanejo;
USE listarArtistasSertanejo;

DELIMiTER $$
CREATE PROCEDURE listarArtistasSertanejo()
BEGIN
    SELECT nome
    FROM artista
    WHERE genero = 'sertanejo';
END $$
DELIMiTER $$