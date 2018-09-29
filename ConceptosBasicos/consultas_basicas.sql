-- Insertar registros en una tabla

INSERT INTO autores(nombre, apellido, genero, fecha_nacimiento, pais_origen) VALUES('autor 1', 'apellido', 'M', '1980-05-07');
INSERT INTO libros(autor_id, titulo, descripcion, paginas, fecha_publicacion) VALUES (1, 'Titulo', 'description', 150, '2000-01-10');

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

-- Actualizar los datos de un registro
UPDATE libros SET descripcion = 'nueva description' WHERE libro_id = 1;

-- Eliminar todos los libros de un autor
DELETE FROM libros WHERE autor_id = 1;