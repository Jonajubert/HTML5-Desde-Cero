# SQL Server Desde Cero

## Capítulo 005 - Crear una base de datos

En el capítulo anterior instalamos SQL Server y SQL Server Management Studio (SSMS).

También ejecutamos nuestra primera consulta para comprobar que el entorno funcionaba correctamente.

Ahora vamos a crear nuestra primera base de datos.

---

# ¿Qué aprenderás?

- Qué es una base de datos.
- Cómo utilizar `CREATE DATABASE`.
- Cómo utilizar `USE`.
- Qué función cumple `GO`.
- Cómo comprobar qué base estamos utilizando.
- Cómo visualizar nuestra base desde SSMS.

---

# ¿Qué es una base de datos?

Podemos pensar una base de datos como un contenedor organizado donde posteriormente almacenaremos información.

Por ejemplo, una aplicación para una tienda podría necesitar información sobre:

- Clientes.
- Productos.
- Ventas.
- Proveedores.

Podemos crear una base llamada:

```text
TiendaDB
```

y posteriormente construir dentro de ella las tablas necesarias.

---

# Crear una base de datos

La instrucción básica es:

```sql
CREATE DATABASE TiendaDB;
```

Podemos leerla prácticamente como:

```text
CREATE DATABASE
      ↓
Crear base de datos

TiendaDB
      ↓
Nombre de nuestra base
```

---

# Ejecutar el comando

En SSMS:

1. Nos conectamos al servidor.
2. Seleccionamos `New Query`.
3. Escribimos:

```sql
CREATE DATABASE TiendaDB;
GO
```

4. Presionamos `Execute`.

Si la operación fue correcta, SQL Server habrá creado la base.

---

# Ver la base en SSMS

En Object Explorer buscamos:

```text
Databases
```

Si no aparece inmediatamente podemos utilizar:

```text
Refresh
```

Después deberíamos encontrar:

```text
Databases
│
└── TiendaDB
```

---

# Seleccionar una base de datos

Crear una base no significa necesariamente que nuestras siguientes instrucciones se ejecutarán sobre ella.

Podemos seleccionar explícitamente la base utilizando:

```sql
USE TiendaDB;
GO
```

A partir de ese momento, las instrucciones siguientes se ejecutarán utilizando ese contexto.

---

# ¿Cómo comprobarlo?

SQL Server proporciona:

```sql
DB_NAME()
```

Podemos ejecutar:

```sql
SELECT DB_NAME() AS BaseDeDatosActual;
```

Resultado:

```text
BaseDeDatosActual
-----------------
TiendaDB
```

---

# ¿Qué significa GO?

Es común encontrar:

```sql
GO
```

en scripts de SQL Server.

Por ejemplo:

```sql
CREATE DATABASE TiendaDB;
GO

USE TiendaDB;
GO
```

`GO` funciona como separador de lotes en herramientas como SSMS.

Nos permite dividir nuestro script en bloques de ejecución.

Por ahora podemos visualizarlo así:

```text
BLOQUE 1

CREATE DATABASE TiendaDB;

        ↓
       GO
        ↓

BLOQUE 2

USE TiendaDB;
```

---

# Ver las bases existentes

También podemos consultar las bases disponibles:

```sql
SELECT name
FROM sys.databases;
```

Entre los resultados encontraremos bases del sistema y nuestra nueva base:

```text
master
tempdb
model
msdb
TiendaDB
```

---

# ¿Qué acabamos de crear?

Un punto importante:

```text
BASE DE DATOS
      │
      └── TiendaDB
```

Todavía no tenemos:

```text
Clientes
Productos
Ventas
```

Esas serán tablas que tendremos que crear posteriormente.

Podemos pensarlo así:

```text
TiendaDB
│
├── Clientes      ← próximamente
├── Productos     ← próximamente
└── Ventas        ← próximamente
```

Primero creamos el contenedor.

Después diseñamos su estructura.

---

# Curiosidad

Cuando ejecutamos:

```sql
CREATE DATABASE TiendaDB;
```

SQL Server crea y administra archivos físicos para esa base.

De forma simplificada encontraremos:

```text
Archivo de datos
        +
Archivo de log
```

El archivo de datos almacena la información de la base.

El log de transacciones registra cambios y operaciones necesarias para mantener la integridad y recuperación de la base.

SQL Server administra estos archivos automáticamente cuando utilizamos la creación básica.

---

# Ejercicio

Crear una segunda base:

```sql
CREATE DATABASE PracticaDB;
GO
```

Seleccionarla:

```sql
USE PracticaDB;
GO
```

Y comprobarla:

```sql
SELECT DB_NAME() AS BaseDeDatosActual;
```

Resultado esperado:

```text
PracticaDB
```

---

# Dato importante

`CREATE DATABASE` crea la base de datos.

```sql
CREATE DATABASE TiendaDB;
```

`USE` selecciona sobre qué base queremos trabajar.

```sql
USE TiendaDB;
```

Son operaciones diferentes.

---

# Próximo capítulo

Ya tenemos nuestra base de datos.

El siguiente paso será comenzar a construir su estructura creando nuestras primeras tablas.
