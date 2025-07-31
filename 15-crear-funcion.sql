-- Crear una función

DELIMITER //
CREATE FUNCTION nombre_funcion(parametro1 DATATYPE, parametro2 DATATYPE)
RETURNS DATATYPE
BEGIN
  -- Lógica de la función
  RETURN resultado;
END//

DELIMITER ;