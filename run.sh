#!/bin/bash

rm -f *.pdf *.fst
rm -f 1-inputs_condensados/*.fst 1-inputs_condensados/*.pdf
rm -f 1-outputs_lf/*.fst 1-outputs_lf/*.pdf


################### letras ################
#
# Compila e gera a versão gráfica dos transdutores
fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:00.txt > 1-inputs_condensados/00:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:00.fst | dot -Tpdf > 1-inputs_condensados/00:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:00.txt > 1-inputs_condensados/01:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:00.fst | dot -Tpdf > 1-inputs_condensados/01:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:00.txt > 1-inputs_condensados/12:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:00.fst | dot -Tpdf > 1-inputs_condensados/12:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:00.txt > 1-inputs_condensados/17:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:00.fst | dot -Tpdf > 1-inputs_condensados/17:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:00.txt > 1-inputs_condensados/20:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:00.fst | dot -Tpdf > 1-inputs_condensados/20:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:00.txt > 1-inputs_condensados/21:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:00.fst | dot -Tpdf > 1-inputs_condensados/21:00.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:01.txt > 1-inputs_condensados/00:01.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:01.fst | dot -Tpdf > 1-inputs_condensados/00:01.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:10.txt > 1-inputs_condensados/01:10.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:10.fst | dot -Tpdf > 1-inputs_condensados/01:10.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:15.txt > 1-inputs_condensados/12:15.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:15.fst | dot -Tpdf > 1-inputs_condensados/12:15.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:20.txt > 1-inputs_condensados/17:20.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:20.fst | dot -Tpdf > 1-inputs_condensados/17:20.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:21.txt > 1-inputs_condensados/20:21.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:21.fst | dot -Tpdf > 1-inputs_condensados/20:21.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:30.txt > 1-inputs_condensados/21:30.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:30.fst | dot -Tpdf > 1-inputs_condensados/21:30.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:32.txt > 1-inputs_condensados/00:32.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:32.fst | dot -Tpdf > 1-inputs_condensados/00:32.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:40.txt > 1-inputs_condensados/01:40.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/01:40.fst | dot -Tpdf > 1-inputs_condensados/01:40.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:43.txt > 1-inputs_condensados/12:43.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/12:43.fst | dot -Tpdf > 1-inputs_condensados/12:43.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:45.txt > 1-inputs_condensados/17:45.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/17:45.fst | dot -Tpdf > 1-inputs_condensados/17:45.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:50.txt > 1-inputs_condensados/20:50.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/20:50.fst | dot -Tpdf > 1-inputs_condensados/20:50.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:54.txt > 1-inputs_condensados/21:54.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/21:54.fst | dot -Tpdf > 1-inputs_condensados/21:54.pdf


################### Transdutores de conversão ################
#
# Compila e gera a versão gráfica dos transdutores que convertem as horas de um formato para o outro
fstcompile  --isymbols=data.sym --osymbols=data.sym  cond_to_lf.txt > cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf


################### Testa os transdutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
fstcompose 1-inputs_condensados/00:00.fst cond_to_lf.fst > 1-outputs_lf/00:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:00_lf.fst | dot -Tpdf > 1-outputs_lf/00:00_lf.pdf

