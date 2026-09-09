# HTML5 Desde Cero

## Capítulo 008 - Rutas absolutas y relativas

Cuando utilizamos HTML necesitamos indicar dónde se encuentran diferentes recursos.

Por ejemplo:

```html
<a href="paginas/contacto.html">
    Contacto
</a>
```

o:

```html
<img
    src="img/logo.png"
    alt="Logo del sitio"
>
```

Los valores utilizados en `href` y `src` contienen rutas.

En este capítulo aprenderemos cómo funcionan.

---

# ¿Qué aprenderás?

- Qué es una ruta.
- Qué es una ruta relativa.
- Cómo acceder a una carpeta.
- Cómo subir un nivel con `../`.
- Qué es una URL absoluta.
- Cómo interpretar una estructura de carpetas.
- Errores frecuentes al escribir rutas.

---

# ¿Qué es una ruta?

Una ruta indica dónde se encuentra un recurso.

Por ejemplo:

```html
<img src="img/logo.png" alt="Logo">
```

Tenemos:

```text
img/logo.png
```

Esta ruta indica dónde debe buscar el navegador el archivo.

---

# Nuestra estructura

Utilizaremos:

```text
008-Rutas-absolutas-y-relativas/
│
├── index.html
│
├── README.md
│
├── img/
│   └── logo.png
│
└── paginas/
    └── contacto.html
```

La ubicación de cada archivo es importante.

---

# Ruta relativa

Una ruta relativa se interpreta tomando como referencia la ubicación del documento actual.

Desde:

```text
index.html
```

podemos acceder a:

```text
img/logo.png
```

utilizando:

```html
<img
    src="img/logo.png"
    alt="Logo del sitio"
>
```

---

# Entrar en una carpeta

Tenemos:

```text
index.html
│
└── img/
    └── logo.png
```

Entonces utilizamos:

```text
img/logo.png
```

Podemos leerlo como:

```text
entrar en img
      ↓
buscar logo.png
```

---

# Otra página

También tenemos:

```text
paginas/
└── contacto.html
```

Desde `index.html` podemos escribir:

```html
<a href="paginas/contacto.html">
    Contacto
</a>
```

El navegador realiza:

```text
index.html
    │
    ▼
 paginas/
    │
    ▼
contacto.html
```

---

# Subir una carpeta

Ahora estamos dentro de:

```text
paginas/contacto.html
```

y queremos regresar a:

```text
index.html
```

La estructura es:

```text
proyecto/
│
├── index.html
│
└── paginas/
    └── contacto.html
```

Podemos utilizar:

```html
<a href="../index.html">
    Volver al inicio
</a>
```

---

# ¿Qué significa ../?

```text
../
```

significa:

```text
SUBIR UN NIVEL
```

Entonces:

```text
paginas/contacto.html
        │
        │ ../
        ▼
      proyecto/
        │
        ▼
     index.html
```

---

# Dos niveles

Si tuviéramos:

```text
proyecto/
│
├── index.html
│
└── paginas/
    └── productos/
        └── detalle.html
```

desde `detalle.html` podríamos utilizar:

```html
<a href="../../index.html">
    Inicio
</a>
```

Tenemos:

```text
../  → subir un nivel
../  → subir otro nivel
```

Por eso:

```text
../../index.html
```

---

# URL absoluta

Una URL absoluta especifica una dirección completa.

Por ejemplo:

```html
<a href="https://www.example.com">
    Visitar sitio
</a>
```

Tenemos:

```text
https://www.example.com
```

El navegador no necesita calcular la ubicación a partir del documento actual.

---

# Comparación

## Relativa

```text
img/logo.png
```

Depende de la ubicación del archivo desde el que hacemos referencia.

---

## Absoluta

```text
https://www.example.com/img/logo.png
```

Indica una dirección completa.

---

# href y src

Ya conocemos:

```html
<a href="...">
```

y:

```html
<img src="...">
```

En ambos casos necesitamos indicar dónde se encuentra un recurso.

Por ejemplo:

```html
<a href="paginas/contacto.html">
```

y:

```html
<img src="img/logo.png">
```

El concepto de rutas se aplica a ambos.

---

# También las utilizaremos en CSS y JavaScript

Más adelante encontraremos:

```html
<link
    rel="stylesheet"
    href="css/styles.css"
>
```

y:

```html
<script src="js/script.js"></script>
```

Otra vez estamos utilizando rutas.

Por eso este concepto no pertenece solamente a enlaces e imágenes.

Es fundamental para organizar cualquier proyecto web.

---

# Error frecuente

Tenemos:

```text
proyecto/
│
├── index.html
│
└── img/
    └── logo.png
```

Esto es correcto:

```html
<img src="img/logo.png" alt="Logo">
```

Pero esto sería incorrecto para esa estructura:

```html
<img src="logo.png" alt="Logo">
```

El navegador buscaría:

```text
proyecto/logo.png
```

pero nuestro archivo realmente está en:

```text
proyecto/img/logo.png
```

---

# Otro error frecuente

Los nombres deben coincidir con los archivos reales.

Si tenemos:

```text
logo.png
```

no conviene escribir:

```text
Logo.png
```

Aunque en algunos entornos pueda funcionar, en otros sistemas las diferencias entre mayúsculas y minúsculas importan.

Una buena práctica es utilizar nombres consistentes.

---

# Mapa mental

Podemos pensar:

```text
¿DÓNDE ESTÁ EL ARCHIVO?
          │
          ├── Dentro de una carpeta
          │
          │   img/logo.png
          │
          ├── Un nivel arriba
          │
          │   ../index.html
          │
          └── Dirección completa
              https://...
```

---

# Ejercicio

Crear esta estructura:

```text
mi-web/
│
├── index.html
│
├── img/
│   └── foto.jpg
│
└── paginas/
    └── contacto.html
```

Desde `index.html`:

1. Mostrar `foto.jpg`.
2. Crear un enlace hacia `contacto.html`.

Desde `contacto.html`:

3. Crear un enlace para volver a `index.html`.

Intentá resolver las tres rutas sin copiar el ejemplo.

---

# Desafío extra

Agregar:

```text
paginas/
└── productos/
    └── producto.html
```

Desde `producto.html`, crear un enlace hacia:

```text
index.html
```

Pensá cuántos niveles necesitás subir.

---

# Dato importante

Las rutas relativas dependen de:

```text
¿DÓNDE ESTOY?
```

y:

```text
¿A DÓNDE QUIERO IR?
```

Antes de modificar el HTML, observá la estructura de carpetas.

Muchas veces un recurso que no aparece no tiene ningún problema.

La ruta simplemente está apuntando al lugar equivocado.

---

# Próximo capítulo

Ya sabemos estructurar páginas, crear enlaces, agregar imágenes y localizar recursos dentro de nuestro proyecto.

Estos conceptos serán fundamentales a medida que nuestros sitios tengan cada vez más archivos.
