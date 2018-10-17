/* Funciones con strings */

-- Concatenar columnas
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM autores;

-- Longitud
SELECT LENGTH('hola mundo') AS longitud;

-- Mayusculas/minusculas
SELECT UPPER(nombre) FROM autores;
SELECT LOWER(nombre) FROM autores;

-- Quitar espacios al incio y/o al final
SELECT TRIM("   cadena   ");

-- Substrings por los extremos
SELECT LEFT("cadena de carecteres", 5) AS substr_left, RIGHT("cadena de caracteres", 10) AS substr_right;

/* Funciones con números */

-- Obtener un número aleatorio
SELECT RAND();

-- Número aleatorio entre 0 y 100
SELECT ROUND(RAND()*100);

-- Truncar los decimales de un número flotante
SELECT TRUNCATE(1.123456789, 3);

-- Elevar un número a x potencia
SELECT POW(2, 16);

/* Funciones con fechas */ 

-- Obtener la fecha exacta
SELECT NOW();

-- Extraer los valores de la fecha
set @now = NOW();
SELECT SECOND(@now), MINUTE(@now), HOUR(@now),
       DAY(@now), MONTH(@now), YEAR(@now);

-- Extraer el dia de la semana, mes y año
SELECT DAYOFWEEK(@now), DAYOFMONTH(@now), DAYOFYEAR(@now);

-- Convertir una fecha (timestamp) a DATE
SELECT DATE(@now);

-- Obtener la fecha en tipe date
SELECT CURDATE();

-- Verificar los libros creados hoy
SELECT * from DATE(fecha_creacion) = CURDATE();

-- Agregar dias a una fecha. DAY se puede cambiar por cualquier otro indicador de medida
SELECT @now + INTERVAL 30 DAY;

/* Crear una función */
DELIMITER //
CREATE FUNCTION add_days(fecha DATE, dias INT)
RETURNS DATE
BEGIN
    RETURN fecha + INTERVAL dias DAY;
END//

DELIMITER ;

-- Utilizar la función creada
SELECT add_days(NOW(), 60);

-- Listar las funciones 
SELECT name FROM mysql.proc;

-- Listar solo las funciones creadas por nosotros
SELECT name FROM mysql.proc WHERE db = DATABASE() AND type = 'FUNCTION';

-- Eliminar un a función
DROP FUNCTION add_days;