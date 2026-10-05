HTML5 Desde Cero | 012 — Labels y accesibilidad

Hasta ahora aprendimos a crear formularios y utilizar distintos tipos de inputs.
¿Pero cómo identificamos claramente qué información debe ingresar el usuario en cada campo?

En HTML podemos utilizar la etiqueta <label>:

<label for="nombre">Nombre:</label>
<input type="text" id="nombre" name="nombre">

El atributo for del label debe coincidir con el id del input.

Esta relación permite que, al hacer clic en “Nombre”, el navegador lleve el foco al campo. También ayuda a los lectores de pantalla a identificarlo.

Podemos agregar instrucciones mediante un texto de ayuda:

<label for="email">Email:</label>
<input type="email" id="email" name="email"
       aria-describedby="ayuda-email">
<p id="ayuda-email">Ejemplo: persona@example.com</p>

Un detalle importante: el placeholder no reemplaza al label. La etiqueta debe seguir visible cuando el usuario comienza a escribir.

Las etiquetas claras y correctamente asociadas hacen que los formularios sean más fáciles de comprender y utilizar.

Código completo y ejercicios en GitHub:
https://github.com/Jonajubert/HTML5-Desde-Cero

#HTML5 #HTML #Programacion #DesarrolloWeb #Accesibilidad #Coding #GitHub
