#!/bin/bash

rm -f trad.fst trad.pdf
rm -f onion.fst onion.pdf cabbage.fst cabbage.pdf potato.pdf potato.fst
rm -f couve.fst couve.pdf cebola.fst cebola.pdf batata.fst batata.pdf
rm -f *.pdf *.fst
rm -f onze.fst onze.pdf
rm -f 11.pdf 11.fst

################### letras ################
#
# Compila e gera a versão gráfica do transdutor que tem "potato"
fstcompile --isymbols=data.sym --osymbols=data.sym  onze.txt  > onze.fst
fstdraw  --isymbols=data.sym --osymbols=data.sym  onze.fst | dot -Tpdf > onze.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym  doze.txt  > doze.fst
fstdraw  --isymbols=data.sym --osymbols=data.sym  doze.fst | dot -Tpdf > doze.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym  vinteuma.txt  > vinteuma.fst
fstdraw  --isymbols=data.sym --osymbols=data.sym  vinteuma.fst | dot -Tpdf > vinteuma.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym  vinteduas.txt  > vinteduas.fst
fstdraw  --isymbols=data.sym --osymbols=data.sym  vinteduas.fst | dot -Tpdf > vinteduas.pdf



################### Tradutores de tradução ################
#
# Compila e gera a versão gráfica do transdutor que traduz letra a letra
fstcompile  --isymbols=data.sym --osymbols=data.sym  trad.txt > trad.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  trad.fst | dot -Tpdf > trad.pdf


################### Testa os tradutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
fstcompose onze.fst trad.fst > 11.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  11.fst | dot -Tpdf > 11.pdf

fstcompose doze.fst trad.fst > 12.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  12.fst | dot -Tpdf > 12.pdf

fstcompose vinteuma.fst trad.fst > 21.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  21.fst | dot -Tpdf > 21.pdf

fstcompose vinteduas.fst trad.fst > 22.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  22.fst | dot -Tpdf > 22.pdf

