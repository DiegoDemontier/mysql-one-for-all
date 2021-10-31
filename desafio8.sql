DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuarios
    FOR EACH ROW
BEGIN
    DELETE FROM seguidores where usuario_id = old.usuario_id;
    DELETE FROM historico where usuario_id = old.usuario_id;
END $$

DELIMITER ;
