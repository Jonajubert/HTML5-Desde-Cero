# HTML5 Desde Cero

## Capítulo 004 - Encabezados y párrafos

En el capítulo anterior conocimos las etiquetas que HTML proporciona para crear títulos y párrafos.

Ahora vamos a utilizarlas para construir una página correctamente organizada.

---

# ¿Qué aprenderás?

- Cómo organizar los encabezados.
- Cómo utilizar `<h1>`, `<h2>` y `<h3>`.
- Cómo utilizar párrafos con `<p>`.
- Qué significa jerarquía de contenido.
- Por qué no debemos elegir un encabezado por su tamaño.

---

# Encabezados en HTML

HTML dispone de seis niveles de encabezados:

```html
<h1>Encabezado nivel 1</h1>
<h2>Encabezado nivel 2</h2>
<h3>Encabezado nivel 3</h3>
<h4>Encabezado nivel 4</h4>
<h5>Encabezado nivel 5</h5>
<h6>Encabezado nivel 6</h6>
```

Estos niveles representan una jerarquía.

No indican simplemente qué texto queremos mostrar más grande.

---

# h1

`<h1>` representa el encabezado principal del contenido.

Por ejemplo:

```html
<h1>Mi sitio web</h1>
```

---

# h2

Podemos utilizar `<h2>` para las principales secciones.

```html
<h2>Sobre nosotros</h2>
```

y:

```html
<h2>Nuestros contenidos</h2>
```

Ambos pertenecen jerárquicamente al contenido definido por el encabezado principal.

---

# h3

Si una sección necesita dividirse nuevamente podemos utilizar `<h3>`.

```html
<h2>Nuestros contenidos</h2>

<h3>HTML5</h3>

<h3>CSS</h3>
```

En este ejemplo, `HTML5` y `CSS` son subsecciones de `Nuestros contenidos`.

---

# Párrafos

Para representar un párrafo utilizamos:

```html
<p>Este es un párrafo.</p>
```

Por ejemplo:

```html
<h2>Sobre nosotros</h2>

<p>
    Somos un proyecto dedicado a aprender
    desarrollo web paso a paso.
</p>
```

El encabezado identifica el tema y el párrafo contiene la información.

---

# Jerarquía

Podemos imaginar nuestra página como un árbol:

```text
Mi sitio web                         h1
│
├── Sobre nosotros                  h2
│   └── Párrafo                     p
│
└── Nuestros contenidos             h2
    │
    ├── HTML5                       h3
    │   └── Párrafo                 p
    │
    └── CSS                         h3
        └── Párrafo                 p
```

Esto permite comprender fácilmente cómo está organizado el documento.

---

# HTML no define solamente apariencia

No deberíamos utilizar:

```html
<h3>
```

simplemente porque visualmente queremos un título más pequeño.

Los encabezados indican la importancia y relación entre las diferentes partes del contenido.

La apariencia posteriormente la controlaremos mediante CSS.

---

# Ejercicio

Crear una página sobre un tema que te interese.

Debe contener:

```text
1 título principal
2 secciones
2 subsecciones
4 párrafos
```

Utilizar correctamente:

```html
<h1>
<h2>
<h3>
<p>
```

Luego observá la estructura del documento e intentá representarla como un árbol.

---

# Dato importante

Los encabezados proporcionan estructura semántica al documento.

Una jerarquía clara facilita la navegación y ayuda a interpretar correctamente el contenido.

---

# Próximo capítulo

Continuaremos incorporando nuevas etiquetas HTML para construir páginas cada vez más completas.
