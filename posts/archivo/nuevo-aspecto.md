## Nuevo diseño de la web

¡Bienvenidxs al nuevo diseño de mi página web y blog!

Si bien los cambios estéticos no son enormes (seguimos en blanco y negro, virtualmente el mismo contenido, mismas "imágenes" en ASCII, etc), incluye una serie de mejoras bastante importantes.

Recordé mucho sobre HTML y CSS y aprendí otro tanto, algo que nunca está de más, pero también espero no tener que volver a hacer esto en mucho mucho tiempo. No tengo paciencia para diseñar con CSS, y desde que empecé con el rediseño no pienso en otra cosa más que en poder concentrarme en el contenido en lugar de en el aspecto de mi web.

![](/img/css.gif)


### Sin JavaScript

El diseño anterior usaba JavaScript para gestionar la navegación entre secciones sin tener que refrescar toda la página o repetir el código de la cabecera en cada página individual (o tener que usar un static site generator).

Mi solución fue crear toda la página en un solo archivo HTML y realizar la navegación mediante `anchors`. ¡Simple!


### Mejoras en la URL

Con el diseño anterior, cuando se cambiaba entre las distintas secciones del sitio, la URL se conservaba igual, por lo que no se podía, por ejemplo, navegar directamente a la URL del blog. Siempre se aterrizaba en la página principal y se debía cambiar de sección manualmente.

Ahora, la dirección de vada sección incluye en la URL el nombre del anchor de dicha sección. Por ejemplo la dirección del blog es `https://martinvukovic.com/#blog`

El único contenido que no está incluído en el index.html monolítico son los posts del blog, que tienen su propio archivo HTML, haciendo que los posts tengan su propia URL "tradicional", del tipo `https://martinvukovic.com/posts/2026/02-18-por-que-escribo.html`


### Mejores imágenes

Antes tenía que redimensionar individualmente las imágenes que usaba en los posts para que tuvieran un tamaño consistente entre todos los posts. El problema es que el tamaño de 500px de ancho coincidía bastante bien con el ancho del área que contenía el texto, pero dependiendo la resolución o el dispositivo, esto variaba mucho.

![Diseño antiguo de las imágenes](/img/oldweb3.png)


El nuevo diseño ajusta el ancho de las imágenes al ancho del contenedor del texto. Seguramente siga retocando un poco las imágenes para que sean livianas y no tengan un tamaño gigante, pero ya no me tengo que preocupar por ponerles un tamaño exacto o por que se van diferente en distintos navegadores.


### Comentarios por mail

Decidí empezar a ofrecer la posibilidad de dejar comentarios por mail en lugar de por Mastodon. Mi cuenta de Mastodon elimina las publicaciones con más de 3 meses de antigüedad, por lo que los comentarios se van a perder.

Adicionalmente, el trabajo de publicar el post, crear la publicación en mástodon, y agregar la URL de ésta publicación denuevo en el post del blog era muy molesto.

Pero además, creo que la gente reacciona distinto en Internet si lo que está escribiendo va a ser público o si sólo lo va a ver un destinatario en concreto. Creo que el efecto psicológico de tener que enviarme un mail a mí va a ser positivo.

Quienes tengan algo positivo para decir, lo dirán sin miedo a cómo se vea o quién lo lea, y quienes tengan algo negativo que decir, saben que no vale de nada hacer un circo "para que todos lo vean" y que van a estar hablando con una persona y no con un ente abstracto que existe por ahí en Internet.


### Descripción breve en el índice de posts

Agregué los comentarios que agrego a veces en el archivo feed.xml en donde resumo de qué se trata la publicación.

Esto me permite elegir títulos creativos que no necesariamente tienen que además ser descriptivos, dejando esa función a la descripción breve.


### Nuevo script para generar publicaciones

La forma de crear los posts del blog es escribir el contenido en un archivo Markdown y ejecutar un script que convierte ese Markdown en HTML y combinarlo con un template que tengo que incluye las cabeceras y estilos necesarios para que se muestre correctamente.

Este script todavía es muy manual y me deja por hacer varias cosas, como copiar el archivo HTML resultante a la carpeta correspondiente, agregar una entrada al índice de artículos del blog, y finalmente la entrada en el archivo feeds.xml para que se actualice el feed.

De momento no quiero automatizar más ese proceso, porque me fuerza a frenar un momento y pensar en lo que estoy haciendo. En ese rato que me lleva hacer todo eso, a lo mejor me acuerdo o me arrepiento de algo, y puedo solucionarlo a tiempo.

Espero que disfruten el nuevo sitio :)