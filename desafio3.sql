CREATE VIEW historico_reproducao_usuarios AS
    SELECT
        t1.nome AS 'usuario', t3.nome AS 'nome' 
    FROM
        SpotifyClone.usuarios AS t1
            JOIN
        SpotifyClone.historico t2 ON t1.usuario_id = t2.usuario_id
            JOIN
        SpotifyClone.musicas AS t3 ON t3.musica_id = t2.musica_id
    ORDER BY t1.nome , t3.nome;
