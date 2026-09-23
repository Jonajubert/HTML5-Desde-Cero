# HTML5 Desde Cero

## Capítulo 010 - Formularios

Los formularios permiten que el usuario ingrese información en una página web.

Algunos ejemplos son:

- Formularios de contacto.
- Inicio de sesión.
- Registro de usuarios.
- Buscadores.
- Encuestas.
- Formularios de compra.

---

## Estructura básica

Un formulario comienza con:

```html
<form>
    ...
</form>
```

Dentro colocamos los diferentes controles.

Por ejemplo:

```html
<form>
    <label for="nombre">Nombre:</label>

    <input
        type="text"
        id="nombre"
        name="nombre"
    >

    <button type="submit">
        Enviar
    </button>
</form>
```

---

# label

`label` describe qué información debe ingresar el usuario.

```html
<label for="nombre">
    Nombre:
</label>
```

El atributo:

```html
for="nombre"
```

se relaciona con:

```html
id="nombre"
```

del `input`.

Por ejemplo:

```html
<label for="nombre">Nombre:</label>

<input
    type="text"
    id="nombre"
    name="nombre"
>
```

Esta asociación también mejora la accesibilidad.

---

# input

`input` permite ingresar información.

```html
<input type="text">
```

El atributo `type` determina qué tipo de dato esperamos.

---

# type="text"

Para texto:

```html
<input
    type="text"
    name="nombre"
>
```

---

# type="email"

Para una dirección de correo:

```html
<input
    type="email"
    name="email"
>
```

El navegador puede comprobar que el valor tenga formato de correo electrónico.

---

# type="password"

Para contraseñas:

```html
<input
    type="password"
    name="password"
>
```

El navegador oculta visualmente los caracteres ingresados.

Esto no significa que la contraseña esté cifrada; simplemente cambia su presentación en pantalla.

---

# type="number"

Para números:

```html
<input
    type="number"
    name="edad"
>
```

También podemos establecer límites:

```html
<input
    type="number"
    name="edad"
    min="1"
    max="120"
>
```

---

# type="date"

HTML5 incluye controles específicos para fechas:

```html
<input
    type="date"
    name="fecha"
>
```

La interfaz visual puede variar según el navegador y el sistema operativo.

---

# textarea

Para textos de varias líneas utilizamos:

```html
<textarea
    name="mensaje"
    rows="5"
></textarea>
```

Es útil para:

```text
Comentarios
Mensajes
Descripciones
Observaciones
```

---

# required

Podemos indicar que un campo es obligatorio:

```html
<input
    type="text"
    name="nombre"
    required
>
```

Si intentamos enviar el formulario vacío, el navegador puede impedir el envío y solicitar completar el campo.

---

# button

Podemos crear el botón de envío:

```html
<button type="submit">
    Enviar
</button>
```

`submit` indica que el botón intenta enviar el formulario.

---

# name

Observemos:

```html
<input
    type="text"
    id="nombre"
    name="nombre"
>
```

`id` identifica el elemento dentro del documento.

`name` identifica el campo cuando los datos del formulario se envían.

Este atributo será especialmente importante cuando más adelante conectemos HTML con un backend.

---

# action

La etiqueta `form` puede contener:

```html
<form action="/contacto">
```

`action` indica hacia dónde se enviarán los datos.

En nuestro ejemplo utilizamos:

```html
<form action="#">
```

porque todavía no tenemos un servidor encargado de procesarlos.

---

# method

También podemos encontrar:

```html
method="get"
```

o:

```html
method="post"
```

Por ejemplo:

```html
<form
    action="/contacto"
    method="post"
>
```

Por ahora alcanza con reconocer estos atributos.

Su funcionamiento será más importante cuando trabajemos con backend.

---

# GET y POST

De forma introductoria:

```text
GET
↓
Los datos suelen enviarse
como parte de la URL.


POST
↓
Los datos se envían
en el cuerpo de la solicitud.
```

La elección depende de la operación que estemos realizando.

---

# Ejemplo completo

```html
<form action="#" method="post">

    <label for="nombre">
        Nombre:
    </label>

    <input
        type="text"
        id="nombre"
        name="nombre"
        required
    >


    <label for="email">
        Email:
    </label>

    <input
        type="email"
        id="email"
        name="email"
        required
    >


    <label for="mensaje">
        Mensaje:
    </label>

    <textarea
        id="mensaje"
        name="mensaje"
        rows="5"
    ></textarea>


    <button type="submit">
        Enviar
    </button>

</form>
```

---

# Algo importante

HTML puede definir y validar parcialmente un formulario, pero por sí solo no almacena la información en una base de datos.

Para procesar realmente los datos normalmente necesitaremos:

```text
HTML
 ↓
Formulario
 ↓
Solicitud HTTP
 ↓
Backend
 ↓
Base de datos
```

Eso pertenece a etapas posteriores del desarrollo web.

---

# Curiosidad

Los formularios fueron fundamentales en la evolución de la Web.

Las primeras páginas estaban orientadas principalmente a consultar documentos.

Los formularios permitieron que el usuario comenzara a enviar información al servidor.

Eso abrió el camino a aplicaciones como:

```text
Buscadores
Registros
Comentarios
Compras
Sistemas de usuarios
Aplicaciones web
```

---

# Ejercicio

Crear un formulario con:

```text
Nombre
Email
Edad
Fecha de nacimiento
Mensaje
```

Todos deben tener su correspondiente:

```html
<label>
```

Los campos `Nombre` y `Email` deben ser obligatorios.

Finalmente agregar:

```html
<button type="submit">
    Enviar
</button>
```

---

# Desafío

Crear un pequeño formulario de registro con:

```text
Nombre
Email
Contraseña
Edad
Fecha de nacimiento
```

Utilizar los tipos:

```text
text
email
password
number
date
```

Después abrirlo en el navegador y probar qué sucede cuando se intenta enviar información inválida.

---

# Resumen

Contenedor:

```html
<form>
```

Descripción:

```html
<label>
```

Entrada:

```html
<input>
```

Texto largo:

```html
<textarea>
```

Envío:

```html
<button type="submit">
```

Algunos tipos de `input`:

```text
text
email
password
number
date
```

Los formularios son el punto de partida para comenzar a recibir información del usuario y construir páginas web interactivas.
