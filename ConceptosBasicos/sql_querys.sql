-- Declaracion de variables 

SET @nombre = "Andres";
SET @apelido := "Aguilar";

-- Declarar varias variables en una sola linea
SET @curso = "Base de datos", @gestor = "MySQL";

-- Mandar a llamar a una de las variables
SELECT @nombre;

-- Listar las bases de datos 
SHOW databases;

-- Eliminar una base de datos si existe
DROP DATABASE IF EXISTS test1;

-- Crear una base de datos si no existe
CREATE DATABASE IF NOT EXISTS test1;

-- Seleccionar una base de datos para trabajar en ella
use test1;

-- Crear una tabla
CREATE TABLE IF NOT EXISTS autores (
    id_autor int(11),
    nombre varchar(25),
    apellido varchar(25),
    genero char(1),
    fecha_naciemiento date,
    pais_origen varchar(40)
);

-- Crear tabla a partir de otra
CREATE TABLE usuarios LIKE autores;

-- Insertar datos
INSERT INTO  autores (id_autor, nombre, apellido, genero, fecha_naciemiento, pais_origen) VALUES (1, "Andres", "aguilar", "M", "1989-09-05", "Mexico");

-- Para ejecutar un archivo sql podemos indicarlo con SOURCE /path/to/file.sql;