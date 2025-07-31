-- funciones sobre strings

SELECT UPPER(columna) AS columna_mayusculas FROM nombre_tabla;
SELECT LOWER(columna) AS columna_minusculas FROM nombre_tabla;
SELECT LENGTH(columna) AS longitud_columna FROM nombre_tabla;
SELECT CONCAT(columna1, ' ', columna2) AS columna_concatenada FROM nombre_tabla;
SELECT TRIM(columna) AS columna_trim FROM nombre_tabla;
SELECT SUBSTRING(columna, inicio, longitud) AS columna_substring FROM nombre_tabla;
SELECT LEFT(columna, longitud) AS columna_left FROM nombre_tabla;
SELECT RIGHT(columna, longitud) AS columna_right FROM nombre_tabla;
SELECT REPLACE(columna, 'texto_antiguo', 'texto_nuevo') AS columna_reemplazada FROM nombre_tabla;

-- funciones sobre numeros
SELECT ABS(columna) AS columna_abs FROM nombre_tabla; -- Valor absoluto
SELECT CEIL(columna, decimales) AS columna_redondeada FROM nombre_tabla; -- Redondeo hacia arriba
SELECT FLOOR(columna, decimales) AS columna_redondeada FROM nombre_tabla; -- Redondeo hacia abajo
SELECT ROUND(columna, decimales) AS columna_redondeada FROM nombre_tabla; -- Redondeo al entero más cercano
SELECT POWER(columna, exponente) AS columna_potencia FROM nombre_tabla; -- Potencia
SELECT SQRT(columna) AS columna_raiz FROM nombre_tabla; -- Raíz cuadrada
SELECT MOD(columna, divisor) AS columna_modulo FROM nombre_tabla; -- Módulo
SELECT RAND() AS numero_aleatorio FROM nombre_tabla; -- Número aleatorio entre 0 y 1
SELECT TRUNCATE(columna, decimales) AS columna_truncada FROM nombre_tabla; -- Truncamiento
SELECT SIGN(columna) AS columna_signo FROM nombre_tabla; -- Signo del número (-1, 0, 1)
SELECT EXP(columna) AS columna_exponencial FROM nombre_tabla; -- Exponencial
SELECT LOG(columna) AS columna_logaritmo FROM nombre_tabla; -- Logaritmo natural
SELECT LOG10(columna) AS columna_logaritmo_base_10 FROM nombre_tabla; -- Logaritmo base 10
SELECT PI() AS pi_valor FROM nombre_tabla; -- Valor de pi

-- funciones sobre fechas
SELECT NOW() AS fecha_hora_actual FROM nombre_tabla; -- Fecha y hora actual
SELECT CURDATE() AS fecha_actual FROM nombre_tabla; -- Fecha actual
SELECT GETDATE() AS fecha_hora_actual FROM nombre_tabla; -- Fecha y hora actual (SQL Server)
SELECT SYSDATE() AS fecha_hora_actual FROM nombre_tabla;  -- Fecha actual
SELECT DATE(columna) AS fecha FROM nombre_tabla; -- Extraer fecha de un datetime
SELECT TIME(columna) AS hora FROM nombre_tabla; -- Extraer hora de un datetime
SELECT YEAR(columna) AS anio FROM nombre_tabla; -- Extraer año
SELECT MONTH(columna) AS mes FROM nombre_tabla; -- Extraer mes
SELECT DAY(columna) AS dia FROM nombre_tabla; -- Extraer día
SELECT HOUR(columna) AS hora FROM nombre_tabla; -- Extraer hora
SELECT MINUTE(columna) AS minuto FROM nombre_tabla; -- Extraer minuto
SELECT SECOND(columna) AS segundo FROM nombre_tabla; -- Extraer segundo
SELECT DATE_ADD(columna, INTERVAL valor unidad) AS fecha_modificada FROM nombre_tabla; -- Sumar tiempo
SELECT DATE_SUB(columna, INTERVAL valor unidad) AS fecha_modificada FROM nombre_tabla; -- Restar tiempo
SELECT DATEDIFF(fecha1, fecha2) AS diferencia_dias FROM nombre_tabla; -- Diferencia en días