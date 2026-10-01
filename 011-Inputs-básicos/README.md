# HTML5 desde cero — 011: Inputs básicos

**Fecha:** 01/10/2026  
**Tipo:** Concepto  
**Progreso:** 11/40  
**Autor:** Jonatan Jubert — Learning HTML5

En el capítulo anterior vimos cómo se organiza un formulario. Ahora vamos a conocer sus campos de entrada: los elementos `<input>`.

## ¿Qué aprenderemos?

- Para qué sirve `<input>`.
- Cómo cambia un campo con el atributo `type`.
- Cómo relacionar una etiqueta con su campo.
- Para qué sirven `id`, `name` y `required`.

## 1. Una etiqueta, distintos tipos de entrada

El elemento `<input>` permite ingresar datos. Su atributo `type` define el tipo de control. Si omitimos ese atributo, el tipo predeterminado es `text`.

| Tipo | Uso | Ejemplo de dato |
| --- | --- | --- |
| `text` | Texto de una línea. | Nombre |
| `email` | Dirección de correo. | persona@example.com |
| `password` | Texto cuyos caracteres se ocultan visualmente. | Contraseña de práctica |
| `number` | Cantidad numérica. | Edad |
| `date` | Fecha. | Fecha de nacimiento |
| `tel` | Número de teléfono. | Teléfono de contacto |

`<input>` es un elemento vacío: no lleva una etiqueta de cierre `</input>`.

## 2. Ejemplo básico

```html
<form>
  <label for="nombre">Nombre:</label>
  <input type="text" id="nombre"
         name="nombre" required>

  <label for="email">Email:</label>
  <input type="email" id="email"
         name="email" required>

  <label for="edad">Edad:</label>
  <input type="number" id="edad"
         name="edad" min="0">
</form>
```

Este fragmento muestra tres campos. El archivo `index.html` incluye también contraseña, fecha y teléfono. Abrilo en tu navegador para explorar los seis controles. El ejemplo se centra en los inputs: no incluye botón de envío ni backend.

## 3. Atributos que conviene distinguir

| Atributo o relación | Función |
| --- | --- |
| `type` | Define el tipo de control. |
| `id` | Identifica al elemento; debe ser único en el documento. |
| `for` en `<label>` | Debe coincidir con el `id` del campo al que describe. |
| `name` | Identifica el dato cuando participa en el envío del formulario. |
| `required` | Hace obligatorio completar el campo para superar la validación nativa. |
| `min` | Establece el mínimo permitido en tipos compatibles, como `number`. |

En el ejemplo, `for="email"` e `id="email"` relacionan la etiqueta con el input. Al hacer clic en la etiqueta, el navegador lleva el foco al campo. Esta relación también permite que las tecnologías de asistencia identifiquen su nombre.

`id` y `name` pueden tener el mismo valor, pero cumplen funciones distintas.

## 4. Detalles importantes

**Email:** `type="email"` permite comprobar el formato del valor. No confirma que esa dirección exista. Para exigir un valor, agregá `required`.

**Contraseña:** `type="password"` oculta los caracteres en pantalla. Eso no cifra el dato ni implementa un sistema de autenticación.

**Teléfono:** usá `tel` para teléfonos. Un número telefónico puede incluir `+`, espacios o ceros iniciales y no representa una cantidad para calcular. Este tipo no impone por sí solo un formato telefónico universal.

**Etiquetas:** un `placeholder` puede dar una pista, pero no reemplaza al `<label>`. La etiqueta debe seguir identificando el campo cuando el usuario ya escribió.

En una aplicación real, el servidor también debe validar los datos recibidos.

## 5. Probalo vos

Partí del fragmento de tres campos y agregá una fecha de nacimiento:

1. Escribí una etiqueta visible.
2. Creá un input de tipo `date`.
3. Asociá ambos mediante `for` e `id`.
4. Agregá `name="nacimiento"`.

Una posible solución:

```html
<label for="nacimiento">Fecha de nacimiento:</label>
<input type="date" id="nacimiento" name="nacimiento">
```

Después, hacé clic en el texto de la etiqueta y recorré los campos con la tecla Tab.

## Idea para recordar

Elegí el tipo de input según el dato que necesitás y acompañalo con una etiqueta clara.

## Documentación de referencia

- [WHATWG: elemento input y tipos](https://html.spec.whatwg.org/multipage/input.html).
- [WHATWG: formularios](https://html.spec.whatwg.org/multipage/forms.html).
- [MDN: input de tipo email](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/input/email).
- [MDN: input de tipo password](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/input/password).
- [MDN: elemento label](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/label).

Repositorio de la serie: https://github.com/Jonajubert/HTML5-Desde-Cero

**Jonatan Jubert — Learning HTML5**
