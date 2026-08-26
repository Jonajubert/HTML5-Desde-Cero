# HTML5 Desde Cero

## Capítulo 006 - Enlaces

En los capítulos anteriores aprendimos a estructurar información utilizando elementos como encabezados, párrafos y listas.

Ahora incorporaremos uno de los elementos fundamentales de la Web:

**los enlaces.**

---

# ¿Qué aprenderás?

- Qué es un enlace.
- Cómo utilizar `<a>`.
- Para qué sirve `href`.
- Cómo crear enlaces externos.
- Cómo conectar páginas de nuestro proyecto.
- Cómo enlazar una sección de la misma página.
- Cómo descargar archivos.
- Cómo utilizar `target`.

---

# El elemento `<a>`

HTML utiliza:

```html
<a>
```

para crear enlaces.

Por ejemplo:

```html
<a href="https://www.wikipedia.org">
    Visitar Wikipedia
</a>
```

Podemos separar este código:

```text
<a
↓
Elemento

href
↓
Destino

Visitar Wikipedia
↓
Texto visible

</a>
↓
Cierre
```

---

# El atributo href

`href` indica el destino del enlace.

Por ejemplo:

```html
<a href="https://www.wikipedia.org">
    Wikipedia
</a>
```

El navegador muestra:

```text
Wikipedia
```

pero al seleccionarlo nos lleva a la dirección indicada en `href`.

---

# Enlaces externos

Un enlace externo apunta hacia otro sitio web.

```html
<a href="https://www.wikipedia.org">
    Wikipedia
</a>
```

En este caso utilizamos una dirección completa.

---

# Abrir en una nueva pestaña

Podemos utilizar:

```html
target="_blank"
```

Por ejemplo:

```html
<a href="https://www.wikipedia.org"
   target="_blank"
   rel="noopener noreferrer">
    Wikipedia
</a>
```

`target="_blank"` solicita abrir el enlace en una nueva pestaña o contexto de navegación.

Al utilizarlo con enlaces externos, es una buena práctica acompañarlo con:

```html
rel="noopener noreferrer"
```

---

# Enlaces internos

También podemos conectar páginas de nuestro propio proyecto.

Supongamos:

```text
006-Enlaces/
│
├── index.html
└── contacto.html
```

Desde `index.html` podemos escribir:

```html
<a href="contacto.html">
    Contacto
</a>
```

Ahora ambas páginas están conectadas.

En `contacto.html` podemos regresar:

```html
<a href="index.html">
    Volver al inicio
</a>
```

---

# Enlaces hacia una sección

También podemos movernos dentro del mismo documento.

Primero necesitamos un identificador:

```html
<footer id="contacto">
    ...
</footer>
```

Después podemos crear:

```html
<a href="#contacto">
    Ir al contacto
</a>
```

El símbolo:

```text
#
```

indica que estamos apuntando hacia un `id` del documento.

Podemos visualizarlo así:

```text
href="#contacto"
       │
       ▼
id="contacto"
```

---

# Descargar un archivo

También podemos utilizar un enlace para descargar determinados recursos.

```html
<a href="manual.pdf" download>
    Descargar manual
</a>
```

Tenemos:

```text
href="manual.pdf"
↓
Archivo

download
↓
Solicita su descarga
```

El comportamiento final también puede depender del navegador, del origen del recurso y de cómo sea servido.

---

# El atributo title

Podemos encontrar enlaces como:

```html
<a href="contacto.html"
   title="Ir a la página de contacto">
    Contacto
</a>
```

`title` proporciona información adicional.

Sin embargo, no debemos depender de `title` para transmitir información esencial: el propio texto del enlace debería ser suficientemente descriptivo.

---

# Texto de los enlaces

Esto es poco descriptivo:

```html
<a href="documentacion.html">
    Hacé clic acá
</a>
```

Es preferible:

```html
<a href="documentacion.html">
    Consultar documentación de HTML
</a>
```

El usuario puede entender el destino incluso leyendo solamente el enlace.

---

# Tipos de enlaces

Podemos resumir:

```text
EXTERNO
↓
https://...

INTERNO
↓
contacto.html

SECCIÓN
↓
#contacto

ARCHIVO
↓
manual.pdf
```

Todos utilizan el mismo elemento:

```html
<a>
```

Lo que cambia principalmente es el valor de:

```html
href
```

---

# Ejemplo completo

```html
<a href="https://www.wikipedia.org"
   target="_blank"
   rel="noopener noreferrer">
    Wikipedia
</a>

<a href="contacto.html">
    Contacto
</a>

<a href="#contacto">
    Ir al contacto
</a>

<a href="manual.pdf" download>
    Descargar manual
</a>
```

---

# Dato importante

Los enlaces son una parte fundamental de la Web.

Pero no alcanza con que funcionen.

También deberían ser:

```text
claros
descriptivos
comprensibles
accesibles
```

En lugar de:

```text
Hacé clic acá
```

es preferible utilizar:

```text
Consultar documentación de HTML
```

---

# Ejercicio

Crear una página que contenga:

1. Un enlace hacia tu sitio web favorito.
2. Un enlace hacia otra página HTML del proyecto.
3. Un enlace hacia una sección de la misma página.
4. Un enlace para descargar un archivo.

Después comprobá que cada enlace funciona correctamente.

---

# Próximo capítulo

Ya podemos conectar diferentes recursos mediante HTML.

A medida que avancemos podremos construir sitios con una navegación cada vez más completa.
