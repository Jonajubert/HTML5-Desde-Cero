# HTML5 desde cero — 012: Labels y accesibilidad

**Fecha:** 08/10/2026  
**Tipo:** Código  
**Progreso:** 12/40  
**Autor:** Jonatan Jubert — Learning HTML5

En el capítulo anterior conocimos los inputs básicos.

Ahora vamos a trabajar sobre cómo identificar esos campos y acompañarlos con instrucciones claras.

## ¿Qué aprenderemos?

- Para qué sirve `<label>`.
- Cómo relacionar `for` e `id`.
- Por qué el placeholder no reemplaza una etiqueta.
- Cómo asociar un texto de ayuda.
- Cómo comprobar la interacción con mouse y teclado.

## 1. Una etiqueta para identificar el campo

El elemento `<label>` permite indicar qué información esperamos.

```html
<label for="nombre">Nombre:</label>
<input type="text" id="nombre" name="nombre">
```

En este ejemplo:

| Parte | Función |
| --- | --- |
| `Nombre:` | Texto visible que identifica el campo. |
| `for="nombre"` | Indica qué control describe la etiqueta. |
| `id="nombre"` | Identifica el input dentro del documento. |
| `name="nombre"` | Identifica el dato cuando participa en el envío. |

El valor de `for` debe coincidir exactamente con el `id` del control.

Cada `id` debe ser único en el documento.

## 2. ¿Qué mejora esta relación?

Al hacer clic en la etiqueta de un campo de texto, el navegador lleva el foco al input asociado.

Además, las tecnologías de asistencia pueden utilizar la etiqueta para identificar el control.

No alcanza con escribir un texto cerca del input: debemos establecer la relación en el HTML.

```html
<label for="email">Email:</label>
<input type="email" id="email" name="email">
```

## 3. El placeholder no reemplaza al label

Un placeholder puede mostrar una pista dentro de un campo vacío:

```html
<label for="ciudad">Ciudad:</label>
<input
  type="text"
  id="ciudad"
  name="ciudad"
  placeholder="Por ejemplo: Eldorado">
```

Cuando escribimos, el placeholder desaparece.

La etiqueta permanece visible y sigue identificando el campo.

Por eso, las instrucciones necesarias no deben depender solamente del placeholder.

## 4. Asociar un texto de ayuda

Podemos agregar una explicación visible y relacionarla con el campo mediante `aria-describedby`.

```html
<label for="email">Email:</label>

<input
  type="email"
  id="email"
  name="email"
  aria-describedby="ayuda-email">

<p id="ayuda-email">
  Ejemplo: persona@example.com
</p>
```

Observá las dos relaciones:

| Relación | Propósito |
| --- | --- |
| `for="email"` con `id="email"` | Identifica el campo mediante su etiqueta. |
| `aria-describedby="ayuda-email"` con `id="ayuda-email"` | Asocia una descripción adicional. |

El texto de ayuda complementa la etiqueta.

`aria-describedby` no valida el dato ni reemplaza al label.

## 5. Etiquetar una casilla de verificación

Las casillas también necesitan una etiqueta.

```html
<input
  type="checkbox"
  id="novedades"
  name="novedades"
  value="si">

<label for="novedades">
  Quiero recibir novedades.
</label>
```

Al hacer clic en el texto, podemos cambiar el estado de la casilla.

Esto amplía el área disponible para interactuar con ella.

## 6. Agrupar campos relacionados

Podemos utilizar `<fieldset>` para agrupar controles y `<legend>` para dar un nombre al grupo.

```html
<fieldset>
  <legend>Datos de contacto</legend>

  <p>
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre">
  </p>

  <p>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email">
  </p>
</fieldset>
```

El legend identifica el grupo. Cada campo conserva su propio label.

## 7. Probalo vos

Abrí `index.html` en el navegador.

1. Hacé clic en “Nombre” y comprobá que el campo recibe el foco.
2. Usá Tab para avanzar por los controles.
3. Usá Shift + Tab para volver al control anterior.
4. Escribí una ciudad y observá que su etiqueta sigue visible.
5. Hacé clic en el texto de la casilla para marcarla.
6. Con la casilla enfocada, presioná la barra espaciadora.

El ejemplo conserva los controles y el indicador de foco del navegador.

Estas pruebas son una primera revisión: no reemplazan una evaluación completa de accesibilidad.

## 8. Ejercicio

Agregá un campo de teléfono:

- Etiqueta visible: `Teléfono`.
- Input de tipo `tel`.
- Un `id` único.
- Un atributo `name`.
- Texto de ayuda visible.
- Relación entre el campo y la ayuda mediante `aria-describedby`.

Una posible solución:

```html
<p>
  <label for="telefono">Teléfono:</label>
  <input
    type="tel"
    id="telefono"
    name="telefono"
    aria-describedby="ayuda-telefono">
</p>

<p id="ayuda-telefono">
  Incluí el código de área.
</p>
```

Después comprobá el campo con mouse y teclado.

## Idea para recordar

Una etiqueta identifica el campo.
Un texto de ayuda aporta instrucciones.
Ambos deben estar correctamente relacionados con el control.

## Cómo utilizar el ejemplo

Guardá el código en `index.html` y abrilo en tu navegador.

Es una demostración de etiquetas y controles: no incluye botón de envío ni backend.

Usá datos de ejemplo durante la práctica.

## Documentación de referencia

- [W3C WAI: etiquetas para controles](https://www.w3.org/WAI/tutorials/forms/labels/).
- [W3C WAI: instrucciones en formularios](https://www.w3.org/WAI/tutorials/forms/instructions/).

Repositorio de la serie: https://github.com/Jonajubert/HTML5-Desde-Cero

**Jonatan Jubert — Learning HTML5**
