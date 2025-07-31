SELECT * FROM tabla WHERE columna REGEXP 'expresión_regular';

-- comodines
-- . representa cualquier carácter
SELECT * FROM tabla WHERE columna REGEXP 'patrón.*'; -- Comienza con 'patrón'
SELECT * FROM tabla WHERE columna REGEXP '.*patrón'; -- Termina con 'patrón'
SELECT * FROM tabla WHERE columna REGEXP '.*patrón.*'; -- Contiene 'patrón'

-- * representa cero o más repeticiones del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón.*'; -- Comienza con 'patrón'
SELECT * FROM tabla WHERE columna REGEXP '.*patrón'; -- Termina con patrón'
SELECT * FROM tabla WHERE columna REGEXP '.*patrón.*'; -- Contiene 'patrón'

-- + representa una o más repeticiones del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón.+'; -- Comienza con 'patrón' seguido de uno o más caracteres
SELECT * FROM tabla WHERE columna REGEXP '.+patrón'; -- Termina con 'patrón' precedido de uno o más caracteres

-- ? representa cero o una repetición del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón.?'; -- Comienza con 'patrón' seguido de cero o un carácter
SELECT * FROM tabla WHERE columna REGEXP '.?patrón'; -- Termina con 'patrón' precedido de cero o un carácter

-- [] define un conjunto de caracteres
SELECT * FROM tabla WHERE columna REGEXP 'patrón[abc]'; -- Comienza con 'patrón' seguido de 'a', 'b' o 'c'
SELECT * FROM tabla WHERE columna REGEXP '[abc]patrón'; -- Termina con 'patrón' precedido de 'a', 'b' o 'c'

-- [^] niega el conjunto de caracteres
SELECT * FROM tabla WHERE columna REGEXP 'patrón[^abc]'; -- Comienza con 'patrón' seguido de cualquier carácter excepto 'a', 'b' o 'c'
SELECT * FROM tabla WHERE columna REGEXP '[^abc]patrón'; -- Termina con 'patrón' precedido de cualquier carácter excepto 'a', 'b' o 'c'

-- ^ indica el inicio de la cadena
SELECT * FROM tabla WHERE columna REGEXP '^patrón'; -- Comienza con 'patrón'

-- $ indica el final de la cadena
SELECT * FROM tabla WHERE columna REGEXP 'patrón$'; -- Termina con 'patrón'

-- {n} especifica exactamente n repeticiones del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón{3}'; -- 'patrón' seguido exactamente de 3 caracteres

-- {n,} especifica n o más repeticiones del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón{2,}'; -- 'patrón' seguido de 2 o más caracteres

-- {n,m} especifica entre n y m repeticiones del carácter anterior
SELECT * FROM tabla WHERE columna REGEXP 'patrón{2,4}'; -- 'patrón' seguido de entre 2 y 4 caracteres
