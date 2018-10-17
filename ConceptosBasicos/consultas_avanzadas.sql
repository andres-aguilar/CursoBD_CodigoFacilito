-- Buscar por patrones en un string
SELECT * FROM libros WHERE titulo LIKE '%Harry Potter%';

-- Buscar titulo con segundo caracter 'a'
SELECT * FROM libros WHERE titulo LIKE '_a%';