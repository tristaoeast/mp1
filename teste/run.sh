#!/bin/bash

rm -f *.pdf *.fst
rm -f 1-inputs_condensados/*.fst 1-inputs_condensados/*.pdf
rm -f 1-outputs_lf/*.fst 1-outputs_lf/*.pdf
rm -f 2-inputs_lf/*.fst 2-inputs_lf/*.pdf
rm -f 2-outputs_cond/*.fst 2-outputs_cond/*.pdf


################### letras ################
#
# Compila e gera a versão gráfica dos inputs
#1
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


# 2
fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma.txt > 2-inputs_lf/uma.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma.fst | dot -Tpdf > 2-inputs_lf/uma.pdf




################### Transdutores de conversão ################
#
# Compila e gera a versão gráfica dos transdutores que convertem as horas de um formato para o outro
fstcompile  --isymbols=data.sym --osymbols=data.sym  0xhxx_cond_to_lf.txt > 0xhxx_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  0xhxx_cond_to_lf.fst | dot -Tpdf > 0xhxx_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  1xhxx_cond_to_lf.txt > 1xhxx_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1xhxx_cond_to_lf.fst | dot -Tpdf > 1xhxx_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  2xhxx_cond_to_lf.txt > 2xhxx_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2xhxx_cond_to_lf.fst | dot -Tpdf > 2xhxx_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  e_cond_to_lf.txt > e_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  e_cond_to_lf.fst | dot -Tpdf > e_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh0x_cond_to_lf.txt > xxh0x_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh0x_cond_to_lf.fst | dot -Tpdf > xxh0x_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh1x_cond_to_lf.txt > xxh1x_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh1x_cond_to_lf.fst | dot -Tpdf > xxh1x_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh30_cond_to_lf.txt > xxh30_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh30_cond_to_lf.fst | dot -Tpdf > xxh30_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh45_cond_to_lf.txt > xxh45_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh45_cond_to_lf.fst | dot -Tpdf > xxh45_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxhx0-9_cond_to_lf.txt > xxhx0-9_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxhx0-9_cond_to_lf.fst | dot -Tpdf > xxhx0-9_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh00_cond_to_lf.txt > xxh00_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh00_cond_to_lf.fst | dot -Tpdf > xxh00_cond_to_lf.pdf

fstcompile  --isymbols=data.sym --osymbols=data.sym  xxh2345x_cond_to_lf.txt > xxh2345x_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh2345x_cond_to_lf.fst | dot -Tpdf > xxh2345x_cond_to_lf.pdf


# Horas
fstunion 0xhxx_cond_to_lf.fst 1xhxx_cond_to_lf.fst > hunion1_cond_to_lf.fst
fstunion hunion1_cond_to_lf.fst 2xhxx_cond_to_lf.fst > horas_cond_to_lf.fst

fstdraw --isymbols=data.sym --osymbols=data.sym horas_cond_to_lf.fst | dot -Tpdf > horas_cond_to_lf.pdf


# Minutos
fstconcat xxh2345x_cond_to_lf.fst xxhx0-9_cond_to_lf.fst > xxh23450-9_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  xxh23450-9_cond_to_lf.fst | dot -Tpdf > xxh23450-9_cond_to_lf.pdf

fstunion xxh23450-9_cond_to_lf.fst xxh0x_cond_to_lf.fst > munion1_cond_to_lf.fst
fstunion munion1_cond_to_lf.fst xxh1x_cond_to_lf.fst > munion2_cond_to_lf.fst
fstunion munion2_cond_to_lf.fst xxh30_cond_to_lf.fst > munion3_cond_to_lf.fst
fstunion munion3_cond_to_lf.fst xxh45_cond_to_lf.fst > munion4_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  munion4_cond_to_lf.fst | dot -Tpdf > munion4_cond_to_lf.pdf


# e
fstconcat e_cond_to_lf.fst munion4_cond_to_lf.fst > eunion1_cond_to_lf.fst
fstunion eunion1_cond_to_lf.fst xxh00_cond_to_lf.fst > minutos_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  minutos_cond_to_lf.fst | dot -Tpdf > minutos_cond_to_lf.pdf

# Final
fstconcat horas_cond_to_lf.fst minutos_cond_to_lf.fst > cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf

fstinvert cond_to_lf.fst > inverted_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym inverted_cond_to_lf.fst | dot -Tpdf > inverted_cond_to_lf.pdf

################### Testa os transdutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
fstcompose 1-inputs_condensados/00:00.fst cond_to_lf.fst > 1-outputs_lf/00:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:00_lf.fst | dot -Tpdf > 1-outputs_lf/00:00_lf.pdf

fstcompose 1-inputs_condensados/01:00.fst cond_to_lf.fst > 1-outputs_lf/01:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/01:00_lf.fst | dot -Tpdf > 1-outputs_lf/01:00_lf.pdf

fstcompose 2-inputs_lf/uma.fst inverted_cond_to_lf.fst > 2-outputs_cond/uma_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/uma_cond.fst | dot -Tpdf > 2-outputs_cond/uma_cond.pdf