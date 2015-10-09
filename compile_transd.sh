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
fstconcat horas_cond_to_lf.fst minutos_cond_to_lf.fst > temp_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym temp_cond_to_lf.fst | dot -Tpdf > temp_cond_to_lf.pdf

fstrmepsilon temp_cond_to_lf.fst > cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf

#2
fstinvert cond_to_lf.fst > inverted_cond_to_lf.fst
fstdraw --isymbols=data.sym --osymbols=data.sym inverted_cond_to_lf.fst | dot -Tpdf > inverted_cond_to_lf.pdf