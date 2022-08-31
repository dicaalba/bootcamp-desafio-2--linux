#!/bin/sh
DIRECTORY = foo
if [ ! -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir foo
fi
cd foo

SUBDIRECTORY = dummy
if [ ! -d "$SUBDIRECTORY" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir dummy
  mkdir empty
fi
cd dummy
touch file1.txt file2.txt
if [ "$#" != "1" ]; then
    echo "Que me gusta bash!!!!" >> file1.txt
else
    echo $1 >> file1.txt
fi
cat file1.txt > file2.txt
mv file2.txt /Users/multiplica/Documents/diana/projects/devops/bootcamp-desafio-2--linux/script/foo/empty
echo "Fin"