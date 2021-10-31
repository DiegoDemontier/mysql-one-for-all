CREATE VIEW cancoes_premium AS
    SELECT
        t1.nome AS 'nome', COUNT(t2.usuario_id) AS 'reproducoes'
    FROM
        SpotifyClone.musicas AS t1
            JOIN
        SpotifyClone.historico AS t2 ON t1.musica_id = t2.musica_id
            JOIN
        SpotifyClone.usuarios AS t3 ON t2.usuario_id = t3.usuario_id
            AND t3.plano_id <> 1
    GROUP BY t1.nome
    ORDER BY t1.nome;
