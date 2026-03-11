-- 1. Bloco inicial: Criação da tabela livros
CREATE TABLE livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_publicacao INT
);

-- 2. Inserção de dados com as colunas fora de ordem (conforme exercício 6)
INSERT INTO livros (ano_publicacao, autor, titulo, id) 
VALUES (1954, 'J.R.R. Tolkien', 'O Senhor dos Anéis', 1);

-- 3. Comando para exibir a tabela completa após a inserção
SELECT * FROM livros;
