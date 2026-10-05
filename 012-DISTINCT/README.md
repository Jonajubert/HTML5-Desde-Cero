# SQL Server Desde Cero

## Capítulo 012 - DISTINCT

En capítulos anteriores aprendimos a consultar información con `SELECT`, filtrarla con `WHERE` y ordenarla con `ORDER BY`.

Ahora aprenderemos a obtener resultados sin filas repetidas utilizando:

```sql
DISTINCT
```

---

## Sintaxis básica

```sql
SELECT DISTINCT columna
FROM tabla;
```

`DISTINCT` se escribe después de `SELECT`.

Permite devolver solamente las filas únicas entre las columnas seleccionadas.

---

## Nuestra tabla de práctica

Para observar las repeticiones utilizaremos estos datos:

| IdProducto | Nombre | Precio | Stock |
|---|---|---|---|
| 1 | Mouse | 15000.00 | 10 |
| 2 | Teclado | 25000.00 | 8 |
| 3 | Monitor | 180000.00 | 5 |
| 4 | Auriculares | 32000.00 | 12 |
| 5 | Mouse inalámbrico | 25000.00 | 10 |
| 6 | Teclado compacto | 25000.00 | 8 |

El archivo `distinct.sql` crea una tabla temporal llamada `#Productos` y carga estos registros.

El símbolo `#` indica que es una tabla temporal local.

Trabajaremos en la misma ventana de consulta de SSMS. Esta tabla no reemplaza la tabla `Productos` de los capítulos anteriores.

---

## Consulta sin DISTINCT

```sql
SELECT Stock
FROM #Productos
ORDER BY Stock ASC;
```

Resultado:

| Stock |
|---|
| 5 |
| 8 |
| 8 |
| 10 |
| 10 |
| 12 |

Los valores `8` y `10` aparecen más de una vez porque distintos productos tienen el mismo stock.

---

## Consulta con DISTINCT

```sql
SELECT DISTINCT Stock
FROM #Productos
ORDER BY Stock ASC;
```

Resultado:

| Stock |
|---|
| 5 |
| 8 |
| 10 |
| 12 |

Ahora cada valor aparece una sola vez.

---

## ¿DISTINCT elimina registros?

No.

La consulta devuelve valores únicos, pero los seis productos continúan en la tabla.

Podemos comprobarlo:

```sql
SELECT *
FROM #Productos
ORDER BY IdProducto;
```

`DISTINCT` actúa sobre el resultado de la consulta.

---

## Varias columnas

También podemos seleccionar más de una columna:

```sql
SELECT DISTINCT Precio, Stock
FROM #Productos
ORDER BY Precio ASC, Stock ASC;
```

Resultado:

| Precio | Stock |
|---|---|
| 15000.00 | 10 |
| 25000.00 | 8 |
| 25000.00 | 10 |
| 32000.00 | 12 |
| 180000.00 | 5 |

En este caso se comparan las combinaciones completas.

Estos dos pares son diferentes:

| Precio | Stock |
|---|---|
| 25000.00 | 8 |
| 25000.00 | 10 |

Aunque el precio coincida, el stock es distinto.

La combinación `25000.00` y `8` aparece una sola vez en el resultado.

---

## Combinar WHERE y DISTINCT

Podemos filtrar los productos antes de obtener los valores únicos:

```sql
SELECT DISTINCT Stock
FROM #Productos
WHERE Precio > 20000
ORDER BY Stock ASC;
```

Resultado:

| Stock |
|---|
| 5 |
| 8 |
| 10 |
| 12 |

Primero consideramos los productos que cumplen la condición.

Después obtenemos los valores de stock sin repeticiones y los mostramos ordenados.

En estos datos, el resultado coincide con el ejemplo sin filtro porque otro producto conserva el stock `10`.

---

## DISTINCT no garantiza el orden

Si necesitamos un resultado ordenado, debemos utilizar:

```sql
ORDER BY
```

Por ejemplo:

```sql
SELECT DISTINCT Stock
FROM #Productos
ORDER BY Stock DESC;
```

Resultado:

| Stock |
|---|
| 12 |
| 10 |
| 8 |
| 5 |

Con `SELECT DISTINCT`, las columnas utilizadas en `ORDER BY` deben formar parte de la selección.

---

## Cuidado con SELECT DISTINCT *

Esta consulta considera todas las columnas:

```sql
SELECT DISTINCT *
FROM #Productos;
```

Como `IdProducto` es diferente para cada producto, las filas completas también son diferentes.

Por eso, devolverá los seis productos.

Si queremos conocer los valores de stock únicos, debemos seleccionar solamente `Stock`.

---

## Ejercicio

Utilizando la tabla temporal `#Productos`:

1. Mostrar los precios sin repeticiones.
2. Ordenarlos de menor a mayor.
3. Mostrar los valores de stock únicos de mayor a menor.
4. Obtener las combinaciones únicas de precio y stock.

---

## Desafío

Mostrar los precios únicos de los productos cuyo stock sea mayor o igual a `10`.

Ordenar los precios de mayor a menor.

Pista:

```sql
SELECT DISTINCT
FROM
WHERE
ORDER BY
```

Resultado esperado:

| Precio |
|---|
| 32000.00 |
| 25000.00 |
| 15000.00 |

---

## Curiosidad

DISTINCT puede utilizarse para obtener listas de ciudades, categorías o marcas sin repeticiones.

La clave está en elegir qué columnas queremos comparar.

---

## Resumen

| Instrucción | Función |
|---|---|
| `SELECT` | Selecciona las columnas |
| `DISTINCT` | Devuelve filas únicas en el resultado |
| `FROM` | Indica la tabla |
| `WHERE` | Filtra los registros |
| `ORDER BY` | Ordena el resultado |

Ejemplo:

```sql
SELECT DISTINCT Stock
FROM #Productos
WHERE Precio > 20000
ORDER BY Stock ASC;
```

La idea principal:

**DISTINCT evita filas repetidas en el resultado, sin borrar registros de la tabla.**

---

## Ejecutar el ejemplo

1. Abrí SQL Server Management Studio.
2. Conectate a tu instancia.
3. Abrí `distinct.sql`.
4. Ejecutá el archivo completo.

El script crea y carga la tabla temporal antes de ejecutar las consultas.

Para repetir consultas individuales, utilizá la misma ventana donde creaste `#Productos`.
