DELIMITER //

CREATE PROCEDURE prestamo(usuario_id INT, libro_id INT)
BEGIN

  DECLARE EXIT HANDLER FOR SQLEXCEPTION -- Ocurre un error
  BEGIN
    ROLLBACK;
  END;

  START TRANSACTION;

  INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES (libro_id, usuario_id);
  UPDATE libros SET stock = stock - 1 WHERE libros.libro_id = libro_id;

  COMMIT;

END//

DELIMITER ;

CREATE PROCEDURE tipo_lector(usuario_id INT)
BEGIN
  SET @cantidad = (SELECT COUNT(*) FROM libros_usuarios WHERE libros_usuarios.usuario_id = usuario_id);

  CASE
    WHEN @cantidad >= 20 THEN
      SELECT "Fanatico" AS mensaje;
    WHEN @cantidad >= 10 AND @cantidad < 20 THEN
      SELECT "Aficionado" AS mensaje;
    WHEN @cantidad >= 5 AND @cantidad < 10 THEN
      SELECT "Promedio" AS mensaje;
    ELSE 
      SELECT "Nuevo" AS mensaje;
  END CASE;

END//


DELIMITER ;

DELIMITER //

CREATE PROCEDURE libros_azar()
BEGIN
  SET @iteracion = 0;

  WHILE @itercacion < 5 DO

  SELECT libro_id, titulo FROM libros ORDER BY RAND() LIMIT 1;
  SET @iteracion = @iteracion + 1;

  END WHILE;

END //

DELIMITER ;
