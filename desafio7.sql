CREATE VIEW perfil_artistas AS
    SELECT
        t1.nome AS 'artista',
        t2.nome AS 'album',
        COUNT(t3.usuario_id) AS 'seguidores'
    FROM
        SpotifyClone.artistas AS t1
            JOIN
        SpotifyClone.albuns AS t2 ON t1.artista_id = t2.artista_id
            JOIN
        SpotifyClone.seguidores AS t3 ON t1.artista_id = t3.artista_id
    GROUP BY t2.nome , t1.nome
    ORDER BY COUNT(t3.usuario_id) DESC , t1.nome , t2.nome;
