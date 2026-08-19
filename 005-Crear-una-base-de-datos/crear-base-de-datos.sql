/*
==========================================
SQL SERVER DESDE CERO
Capítulo 005 - Crear una base de datos
==========================================
*/


-- Creamos nuestra primera base de datos.
CREATE DATABASE TiendaDB;
GO


-- Seleccionamos la base de datos
-- sobre la que queremos trabajar.
USE TiendaDB;
GO


-- Mostramos el nombre de la base
-- de datos actualmente seleccionada.
SELECT DB_NAME() AS BaseDeDatosActual;
GO
