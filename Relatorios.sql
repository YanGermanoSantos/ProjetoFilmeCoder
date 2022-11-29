USE LOCADORA;


-- Visualização dos TOP 10 filmes mais vendidos
SELECT 
    titulo, COUNT(titulo) AS Quantidade
FROM
    filme AS f
        INNER JOIN
    locacao_filme AS lf ON f.id = lf.filme_fk
GROUP BY f.titulo
ORDER BY COUNT(titulo) DESC
LIMIT 10;
    
-- Visualização da quantidade que as formas de pagamentos foram feitas    
SELECT 
    forma_pagamento, COUNT(forma_pagamento) AS Quantidade
FROM
    locacao
GROUP BY forma_pagamento
ORDER BY COUNT(forma_pagamento) DESC;

-- Visualizar a ultima locação de cada cliente
SELECT 
    nome,
    (SELECT 
            MAX(data_locacao)
        FROM
            locacao AS l
        WHERE
            l.cliente_fk = c.id) AS UltimaLocacao
FROM
    cliente AS c;
    
-- Visualizar a quantidade de filmes por genero
SELECT 
    g.genero, COUNT(g.genero)
FROM
    filme AS f
        LEFT JOIN
    genero AS g ON f.genero_fk = g.id
GROUP BY g.genero
ORDER BY COUNT(g.genero) DESC;
    

    
