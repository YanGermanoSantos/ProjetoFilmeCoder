-- VIEW PARA VER OS AUDIOS E SEUS RESPECTIVOS IDIOMAS POR FILME 
CREATE VIEW filme_audio AS (
SELECT f.titulo, f.descricao, au.idioma AS Idioma_audio FROM filme AS f INNER JOIN audio_filme AS a ON f.id = a.filme_fk INNER JOIN audio AS au ON a.audio_fk = au.id
);

-- VIEW PARA VER AS LEGENDAS E SEUS RESPECTIVOS IDIOMAS POR FILME 
CREATE VIEW filme_legenda AS (
SELECT f.titulo, f.descricao, le.idioma AS Idioma_legenda FROM filme AS f INNER JOIN legenda_filme AS l ON f.id = l.filme_fk INNER JOIN legenda AS le ON l.legenda_fk = le.id
);

-- VIEW PARA VISUALIZAR AS FORMA DE PAGAMENTOS E QUANTAS VEZES FORAM UTILIZADAS
CREATE VIEW quant_forma_pagamento AS (
SELECT forma_pagamento, count(forma_pagamento) AS Quantidade FROM locacao GROUP BY forma_pagamento ORDER BY  count(forma_pagamento) desc
);

-- VIEW PARA VISUALIZAR OS CLIENTES E QUANDO DEVE SER RETORNADO OS FILMES
CREATE VIEW filmes_alugados AS (
	SELECT c.nome, c.email, l.data_devolucao, f.titulo, l.forma_pagamento FROM locacao_filme AS lf INNER JOIN locacao AS l ON lf.locacao_fk = l.id INNER JOIN cliente AS c ON l.cliente_fk = c.id INNER JOIN filme as f on f.id = lf.filme_fk order by data_devolucao asc
);

-- VIEW PARA VER A QUANTIDADE DE VEZES QUE OS FILMES FORAM ALUGADOS
CREATE VIEW quant_filmes_alugados AS (
	SELECT titulo, count(titulo) AS Quantidade FROM filme AS f INNER JOIN locacao_filme AS lf ON f.id = lf.filme_fk GROUP BY f.titulo ORDER BY count(titulo) DESC
);












