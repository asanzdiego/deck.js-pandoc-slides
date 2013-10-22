% Deck.js & Pandoc
% Adolfo Sanz De Diego
% Mayo 2013

# Acerca de

## Author

- **Adolfo Sanz De Diego**
    - Correo: [asanzdiego@gmail.com](mailto:asanzdiego@gmail.com)
    - Twitter: [@asanzdiego](http://twitter.com/asanzdiego)
    - Linkedin: [http://www.linkedin.com/in/asanzdiego](http://www.linkedin.com/in/asanzdiego)
    - Blog: [http://asanzdiego.blogspot.com.es](http://asanzdiego.blogspot.com.es)

## Licencia

- **Este obra está bajo una licencia:**
    - [Creative Commons Reconocimiento-CompartirIgual 3.0](http://creativecommons.org/licenses/by-sa/3.0/es/)

- **El código fuente de los programas están bajo una licencia:**
    - [GPL 3.0](http://www.viti.es/gnu/licenses/gpl.html)

# Instalación y manejo

## Dependencias

- [Pandoc 1.11.1](http://johnmacfarlane.net/pandoc/) (necesita ser instalado)
- [Deck.js](http://imakewebthings.com/deck.js/) (incluido)

## Creación

- Primero copia la carpeta doc y renombrala a tu gusto. Esto no es necesario pero
  te ayuda a organizar tus documentos.

- Crea los ficheros md que quieras generar. Los ficheros md son ficheros
  [Markdown](http://es.wikipedia.org/wiki/Markdown), que no son nada más que
  ficheros de texto plano, con extensión md, y con un marcado ligero (que hay
  que conocer pero que es muy sencillo).

- Una vez creado los md, puedes general docx, html, pdf, beamer y slides con un script.

## Generación

- Para generar el docx, el html, el pdf, el beamer y las slides desde los md,
  hay que posicionarse en la carpeta raiz, y ejecutar:

~~~
   ./build.sh - Para convertir todos los ficheros md de todas las carpetas
~~~

~~~
   ./build.sh [nombre_de_carpeta] - Para convertir todos los ficheros md de una carpeta
~~~

## Atajos de teclado de las transparencias

~~~
                        [F] - Buscar texto
                        [M] - Transparencias en miniatura
                        [G] - Ir a la transparencia número
                        [P] - Mostrar un puntero laser
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

