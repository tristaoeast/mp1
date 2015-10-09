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


#2
fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero.txt > 2-inputs_lf/zero.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero.fst | dot -Tpdf > 2-inputs_lf/zero.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma.txt > 2-inputs_lf/uma.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma.fst | dot -Tpdf > 2-inputs_lf/uma.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze.txt > 2-inputs_lf/doze.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze.fst | dot -Tpdf > 2-inputs_lf/doze.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia.txt > 2-inputs_lf/meio_dia.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia.fst | dot -Tpdf > 2-inputs_lf/meio_dia.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete.txt > 2-inputs_lf/dezassete.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete.fst | dot -Tpdf > 2-inputs_lf/dezassete.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte.txt > 2-inputs_lf/vinte.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte.fst | dot -Tpdf > 2-inputs_lf/vinte.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma.txt > 2-inputs_lf/vinte_uma.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma.fst | dot -Tpdf > 2-inputs_lf/vinte_uma.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero_e_um.txt > 2-inputs_lf/zero_e_um.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero_e_um.fst | dot -Tpdf > 2-inputs_lf/zero_e_um.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma_e_dez.txt > 2-inputs_lf/uma_e_dez.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma_e_dez.fst | dot -Tpdf > 2-inputs_lf/uma_e_dez.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_quinze.txt > 2-inputs_lf/doze_e_quinze.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_quinze.fst | dot -Tpdf > 2-inputs_lf/doze_e_quinze.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_um_quarto.txt > 2-inputs_lf/doze_e_um_quarto.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_um_quarto.fst | dot -Tpdf > 2-inputs_lf/doze_e_um_quarto.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_quinze.txt > 2-inputs_lf/meio_dia_e_quinze.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_quinze.fst | dot -Tpdf > 2-inputs_lf/meio_dia_e_quinze.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_um_quarto.txt > 2-inputs_lf/meio_dia_e_um_quarto.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_um_quarto.fst | dot -Tpdf > 2-inputs_lf/meio_dia_e_um_quarto.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_vinte.txt > 2-inputs_lf/dezassete_e_vinte.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_vinte.fst | dot -Tpdf > 2-inputs_lf/dezassete_e_vinte.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_e_vinte_um.txt > 2-inputs_lf/vinte_e_vinte_um.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_e_vinte_um.fst | dot -Tpdf > 2-inputs_lf/vinte_e_vinte_um.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_trinta.txt > 2-inputs_lf/vinte_uma_e_trinta.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_trinta.fst | dot -Tpdf > 2-inputs_lf/vinte_uma_e_trinta.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_meia.txt > 2-inputs_lf/vinte_uma_e_meia.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_meia.fst | dot -Tpdf > 2-inputs_lf/vinte_uma_e_meia.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero_e_trinta_dois.txt > 2-inputs_lf/zero_e_trinta_dois.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/zero_e_trinta_dois.fst | dot -Tpdf > 2-inputs_lf/zero_e_trinta_dois.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma_e_quarenta.txt > 2-inputs_lf/uma_e_quarenta.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/uma_e_quarenta.fst | dot -Tpdf > 2-inputs_lf/uma_e_quarenta.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_quarenta_tres.txt > 2-inputs_lf/doze_e_quarenta_tres.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/doze_e_quarenta_tres.fst | dot -Tpdf > 2-inputs_lf/doze_e_quarenta_tres.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_quarenta_tres.txt > 2-inputs_lf/meio_dia_e_quarenta_tres.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/meio_dia_e_quarenta_tres.fst | dot -Tpdf > 2-inputs_lf/meio_dia_e_quarenta_tres.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_quarenta_cinco.txt > 2-inputs_lf/dezassete_e_quarenta_cinco.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_quarenta_cinco.fst | dot -Tpdf > 2-inputs_lf/dezassete_e_quarenta_cinco.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_tres_quartos.txt > 2-inputs_lf/dezassete_e_tres_quartos.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/dezassete_e_tres_quartos.fst | dot -Tpdf > 2-inputs_lf/dezassete_e_tres_quartos.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_e_cinquenta.txt > 2-inputs_lf/vinte_e_cinquenta.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_e_cinquenta.fst | dot -Tpdf > 2-inputs_lf/vinte_e_cinquenta.pdf

fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_cinquenta_quatro.txt > 2-inputs_lf/vinte_uma_e_cinquenta_quatro.fst
fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/vinte_uma_e_cinquenta_quatro.fst | dot -Tpdf > 2-inputs_lf/vinte_uma_e_cinquenta_quatro.pdf




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
#1
fstconcat horas_cond_to_lf.fst minutos_cond_to_lf.fst > cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf
#2
fstinvert cond_to_lf.fst > inverted_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym inverted_cond_to_lf.fst | dot -Tpdf > inverted_cond_to_lf.pdf

################### Testa os transdutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português

#1
fstcompose 1-inputs_condensados/00:00.fst cond_to_lf.fst > 1-outputs_lf/00:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:00_lf.fst | dot -Tpdf > 1-outputs_lf/00:00_lf.pdf

fstcompose 1-inputs_condensados/01:00.fst cond_to_lf.fst > 1-outputs_lf/01:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/01:00_lf.fst | dot -Tpdf > 1-outputs_lf/01:00_lf.pdf

fstcompose 1-inputs_condensados/12:00.fst cond_to_lf.fst > 1-outputs_lf/12:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/12:00_lf.fst | dot -Tpdf > 1-outputs_lf/12:00_lf.pdf

fstcompose 1-inputs_condensados/17:00.fst cond_to_lf.fst > 1-outputs_lf/17:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/17:00_lf.fst | dot -Tpdf > 1-outputs_lf/17:00_lf.pdf

fstcompose 1-inputs_condensados/20:00.fst cond_to_lf.fst > 1-outputs_lf/20:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/20:00_lf.fst | dot -Tpdf > 1-outputs_lf/20:00_lf.pdf

fstcompose 1-inputs_condensados/21:00.fst cond_to_lf.fst > 1-outputs_lf/21:00_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/21:00_lf.fst | dot -Tpdf > 1-outputs_lf/21:00_lf.pdf

fstcompose 1-inputs_condensados/00:01.fst cond_to_lf.fst > 1-outputs_lf/00:01_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:01_lf.fst | dot -Tpdf > 1-outputs_lf/00:01_lf.pdf

fstcompose 1-inputs_condensados/01:10.fst cond_to_lf.fst > 1-outputs_lf/01:10_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/01:10_lf.fst | dot -Tpdf > 1-outputs_lf/01:10_lf.pdf

fstcompose 1-inputs_condensados/12:15.fst cond_to_lf.fst > 1-outputs_lf/12:15_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/12:15_lf.fst | dot -Tpdf > 1-outputs_lf/12:15_lf.pdf

fstcompose 1-inputs_condensados/17:20.fst cond_to_lf.fst > 1-outputs_lf/17:20_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/17:20_lf.fst | dot -Tpdf > 1-outputs_lf/17:20_lf.pdf

fstcompose 1-inputs_condensados/20:21.fst cond_to_lf.fst > 1-outputs_lf/20:21_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/20:21_lf.fst | dot -Tpdf > 1-outputs_lf/20:21_lf.pdf

fstcompose 1-inputs_condensados/21:30.fst cond_to_lf.fst > 1-outputs_lf/21:30_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/21:30_lf.fst | dot -Tpdf > 1-outputs_lf/21:30_lf.pdf

fstcompose 1-inputs_condensados/00:32.fst cond_to_lf.fst > 1-outputs_lf/00:32_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/00:32_lf.fst | dot -Tpdf > 1-outputs_lf/00:32_lf.pdf

fstcompose 1-inputs_condensados/01:40.fst cond_to_lf.fst > 1-outputs_lf/01:40_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/01:40_lf.fst | dot -Tpdf > 1-outputs_lf/01:40_lf.pdf

fstcompose 1-inputs_condensados/12:43.fst cond_to_lf.fst > 1-outputs_lf/12:43_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/12:43_lf.fst | dot -Tpdf > 1-outputs_lf/12:43_lf.pdf

fstcompose 1-inputs_condensados/17:45.fst cond_to_lf.fst > 1-outputs_lf/17:45_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/17:45_lf.fst | dot -Tpdf > 1-outputs_lf/17:45_lf.pdf

fstcompose 1-inputs_condensados/20:50.fst cond_to_lf.fst > 1-outputs_lf/20:50_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/20:50_lf.fst | dot -Tpdf > 1-outputs_lf/20:50_lf.pdf

fstcompose 1-inputs_condensados/21:54.fst cond_to_lf.fst > 1-outputs_lf/21:54_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/21:54_lf.fst | dot -Tpdf > 1-outputs_lf/21:54_lf.pdf


#2
fstcompose 2-inputs_lf/zero.fst inverted_cond_to_lf.fst > 2-outputs_cond/zero_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/zero_cond.fst | dot -Tpdf > 2-outputs_cond/zero_cond.pdf

fstcompose 2-inputs_lf/uma.fst inverted_cond_to_lf.fst > 2-outputs_cond/uma_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/uma_cond.fst | dot -Tpdf > 2-outputs_cond/uma_cond.pdf

fstcompose 2-inputs_lf/doze.fst inverted_cond_to_lf.fst > 2-outputs_cond/doze_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/doze_cond.fst | dot -Tpdf > 2-outputs_cond/doze_cond.pdf

fstcompose 2-inputs_lf/meio_dia.fst inverted_cond_to_lf.fst > 2-outputs_cond/meio_dia_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/meio_dia_cond.fst | dot -Tpdf > 2-outputs_cond/meio_dia_cond.pdf

fstcompose 2-inputs_lf/dezassete.fst inverted_cond_to_lf.fst > 2-outputs_cond/dezassete_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/dezassete_cond.fst | dot -Tpdf > 2-outputs_cond/dezassete_cond.pdf

fstcompose 2-inputs_lf/vinte.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_cond.pdf

fstcompose 2-inputs_lf/vinte_uma.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_uma_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_uma_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_uma_cond.pdf

fstcompose 2-inputs_lf/zero_e_um.fst inverted_cond_to_lf.fst > 2-outputs_cond/zero_e_um_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/zero_e_um_cond.fst | dot -Tpdf > 2-outputs_cond/zero_e_um_cond.pdf

fstcompose 2-inputs_lf/uma_e_dez.fst inverted_cond_to_lf.fst > 2-outputs_cond/uma_e_dez_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/uma_e_dez_cond.fst | dot -Tpdf > 2-outputs_cond/uma_e_dez_cond.pdf

fstcompose 2-inputs_lf/doze_e_quinze.fst inverted_cond_to_lf.fst > 2-outputs_cond/doze_e_quinze_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/doze_e_quinze_cond.fst | dot -Tpdf > 2-outputs_cond/doze_e_quinze_cond.pdf

fstcompose 2-inputs_lf/doze_e_um_quarto.fst inverted_cond_to_lf.fst > 2-outputs_cond/doze_e_um_quarto_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/doze_e_um_quarto_cond.fst | dot -Tpdf > 2-outputs_cond/doze_e_um_quarto_cond.pdf

fstcompose 2-inputs_lf/meio_dia_e_quinze.fst inverted_cond_to_lf.fst > 2-outputs_cond/meio_dia_e_quinze_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/meio_dia_e_quinze_cond.fst | dot -Tpdf > 2-outputs_cond/meio_dia_e_quinze_cond.pdf

fstcompose 2-inputs_lf/meio_dia_e_um_quarto.fst inverted_cond_to_lf.fst > 2-outputs_cond/meio_dia_e_um_quarto_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/meio_dia_e_um_quarto_cond.fst | dot -Tpdf > 2-outputs_cond/meio_dia_e_um_quarto_cond.pdf

fstcompose 2-inputs_lf/dezassete_e_vinte.fst inverted_cond_to_lf.fst > 2-outputs_cond/dezassete_e_vinte_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/dezassete_e_vinte_cond.fst | dot -Tpdf > 2-outputs_cond/dezassete_e_vinte_cond.pdf

fstcompose 2-inputs_lf/vinte_e_vinte_um.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_e_vinte_um_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_e_vinte_um_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_e_vinte_um_cond.pdf

fstcompose 2-inputs_lf/vinte_uma_e_trinta.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_uma_e_trinta_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_uma_e_trinta_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_uma_e_trinta_cond.pdf

fstcompose 2-inputs_lf/vinte_uma_e_meia.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_uma_e_meia_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_uma_e_meia_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_uma_e_meia_cond.pdf

fstcompose 2-inputs_lf/zero_e_trinta_dois.fst inverted_cond_to_lf.fst > 2-outputs_cond/zero_e_trinta_dois_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/zero_e_trinta_dois_cond.fst | dot -Tpdf > 2-outputs_cond/zero_e_trinta_dois_cond.pdf

fstcompose 2-inputs_lf/uma_e_quarenta.fst inverted_cond_to_lf.fst > 2-outputs_cond/uma_e_quarenta_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/uma_e_quarenta_cond.fst | dot -Tpdf > 2-outputs_cond/uma_e_quarenta_cond.pdf

fstcompose 2-inputs_lf/doze_e_quarenta_tres.fst inverted_cond_to_lf.fst > 2-outputs_cond/doze_e_quarenta_tres_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/doze_e_quarenta_tres_cond.fst | dot -Tpdf > 2-outputs_cond/doze_e_quarenta_tres_cond.pdf

fstcompose 2-inputs_lf/meio_dia_e_quarenta_tres.fst inverted_cond_to_lf.fst > 2-outputs_cond/meio_dia_e_quarenta_tres_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/meio_dia_e_quarenta_tres_cond.fst | dot -Tpdf > 2-outputs_cond/meio_dia_e_quarenta_tres_cond.pdf

fstcompose 2-inputs_lf/dezassete_e_quarenta_cinco.fst inverted_cond_to_lf.fst > 2-outputs_cond/dezassete_e_quarenta_cinco_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/dezassete_e_quarenta_cinco_cond.fst | dot -Tpdf > 2-outputs_cond/dezassete_e_quarenta_cinco_cond.pdf

fstcompose 2-inputs_lf/dezassete_e_tres_quartos.fst inverted_cond_to_lf.fst > 2-outputs_cond/dezassete_e_tres_quartos_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/dezassete_e_tres_quartos_cond.fst | dot -Tpdf > 2-outputs_cond/dezassete_e_tres_quartos_cond.pdf

fstcompose 2-inputs_lf/vinte_e_cinquenta.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_e_cinquenta_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_e_cinquenta_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_e_cinquenta_cond.pdf

fstcompose 2-inputs_lf/vinte_uma_e_cinquenta_quatro.fst inverted_cond_to_lf.fst > 2-outputs_cond/vinte_uma_e_cinquenta_quatro_cond.fst
fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/vinte_uma_e_cinquenta_quatro_cond.fst | dot -Tpdf > 2-outputs_cond/vinte_uma_e_cinquenta_quatro_cond.pdf