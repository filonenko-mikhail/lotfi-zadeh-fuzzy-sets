#!/bin/sh

if [ -f Zadeh-1965.en.idx ]; then
  tex '\def\filename{{Zadeh-1965.en}{idx}{4dx}{ind}} \input  idxmake.4ht' 
  makeindex -o Zadeh-1965.en.ind Zadeh-1965.en.4dx 
fi

htlatex Zadeh-1965.en.tex

cp -f Zadeh-1965.en.tex index.html