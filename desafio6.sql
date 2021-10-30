CREATE VIEW faturamento_atual AS
    SELECT
        CONVERT( MIN(t1.valor) , DECIMAL (3 , 2 )) AS 'faturamento_minimo',
        CONVERT( MAX(t1.valor) , DECIMAL (3 , 2 )) AS 'faturamento_maximo',
        CONVERT( ROUND(AVG(t1.valor), 2) , DECIMAL (3 , 2 )) AS 'faturamento_medio',
        CONVERT( SUM(t1.valor) , DECIMAL (4 , 2 )) AS 'faturamento_total'
    FROM
        SpotifyClone.planos AS t1
            JOIN
        SpotifyClone.usuarios AS t2 ON t1.plano_id = t2.plano_id;
