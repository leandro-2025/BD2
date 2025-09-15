-- Criar o banco de dados 
CREATE DATABASE IF NOT EXISTS festival_musica;
USE festival_musica;
-- Tabela de Bandas/Artistas 
CREATE TABLE artista ( id INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, genero VARCHAR(50) );

-- Tabela de Palcos do Festival 
CREATE TABLE palco ( id INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, capacidade INT );

-- Tabela de Programação (que liga artistas a palcos) 
CREATE TABLE apresentacao ( id INT AUTO_INCREMENT PRIMARY KEY, 
id_artista INT, id_palco INT, horario_inicio DATETIME, duracao_minutos INT, 
FOREIGN KEY (id_artista) REFERENCES artista(id), FOREIGN KEY (id_palco) REFERENCES palco(id) );

-- Inserir dados na tabela artista 
INSERT INTO artista (nome, genero) VALUES ('Gusttavo Lima', 'Sertanejo'), ('Anitta', 'Pop'), 
('Ludmilla', 'Funk'), ('Thiaguinho', 'Pagode'), ('Iza', 'Pop'), ('Alok', 'Eletrônica'),
('Henrique & Juliano', 'Sertanejo');

-- Inserir dados na tabela palco 
INSERT INTO palco (nome, capacidade) VALUES ('Palco Principal (Sol)', 20000), ('Palco Vibes (Lua)', 10000), 
('Palco Eletro (Estrela)', 15000);

-- Inserir dados na tabela apresentacao 
INSERT INTO apresentacao (id_artista, id_palco, horario_inicio, duracao_minutos) VALUES (1, 1, '2025-01-15 23:00:00', 120), 
(2, 1, '2025-01-16 22:00:00', 90), (3, 2, '2025-01-15 21:00:00', 90), (4, 2, '2025-01-16 20:00:00', 75), 
(5, 1, '2025-01-17 21:30:00', 90), (6, 3, '2025-01-17 00:00:00', 120), (7, 1, '2025-01-15 21:00:00', 90);