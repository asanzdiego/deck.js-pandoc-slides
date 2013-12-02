#! /bin/bash

ORIGIN=`pwd`
echo $ORIGIN

function initFolder() {

  FOLDER=$1"/export"

  if [ -e $FOLDER ]; then

    if [ -d $FOLDER ]; then

      if [ ! -w $FOLDER ]; then

          echo "ERROR: no write permision in $FOLDER"
          exit -1
      fi
      echo -e "Cleaning folder...       ../export"
      rm -R $FOLDER
      mkdir $FOLDER
    else

      echo "ERROR: $FOLDER exists and is not a folder"
      exit -1
    fi

  else

    echo -e "Ceating folder...        ../export"
    mkdir $FOLDER
  fi

  echo -e "Coping css folder to...  ../export/css/"
  cp -r ./app/css $FOLDER

  echo -e "Coping js folder to...   ../export/js/"
  cp -r ./app/js $FOLDER
}

function buildSlides() {

  echo -e "Exporting...             ../export/$1.slides.html"

  pandoc -w dzslides --template $ORIGIN/app/templates/slides-template.html --number-sections --email-obfuscation=none -o ../export/$1.slides.html $1.md

  sed -i s/h1\>/h2\>/g ../export/$1.slides.html

  sed -i s/\>\<h2/\>\<h1/g ../export/$1.slides.html

  sed -i s/\\/h2\>\</\\/h1\>\</g ../export/$1.slides.html
}

function buildHtml() {

  echo -e "Exporting...             ../export/$1.html"

  pandoc -w html5 --template $ORIGIN/app/templates/html5-template.html --number-sections --email-obfuscation=none --toc --highlight-style=tango -o ../export/$1.html $1.md
}

function buildDocx() {

  echo -e "Exporting...             ../export/$1.docx"

  pandoc -w docx --number-sections --table-of-contents --chapters -o ../export/$1.docx $1.md
}

function buildPdf() {

  echo -e "Exporting...             ../export/$1.pdf"

  sed '/.gif/d' $1.md | pandoc --number-sections --table-of-contents --chapters -o ../export/$1.pdf
}

function buildBeamer() {

  echo -e "Exporting...             ../export/$1.beamer.pdf"

  sed '/.gif/d' $1.md | pandoc -w beamer --number-sections --table-of-contents --chapters -V fontsize=9pt -V theme=Warsaw -o ../export/$1.beamer.pdf
}

function exportMdFile() {

  buildSlides $1
  buildHtml $1
  #buildDocx $1
  #buildPdf $1
  buildBeamer $1
}

function processFolder() {

  echo -e "Procesing folder... \t "$1

  initFolder $1

  cd $1"/md"

  for FILE in *.md; do

    FILE_WITHOUT_EXTENSION=${FILE%%.*}
    if [ -e $FILE_WITHOUT_EXTENSION.md ]; then
      exportMdFile $FILE_WITHOUT_EXTENSION
    fi
  done

  cd - > /dev/null

  echo -e "----------------------------------"
}

function processFolders() {

  for PROJECT in */; do

    if [ -d $PROJECT -a "$PROJECT" != "app/" ]; then
      processFolder $PROJECT  
    fi
  done
}

if [ "x$1" != "x" ]; then
  processFolder $1
else
  processFolders
fi
