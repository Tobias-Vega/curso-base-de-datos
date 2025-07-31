SELECT columnas FROM tablas LIMIT cantidad_registros; -- Limita el número de registros devueltos

SELECT columnas FROM tablas LIMIT cantidad_registros OFFSET desplazamiento; -- Limita y desplaza los registros devueltos

SELECT columnas FROM tablas LIMIT desplazamiento, cantidad_registros; -- Desplaza y limita los registros devueltos