#! /bin/bash

clear
ORIGIN=`pwd`
echo -e $ORIGIN

function downloadLib() {

  LIB_FOLDER="../lib"

  if [ -e $LIB_FOLDER ]; then
    if [ ! -d $LIB_FOLDER ]; then
      echo "ERROR: $LIB_FOLDER exists and is not a folder"
      exit -1
    fi
  else
    mkdir $LIB_FOLDER
  fi

  GIT_USER=$1
  GIT_PROJECT=$2
  DOWNLOAD_FOLDER="$LIB_FOLDER/$GIT_PROJECT-master"
  ZIP_FILE="$LIB_FOLDER/$GIT_PROJECT.zip"

  if [ -e $DOWNLOAD_FOLDER ]; then

    if [ ! -d $DOWNLOAD_FOLDER ]; then
      echo "ERROR: $DOWNLOAD_FOLDER exists and is not a folder"
      exit -1
    fi

  else

    echo -e "Downloading...                 from https://github.com/$GIT_USER/$GIT_PROJECT"
    wget -q -O $LIB_FOLDER/$GIT_PROJECT.zip https://github.com/$GIT_USER/$GIT_PROJECT/archive/master.zip

    echo -e "Extracting...                  $ZIP_FILE"
    unzip -q -d $LIB_FOLDER $ZIP_FILE
  fi
}

function initExportFolder() {

  FOLDER=$1"/export"

  if [ -e $FOLDER ]; then

    if [ -d $FOLDER ]; then

      if [ ! -w $FOLDER ]; then
          echo -e "ERROR: no write permision in $FOLDER"
          exit -1
      fi

      echo -e "Cleaning folder...             ../export"
      rm -R $FOLDER
      mkdir $FOLDER

    else
      echo -e "ERROR: $FOLDER exists and is not a folder"
      exit -1
    fi

  else

    echo -e "Ceating folder...            ../export"
    mkdir $FOLDER
  fi

}

function buildDeck() {

  downloadLib imakewebthings deck.js
  downloadLib markahon deck.search.js
  downloadLib mikeharris100 deck.js-transition-cube

  echo -e "Exporting...                   ../export/$1.deck.slides.html"

  pandoc -w dzslides --template $ORIGIN/templates/deck-slides-template.html --number-sections --email-obfuscation=none -o ../export/$1.deck.slides.html $1.md

  sed -i s/h1\>/h2\>/g ../export/$1.deck.slides.html
  sed -i s/\>\<h2/\>\<h1/g ../export/$1.deck.slides.html
  sed -i s/\\/h2\>\</\\/h1\>\</g ../export/$1.deck.slides.html
}

function buildHtml() {

  echo -e "Exporting...                   ../export/$1.html"

  pandoc -w html5 --template $ORIGIN/templates/html5-template.html --number-sections --email-obfuscation=none --toc --highlight-style=tango -o ../export/$1.html $1.md
}

function buildBeamer() {

  echo -e "Exporting...                   ../export/$1.beamer.pdf"

  sed '/.gif/d' $1.md | pandoc -w beamer --number-sections --table-of-contents --chapters -V fontsize=9pt -V theme=Warsaw -o ../export/$1.beamer.pdf
}

function exportMdFile() {

  buildDeck $1
  buildHtml $1
  buildBeamer $1
}

function processFolder() {

  echo -e "Procesing folder...            ../"$1

  initExportFolder $1

  cd $1"/md"

  for FILE in *.md; do

    FILE_WITHOUT_EXTENSION=${FILE%%.*}
    if [ -e $FILE_WITHOUT_EXTENSION.md ]; then
      exportMdFile $FILE_WITHOUT_EXTENSION
    fi
  done

  cd - > /dev/null

  echo -e "-------------------------------"
}

function processFolders() {

  for PROJECT in */; do

    if [ -d $PROJECT -a "$PROJECT" != "templates/" -a "$PROJECT" != "lib/" ]; then
      processFolder $PROJECT
    fi
  done
}

if [ "x$1" != "x" ]; then
  processFolder $1
else
  processFolders
fi
