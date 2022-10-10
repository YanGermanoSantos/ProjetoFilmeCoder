-- Criação do schema locadora
create schema locadora;

-- Usar locaroda para criar tabela abaixo
use locadora;

-- Criação das tabelas 

-- Criação da tabela cliente
-- Descrição: Essa tabela tem como objetivo disponibilizar informações do cliente
CREATE TABLE cliente (
  id INT AUTO_INCREMENT NOT NULL,
  nome VARCHAR(150) NOT NULL,
  endereco_fk INT NOT NULL,
  cpf VARCHAR(12) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(12) NOT NULL,
  usuario VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
  
-- Criação da tabela endereço
-- Descrição: Essa tabela tem como objetivo disponibilizar de endereço dos clientes.
CREATE TABLE endereco (
	id INT AUTO_INCREMENT NOT NULL,
	rua VARCHAR(150) NOT NULL,
	bairro VARCHAR(120) NULL,
	numero VARCHAR(50) NOT NULL,
	complemento VARCHAR(80) NULL,
	cep INT NOT NULL,
	cidade VARCHAR(50) NOT NULL,
    PRIMARY KEY (id));

-- Criação da tabela locacao
-- Descrição: Essa tabela tem como objetivo descrever as informações da locação
  CREATE TABLE IF NOT EXISTS locacao (
  id INT NOT NULL AUTO_INCREMENT,
  cliente_fk INT NOT NULL,
  filme_fk INT NOT NULL,
  valor FLOAT NOT NULL,
  data_locacao TIMESTAMP NOT NULL,
  data_devolucao TIMESTAMP NOT NULL,
  debito TINYINT,
  credito TINYINT,
  PRIMARY KEY (id));
  
  -- Criação da tabela locacao_filme
-- Descrição: Essa tabela tem como objetivo disponibilizar todos os filmes por locação 
CREATE TABLE locacao_filme (
  id INT AUTO_INCREMENT NOT NULL,
  locacao_fk INT NOT NULL,
  filme_fk INT NOT NULL,
  PRIMARY KEY (id));

-- Criação da tabela filme
-- Descrição: Essa tabela tem como objetivo descrever todos os filmes existentes na base
CREATE TABLE filme (
  id INT AUTO_INCREMENT NOT NULL,
  titulo VARCHAR(100) NOT NULL,
  descricao VARCHAR(200) NULL,
  audio_fk INT NOT NULL,
  legenda_fk INT NOT NULL,
  genero_fk INT NOT NULL,
  PRIMARY KEY (id));
  
  -- Criação da filme_audio
-- Descrição: Essa tabela tem como objetivo disponibilizar todos os audios que tem um filme
CREATE TABLE audio_filme (
  id INT AUTO_INCREMENT NOT NULL,
  filme_fk INT NOT NULL,
  audio_fk INT NOT NULL,
  PRIMARY KEY (id));
  
-- Criação da tabela audio
-- Descrição: Essa tabela tem como objetivo disponibilizar todos os idiomas dos audio
CREATE TABLE audio (
  id INT NOT NULL,
  idioma VARCHAR(8) NOT NULL,
  PRIMARY KEY (id));

-- Criação da tabela legenda_filme
-- Descrição: Essa tabela tem como objetivo disponibilizar todas as legenda disponiveis para os filmes
CREATE TABLE legenda_filme (
  id INT AUTO_INCREMENT NOT NULL,
  filme_fk INT NOT NULL,
  legenda_fk INT NOT NULL,
  PRIMARY KEY (id));
  
  -- Criação da tabela legenda
-- Descrição: Essa tabela tem como objetivo disponibilizar todos os idiomas das legendas
CREATE TABLE legenda (
  id INT NOT NULL,
  idioma VARCHAR(5) NOT NULL,
  PRIMARY KEY (id));

-- Criação da tabela genero
-- Descrição: Essa tabela tem como objetivo informar todos os generos disponiveis
CREATE TABLE genero (
  id INT NOT NULL,
  genero VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
    
-- Criação de FK 

-- Referencia: endereco_fk (table: endereco)
ALTER TABLE cliente ADD CONSTRAINT fk_endereco FOREIGN KEY endereco_fk (endereco_fk)
    REFERENCES endereco (id);
    
-- Referencia: cliente_fk (table: cliente)
ALTER TABLE locacao ADD CONSTRAINT fk_cliente FOREIGN KEY cliente_fk (cliente_fk)
    REFERENCES cliente (id);

-- Referencia: filme_fk (table: filme)
ALTER TABLE locacao ADD CONSTRAINT fk_filme FOREIGN KEY filme_fk (filme_fk)
    REFERENCES filme (id);
    
-- Referencia: filme_fk (table: filme)
ALTER TABLE locacao_filme ADD CONSTRAINT fk_filme_locacao FOREIGN KEY filme_fk (filme_fk)
    REFERENCES filme (id);

-- Referencia: locacao_fk (table: locacao)
ALTER TABLE locacao_filme ADD CONSTRAINT fk_locacao FOREIGN KEY locacao_fk (locacao_fk)
    REFERENCES locacao (id);
    
-- Referencia: audio_fk (table: audio)
ALTER TABLE filme ADD CONSTRAINT fk_audio FOREIGN KEY audio_fk (audio_fk)
    REFERENCES audio (id);
        
-- Referencia: legenda_fk (table: legenda)
ALTER TABLE filme ADD CONSTRAINT fk_legenda FOREIGN KEY legenda_fk (legenda_fk)
    REFERENCES legenda (id);

-- Referencia: genero_fk (table: genero)
ALTER TABLE filme ADD CONSTRAINT fk_genero FOREIGN KEY genero_fk (genero_fk)
    REFERENCES genero (id);
    
-- Referencia: filme_fk (table: filme)
ALTER TABLE legenda_filme ADD CONSTRAINT fk_filme_legenda FOREIGN KEY filme_fk (filme_fk)
    REFERENCES filme (id);
    
-- Referencia: legenda_fk (table: genero)
ALTER TABLE legenda_filme ADD CONSTRAINT fk_legenda_filme FOREIGN KEY legenda_fk (legenda_fk)
    REFERENCES legenda (id);
    
-- Referencia: filme_fk (table: filme)
ALTER TABLE audio_filme ADD CONSTRAINT fk_filme_audio FOREIGN KEY filme_fk (filme_fk)
    REFERENCES filme (id);
    
-- Referencia: audio_fk (table: audio)
ALTER TABLE audio_filme ADD CONSTRAINT fk_audio_filme FOREIGN KEY audio_fk (audio_fk)
    REFERENCES audio (id);
    
    
    
    
