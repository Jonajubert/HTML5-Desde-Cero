# HTML5 Desde Cero

## Capítulo 007 - Imágenes

En los capítulos anteriores aprendimos a estructurar contenido y conectar diferentes recursos mediante enlaces.

Ahora vamos a incorporar imágenes a nuestras páginas utilizando HTML.

---

# ¿Qué aprenderás?

En este capítulo veremos:

- La etiqueta `<img>`.
- El atributo `src`.
- El atributo `alt`.
- `width` y `height`.
- Rutas de imágenes.
- Formatos habituales.
- Buenas prácticas básicas.
- La importancia de la accesibilidad.

---

# La etiqueta img

Para insertar una imagen utilizamos:

```html
<img>
```

Por ejemplo:

```html
<img
    src="img/montana.jpg"
    alt="Montaña junto a un lago"
>
```

La etiqueta `<img>` es un elemento vacío: no contiene contenido interno ni utiliza una etiqueta de cierre como `<p></p>`.

---

# El atributo src

`src` indica la ubicación del recurso.

Por ejemplo:

```html
src="img/montana.jpg"
```

Podemos interpretarlo como:

```text
src
 ↓
source
 ↓
origen de la imagen
```

El navegador utilizará esa ruta para intentar localizar el archivo.

---

# El atributo alt

`alt` proporciona una alternativa textual para la imagen.

```html
alt="Montaña junto a un lago"
```

Esto resulta importante para la accesibilidad.

Por ejemplo, tecnologías de asistencia como los lectores de pantalla pueden utilizar esta información para comunicar el contenido o propósito de la imagen.

También puede aparecer como alternativa cuando el recurso gráfico no se carga.

---

# Un buen texto alternativo

En lugar de:

```html
alt="imagen"
```

podemos proporcionar información útil:

```html
alt="Montaña junto a un lago"
```

El texto debería depender del contexto y del propósito de la imagen.

No se trata simplemente de describir cada detalle.

La pregunta útil es:

```text
¿Qué información aporta esta imagen
en este contexto?
```

---

# Imágenes decorativas

No todas las imágenes transmiten información.

Cuando una imagen es puramente decorativa, normalmente podemos utilizar:

```html
alt=""
```

Esto permite que tecnologías de asistencia puedan ignorar una imagen que no aporta contenido relevante.

---

# width y height

Podemos especificar dimensiones:

```html
<img
    src="img/montana.jpg"
    alt="Montaña junto a un lago"
    width="600"
    height="400"
>
```

Tenemos:

```text
width
  ↓
ancho

height
  ↓
alto
```

Los atributos HTML `width` y `height` de `<img>` utilizan valores numéricos que representan dimensiones en píxeles CSS.

Más adelante, con CSS, tendremos mayor control sobre la presentación y adaptación de las imágenes.

---

# Rutas relativas

Supongamos esta estructura:

```text
proyecto/
│
├── index.html
│
└── img/
    └── foto.jpg
```

Podemos escribir:

```html
<img
    src="img/foto.jpg"
    alt="Descripción de la fotografía"
>
```

Estamos utilizando una ruta relativa.

---

# Imagen en la misma carpeta

Si tenemos:

```text
proyecto/
│
├── index.html
└── foto.jpg
```

podemos escribir:

```html
<img
    src="foto.jpg"
    alt="Descripción de la fotografía"
>
```

---

# Imagen desde una URL

También podemos encontrar imágenes cuyo `src` utiliza una URL:

```html
<img
    src="https://ejemplo.com/imagen.jpg"
    alt="Descripción de la imagen"
>
```

En proyectos reales debemos considerar aspectos como permisos de uso, disponibilidad del recurso, privacidad, rendimiento y dependencia de servidores externos.

---

# Formatos habituales

Existen diferentes formatos de imagen.

## JPG / JPEG

Muy utilizado para fotografías.

```text
JPG
 ↓
Fotografías
```

---

## PNG

Admite transparencia y suele encontrarse en gráficos e imágenes que la requieren.

```text
PNG
 ↓
Transparencia
```

---

## WebP

Formato moderno que puede ofrecer buena compresión manteniendo una calidad adecuada.

```text
WebP
 ↓
Buena relación
calidad / tamaño
```

---

## SVG

Formato vectorial especialmente útil para elementos como:

```text
Logos
Iconos
Ilustraciones
Gráficos
```

Al ser vectorial, puede escalar sin la pérdida de calidad propia de una imagen rasterizada.

---

# Estructura del proyecto

En este capítulo utilizamos:

```text
007-Imágenes/
│
├── index.html
├── README.md
└── img/
    ├── montana.jpg
    └── html5-logo.png
```

Mantener nuestros archivos organizados facilita trabajar con proyectos cada vez más grandes.

---

# Ejemplo completo

```html
<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Imágenes en HTML5</title>

</head>

<body>

    <h1>Galería de imágenes</h1>

    <img
        src="img/montana.jpg"
        alt="Montaña junto a un lago"
        width="600"
        height="400"
    >

    <h2>Logo de HTML5</h2>

    <img
        src="img/html5-logo.png"
        alt="Logo de HTML5"
        width="150"
        height="150"
    >

</body>

</html>
```

---

# Buenas prácticas

Al trabajar con imágenes conviene considerar:

```text
✓ Utilizar textos alternativos adecuados.

✓ Elegir el formato correcto.

✓ Evitar archivos innecesariamente pesados.

✓ Mantener organizadas las carpetas.

✓ Utilizar nombres de archivo descriptivos.

✓ Respetar licencias y derechos de uso.
```

---

# Dato importante

`alt` no está pensado principalmente para SEO.

Su función fundamental es proporcionar una **alternativa textual accesible** cuando corresponde.

Por eso:

```html
alt="imagen"
```

normalmente aporta muy poca información.

En cambio:

```html
alt="Montaña junto a un lago"
```

puede comunicar el contenido relevante de la imagen en ese contexto.

---

# Ejercicio

Creá una carpeta:

```text
img/
```

y agregá una imagen.

Después insertala en tu página:

```html
<img
    src="img/mi-imagen.jpg"
    alt="Descripción de mi imagen"
>
```

Comprobá que se muestre correctamente en el navegador.

---

# Desafío extra

Agregá tres imágenes utilizando formatos diferentes:

```text
JPG
PNG
WebP
```

Después investigá:

- El tamaño de cada archivo.
- Para qué tipo de contenido resulta adecuado.
- Qué diferencias observás entre ellos.

---

# Próximo capítulo

Ya sabemos agregar texto, listas, enlaces e imágenes.

Nuestra página HTML comienza a tener los elementos fundamentales que encontramos habitualmente en la Web.
