CREATE VIEW estatisticas_musicais AS
    SELECT
        COUNT(DISTINCT (t1.nome)) AS 'cancoes',
        COUNT(DISTINCT (t2.nome)) AS 'artistas',
        COUNT(DISTINCT (t3.nome)) AS 'albuns'
    FROM
        SpotifyClone.musicas AS t1
            JOIN
        SpotifyClone.artistas AS t2 ON t1.artista_id = t2.artista_id
            JOIN
        SpotifyClone.albuns AS t3 ON t1.album_id = t3.album_id;
