-- Criação das tabelas para log 
CREATE TABLE log_filme (
    usuario VARCHAR(50),
    data_insercao DATE,
    filme VARCHAR(150)
);

CREATE TABLE log_cliente (
    usuario VARCHAR(50),
    data_insercao DATE,
    cliente VARCHAR(150),
    email VARCHAR(150)
);

-- TRIGGER para logs de toda inserção de dados na tabela filme. Tem como principio apenas saber quem fez o INSERT a data que foi feita a ação e qual filme foi inserido no banco

CREATE TRIGGER logs_filme
BEFORE INSERT ON filme
FOR EACH ROW
INSERT INTO log_filme (usuario, data_insercao, filme) VALUES (user(), current_timestamp(), new.titulo);

-- INSERT PARA TESTE
INSERT INTO filme (id, titulo, descricao, audio_fk, legenda_fk, genero_fk) VALUES (null, 'A voltaa', 'Filmess', 1,1,8);
-- SELECT PARA VER OS LOG´s
SELECT * FROM log_filme;

-- TRIGGER para logs de toda inserção de dados na tabela cliente. Tem como principio apenas saber quem fez o INSERT a data que foi feita a ação e qual cliente foi inserido no banco
CREATE TRIGGER logs_cliente
AFTER INSERT ON cliente
FOR EACH ROW
INSERT INTO log_cliente (usuario, data_insercao, cliente, email) VALUES (user(), current_timestamp(), new.nome, new.email);

-- INSERT PARA TESTE
INSERT INTO filme (id, titulo, descricao, audio_fk, legenda_fk, genero_fk) VALUES (null, 'nome' ,28, '215615', 'teste@testee','14894521','nome', 'f54er69f5e45c2sadasd');
-- SELECT PARA VER OS LOG´s
SELECT * FROM log_cliente
