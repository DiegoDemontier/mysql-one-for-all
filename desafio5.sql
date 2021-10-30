CREATE VIEW top_2_hits_do_momento AS
    SELECT
        t1.nome AS 'cancao', COUNT(t2.usuario_id) AS 'reproducoes'
    FROM
        SpotifyClone.musicas AS t1
            JOIN
        SpotifyClone.historico AS t2 ON t1.musica_id = t2.musica_id
    GROUP BY t1.nome
    ORDER BY COUNT(t2.usuario_id) DESC , t1.nome
    LIMIT 2;
