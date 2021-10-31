DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT
    COUNT(t2.musica_id)
FROM
    SpotifyClone.usuarios AS t1
        JOIN
    SpotifyClone.historico AS t2 ON t1.usuario_id = t2.usuario_id
WHERE
    t1.usuario_id = usuario_id INTO quantidade_musicas;
    RETURN quantidade_musicas;
END $$

DELIMITER ;
