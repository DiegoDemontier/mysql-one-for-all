DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
    SELECT 
    t1.nome AS 'artista', t2.nome AS 'album'
FROM
    SpotifyClone.artistas t1
        JOIN
    SpotifyClone.albuns AS t2 ON t1.artista_id = t2.artista_id
WHERE
    t1.nome = artista
ORDER BY t2.nome;
END $$

DELIMITER ;
