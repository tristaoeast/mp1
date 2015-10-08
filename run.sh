#!/bin/bash

rm -f *.pdf *.fst


################### letras ################
#
# Compila e gera a versão gráfica dos transdutores
fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:00.txt > 1-inputs_condensados/00:00.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/00:00.fst | dot -Tpdf > 1-inputs_condensados/00:00.pdf


################### Tradutores de tradução ################
#
# Compila e gera a versão gráfica dos transdutores que convertem as horas de um formato para o outro
fstcompile  --isymbols=data.sym --osymbols=data.sym  cond_to_lf.txt > cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf


################### Testa os tradutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
fstcompose 1-inputs_condensados/00:00.fst cond_to_lf.fst > 1-outputs_lf/00:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:00_lf.fst | dot -Tpdf > 1-outputs_lf/00:00_lf.pdf

