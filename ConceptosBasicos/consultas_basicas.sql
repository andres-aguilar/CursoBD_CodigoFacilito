-- Obtener todos los registros de la tabla autores
SELECT * FROM autores;

-- Obtener todos los autores que no tienen un pseudonimo
SELECT * FROM autores WHERE pseudonimo IS NULL;

-- Obtener todos los libros publicados en un rango de fechas
SELECT * FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2005-01-01';

-- Obtener los libros por medio de una lista de titulos;
SELECT * FROM libros WHERE titulo in ('titulo 1', 'titulo 2', 'titulo 3');

-- Obtener registros eliminando valores repetidos
SELECT DISTINCT titulo FROM libros;