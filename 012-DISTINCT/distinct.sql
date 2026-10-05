/*
==========================================
SQL SERVER DESDE CERO
Capítulo 012 - DISTINCT
==========================================
*/


-- PREPARACIÓN DEL EJEMPLO
-- Utilizamos una tabla temporal local.
-- No modificamos la tabla Productos de capítulos anteriores.

-- Permite ejecutar nuevamente el script en la misma sesión.
IF OBJECT_ID('tempdb..#Productos') IS NOT NULL
    DROP TABLE #Productos;
GO


CREATE TABLE #Productos
(
    IdProducto INT PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);
GO


-- Cargamos datos con precios y valores de stock repetidos.
INSERT INTO #Productos (IdProducto, Nombre, Precio, Stock)
VALUES
    (1, N'Mouse',             15000.00,  10),
    (2, N'Teclado',           25000.00,   8),
    (3, N'Monitor',          180000.00,   5),
    (4, N'Auriculares',       32000.00,  12),
    (5, N'Mouse inalámbrico', 25000.00,  10),
    (6, N'Teclado compacto',  25000.00,   8);
GO


-- Mostramos todos los productos.
SELECT *
FROM #Productos
ORDER BY IdProducto;
GO


-- Sin DISTINCT: los valores repetidos también aparecen.
-- Resultado: 5, 8, 8, 10, 10, 12.
SELECT Stock
FROM #Productos
ORDER BY Stock ASC;
GO


-- Con DISTINCT: cada valor aparece una sola vez.
-- Resultado: 5, 8, 10, 12.
SELECT DISTINCT Stock
FROM #Productos
ORDER BY Stock ASC;
GO


-- También podemos obtener precios únicos.
SELECT DISTINCT Precio
FROM #Productos
ORDER BY Precio ASC;
GO


-- Con varias columnas se comparan las combinaciones completas.
-- Un mismo precio puede aparecer con distintos valores de stock.
SELECT DISTINCT Precio, Stock
FROM #Productos
ORDER BY Precio ASC, Stock ASC;
GO


-- Combinamos WHERE, DISTINCT y ORDER BY.
SELECT DISTINCT Stock
FROM #Productos
WHERE Precio > 20000
ORDER BY Stock ASC;
GO


-- DISTINCT no garantiza el orden.
-- Para ordenar de mayor a menor utilizamos DESC.
SELECT DISTINCT Stock
FROM #Productos
ORDER BY Stock DESC;
GO


-- Todas las filas siguen siendo diferentes porque incluyen
-- un IdProducto único. Esta consulta devuelve seis filas.
SELECT DISTINCT *
FROM #Productos
ORDER BY IdProducto;
GO


-- Comprobamos que los productos originales siguen en la tabla.
SELECT *
FROM #Productos
ORDER BY IdProducto;
GO


/*
EJERCICIO

1. Mostrar precios únicos.
2. Ordenarlos de menor a mayor.
3. Mostrar stocks únicos de mayor a menor.
4. Obtener combinaciones únicas de precio y stock.


DESAFÍO

Mostrar precios únicos de productos con Stock >= 10.
Ordenarlos de mayor a menor.

Resultado esperado:
32000.00
25000.00
15000.00
*/
