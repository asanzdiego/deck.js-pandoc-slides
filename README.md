# Instructions

## English

### Samples

- [HTML](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/readme.html)
- [HTML Slides](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/readme.slides.html)
- [PDF Beamer Slides](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/readme.beamer.pdf)

### Dependencies

- [Pandoc](http://johnmacfarlane.net/pandoc/) (needs to be installed)
- [Deck.js](http://imakewebthings.com/deck.js/) (included)

### Creation

- First **copy the doc folder and rename it as you like**. This is not necessary but
  helps you organize your documents.

- **Create the md files** that you want to generate. The md files are
  [Markdown](http://en.wikipedia.org/wiki/Markdown) files which are nothing more
  than plain text files with extension md, and a lightweight markup (we should
  know it but it is very simple).

- Once created the md files, we can **generate html, html-slides y pdf-beamer with a script**.

### Build

- To **convert all md files of all the folders**
  go to the root folder and execute:

~~~
   ./build.sh
~~~

- To **convert all md files of one folder**
  go to the root folder and execute:

~~~
   ./build.sh [folder_name]
~~~

### Slide keyboard shortcuts

~~~
                    [F] - Find text
                    [M] - Miniature slides
                    [G] - Go to slide number
             [ctrl]+[+] - Zoom in
             [ctrl]+[-] - Zoom out
   [ctrl]+[wheel mouse] - Zoom in/out
                [space] - Next page
                [intro] - Next page
              [page up] - Next page
             [up arrow] - Next page
          [right arrow] - Next page
            [backspace] - Previous page
            [page down] - Previous page
           [down arrow] - Previous page
           [left arrow] - Previous page
~~~

## Español

### Ejemplos

- [HTML](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/leeme.html)
- [HTML Slides](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/leeme.slides.html)
- [PDF Beamer Slides](http://asanzdiego.github.io/deck.js-pandoc-slides/doc/export/leeme.beamer.pdf)

### Dependencias

- [Pandoc](http://johnmacfarlane.net/pandoc/) (necesita ser instalado)
- [Deck.js](http://imakewebthings.com/deck.js/) (incluido)

### Creación

- Primero **copia la carpeta doc y renombrala a tu gusto**. Esto no es necesario pero
  te ayuda a organizar tus documentos.

- **Crea los ficheros md** que quieras generar. Los ficheros md son ficheros
  [Markdown](http://es.wikipedia.org/wiki/Markdown), que no son nada más que
  ficheros de texto plano, con extensión md, y con un marcado ligero (que hay
  que conocer pero que es muy sencillo).

- Una vez creado los md, puedes **generar html, html-slides y pdf-beamer con un script**.

### Generación

- Para **convertir todos los ficheros md de todas las carpetas**
  hay que posicionarse en la carpeta raiz, y ejecutar:

~~~
   ./build.sh
~~~

- Para **convertir todos los ficheros md de una carpeta**
  hay que posicionarse en la carpeta raiz, y ejecutar:

~~~
   ./build.sh [nombre_de_carpeta]
~~~

### Atajos de teclado de las transparencias

~~~
                        [F] - Buscar texto
                        [M] - Transparencias en miniatura
                        [G] - Ir a la transparencia número
                 [ctrl]+[+] - Zoom in
                 [ctrl]+[-] - Zoom out
   [ctrl]+[rueda del ratón] - Zoom in/out
        [barra espaciadora] - Página siguiente
                    [intro] - Página siguiente
                  [page up] - Página siguiente
            [flecha arriba] - Página siguiente
           [flecha derecha] - Página siguiente
                [retroceso] - Página anterior
             [flecha abajo] - Página anterior
             [flecha abajo] - Página anterio
         [flecha izquierda] - Página anterior
~~~

