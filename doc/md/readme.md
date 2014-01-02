% Deck.js & Pandoc
% Adolfo Sanz De Diego
% May 2013

# About

## Adolfo Sanz De Diego

![](../img/avatar-asanzdiego.png)

## My Resume

- **Old JEE web developer**

- Today:

    - **Computer teacher**:

            - Hardware, Operating Systems, Networking, Programming

    - **Freelance Trainer**:

            - Java, Android
            - JavaScript, jQuery
            - JSF, Spring, Hibernate
            - Groovy & Grails

    - **I like to develop**

## Hackalover

![](../img/hackathon-lovers-logo.png)

- **For hackathons lovers**

- **Meetup**: [http://www.meetup.com/Hackathon-Lovers/](http://www.meetup.com/Hackathon-Lovers/)

- **Twitter**: [http://twitter.com/HackathonLovers](http://twitter.com/HackathonLovers)

## Tweets Sentiment

![](../img/tweets-sentiment-logo.png)

- Is a **tweets analyzer** which extracts semantic information to know
if the general tweets feeling about a topic is positive or negative.

- **Web**: [http://tweetssentiment.com/](http://tweetssentiment.com/)

- **Twitter**: [http://twitter.com/TweetsSentiment](http://twitter.com/TweetsSentiment)

## Where to find me?

- My nick: **asanzdiego**

- AboutMe: **[http://about.me/asanzdiego](http://about.me/asanzdiego)**

    - GitHub:   [http://github.com/asanzdiego/](http://github.com/asanzdiego/)
    - Twitter:  [http://twitter.com/asanzdiego](http://twitter.com/asanzdiego)
    - Blog:     [http://asanzdiego.blogspot.com.es](http://asanzdiego.blogspot.com.es)
    - LinkedIn: [http://www.linkedin.com/in/asanzdiego](http://www.linkedin.com/in/asanzdiego)

## Licence

- **This work is licensed under a:**
    - [Creative Commons Attribution 3.0](http://creativecommons.org/licenses/by-sa/3.0//)

- **The program source code are licensed under a:**
    - [GPL 3.0](http://www.gnu.org/licenses/gpl.html)

# Instalation and how to use

## Dependencies

- [Pandoc](http://johnmacfarlane.net/pandoc/) (needs to be installed)
- [Deck.js](http://imakewebthings.com/deck.js/) (included)

## Creation

- First **copy the doc folder and rename it as you like**. This is not necessary but
  helps you organize your documents.

- **Create the md files** that you want to generate. The md files are
  [Markdown](http://en.wikipedia.org/wiki/Markdown) files which are nothing more
  than plain text files with extension md, and a lightweight markup (we should
  know it but it is very simple).

- Once created the md files, we can **generate html, html-slides y pdf-beamer with a script**.

## Build

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

## Slide keyboard shortcuts

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
