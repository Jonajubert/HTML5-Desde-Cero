# HTML5 Desde Cero

## Capítulo 005 - Listas

En los capítulos anteriores comenzamos a organizar el contenido de nuestras páginas utilizando encabezados y párrafos.

Ahora aprenderemos otra estructura fundamental de HTML: las listas.

---

# ¿Qué aprenderás?

- Qué es una lista en HTML.
- Cómo utilizar `<ul>`.
- Cómo utilizar `<ol>`.
- Cómo utilizar `<li>`.
- Diferencias entre listas ordenadas y desordenadas.
- Cómo elegir correctamente el tipo de lista.

---

# ¿Qué es una lista?

Una lista permite agrupar varios elementos relacionados.

Por ejemplo:

```text
HTML
CSS
JavaScript
```

HTML proporciona etiquetas específicas para representar este tipo de contenido.

Las principales son:

```html
<ul>
<ol>
<li>
```

---

# Lista desordenada

Una lista desordenada utiliza:

```html
<ul>
```

Dentro colocamos los elementos mediante:

```html
<li>
```

Por ejemplo:

```html
<ul>
    <li>HTML5</li>
    <li>CSS</li>
    <li>JavaScript</li>
</ul>
```

El navegador normalmente mostrará:

```text
• HTML5
• CSS
• JavaScript
```

---

# ¿Qué significa ul?

`ul` proviene de:

```text
Unordered List
```

o:

```text
Lista desordenada
```

La utilizamos cuando el orden de los elementos no cambia el significado de la información.

Por ejemplo:

```html
<ul>
    <li>Mouse</li>
    <li>Teclado</li>
    <li>Monitor</li>
</ul>
```

No importa cuál aparece primero.

---

# Lista ordenada

Cuando el orden sí es importante utilizamos:

```html
<ol>
```

Por ejemplo:

```html
<ol>
    <li>Abrir Visual Studio Code</li>
    <li>Crear index.html</li>
    <li>Escribir el código</li>
    <li>Abrir la página</li>
</ol>
```

El navegador mostrará normalmente:

```text
1. Abrir Visual Studio Code
2. Crear index.html
3. Escribir el código
4. Abrir la página
```

---

# ¿Qué significa ol?

`ol` proviene de:

```text
Ordered List
```

o:

```text
Lista ordenada
```

En este caso la posición de cada elemento tiene significado.

---

# Elementos de una lista

Tanto `<ul>` como `<ol>` utilizan:

```html
<li>
```

`li` significa:

```text
List Item
```

Es decir:

```text
Elemento de lista
```

Ejemplo:

```html
<ul>
    <li>HTML</li>
    <li>CSS</li>
</ul>
```

Podemos visualizar la estructura:

```text
<ul>
 │
 ├── <li> HTML
 │
 └── <li> CSS
```

---

# ul vs ol

La diferencia principal no es visual.

## Lista desordenada

```html
<ul>
```

La utilizamos cuando:

```text
El orden NO importa.
```

Ejemplo:

```text
• HTML
• CSS
• JavaScript
```

## Lista ordenada

```html
<ol>
```

La utilizamos cuando:

```text
El orden SÍ importa.
```

Ejemplo:

```text
1. Primero
2. Segundo
3. Tercero
```

---

# HTML representa significado

No deberíamos elegir `<ol>` simplemente porque queremos ver números.

Tampoco deberíamos elegir `<ul>` solamente porque nos gustan los puntos.

Primero debemos preguntarnos:

```text
¿El orden de estos elementos
tiene algún significado?
```

Si la respuesta es:

```text
NO → <ul>
SÍ → <ol>
```

Después podremos modificar su apariencia utilizando CSS.

---

# Ejemplo completo

```html
<h2>Tecnologías</h2>

<ul>
    <li>HTML5</li>
    <li>CSS</li>
    <li>JavaScript</li>
</ul>

<h2>Ruta de aprendizaje</h2>

<ol>
    <li>Aprender HTML</li>
    <li>Aprender CSS</li>
    <li>Aprender JavaScript</li>
</ol>
```

---

# Curiosidad

Las listas pueden contener otras listas.

Esto se conoce como una lista anidada.

Por ejemplo:

```html
<ul>
    <li>
        Frontend

        <ul>
            <li>HTML</li>
            <li>CSS</li>
            <li>JavaScript</li>
        </ul>

    </li>

    <li>Backend</li>
</ul>
```

Visualmente:

```text
• Frontend
    • HTML
    • CSS
    • JavaScript

• Backend
```

No necesitamos utilizarlas todavía, pero es útil saber que las listas pueden representar estructuras más complejas.

---

# Ejercicio

Crear una página con dos listas.

Primero una lista desordenada con tres tecnologías:

```text
HTML
CSS
JavaScript
```

Después una lista ordenada con los pasos necesarios para crear una página web.

Intentá responder:

```text
¿Por qué utilizaste <ul> en una
y <ol> en la otra?
```

---

# Dato importante

`<ul>` y `<ol>` no se eligen por cómo se ven.

Se eligen según el significado de los elementos:

```text
<ul> → el orden NO importa.

<ol> → el orden SÍ importa.

<li> → cada elemento de la lista.
```

---

# Próximo capítulo

Seguiremos incorporando elementos HTML para crear páginas cada vez más completas y mejor estructuradas.
