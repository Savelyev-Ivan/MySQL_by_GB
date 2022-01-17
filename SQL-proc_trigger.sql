DROP PROCEDURE IF EXISTS kinopoisk.change_mode;
DELIMITER //
CREATE PROCEDURE kinopoisk.change_mode()
BEGIN
	UPDATE media SET only_for_adults = 1 WHERE media_type_id IN (2,4);
END//

DELIMITER ;




CALL change_mode();


DROP TRIGGER IF EXISTS changes;
DELIMITER //
CREATE TRIGGER changes BEFORE INSERT ON media
FOR EACH ROW
BEGIN
	IF(NEW.media_type_id IN (2, 4)) THEN
		SET NEW.only_for_adults = 1;
	END IF;
END //
DELIMITER ;
