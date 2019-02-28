#!/bin/bash

makeFile=Makefile.gen

hsFileNames=$(sed 's/\.hs$//g' <<< $(ls *.hs))

installLine=$(paste -sd ' ' <<< $hsFileNames)

tee $makeFile <<EOF
CC=ghc

install: $installLine

EOF

while read woExt
do
    tee $makeFile -a <<EOF
$woExt: $woExt.hs
	\$(CC) -o bin/$woExt $woExt.hs

EOF
done <<< $hsFileNames

tee $makeFile -a <<EOF
clean:
	rm *.o *.hi
EOF
