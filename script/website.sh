#!/bin/sh
DIRECTORY = webSite
if [ ! -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir webSite
fi
cd webSite
wget https://es.wikipedia.org/wiki/DevOps

if [ "$#" != "1" ]; then
    echo "No hay argumentos"
else
    grep -i -n $1 DevOps
fi

echo "Fin"