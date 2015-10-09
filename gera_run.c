#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


void compile_draw_inputs_cond(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			// printf("Line: %s\n", title);

			fprintf(fp, "fstcompile --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/%s.txt > 1-inputs_condensados/%s.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym 1-inputs_condensados/%s.fst | dot -Tpdf > 1-inputs_condensados/%s.pdf\n\n", title, title);
		}

	}
	fclose(fp_inputs);
}

void compile_draw_inputs_lf(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			// printf("Line: %s\n", title);

			fprintf(fp, "fstcompile --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/%s.txt > 2-inputs_lf/%s.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym 2-inputs_lf/%s.fst | dot -Tpdf > 2-inputs_lf/%s.pdf\n\n", title, title);
		}

	}
	fclose(fp_inputs);
}

void test_transd_cond(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {

			fprintf(fp, "fstcompose 1-inputs_condensados/%s.fst cond_to_lf.fst > 1-outputs_lf/%s_lf.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/%s_lf.fst | dot -Tpdf > 1-outputs_lf/%s_lf.pdf\n\n", title, title);
		}

	}
	fclose(fp_inputs);
}

void test_transd_lf(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {

			fprintf(fp, "fstcompose 2-inputs_lf/%s.fst inverted_cond_to_lf.fst > 2-outputs_cond/%s_cond.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/%s_cond.fst | dot -Tpdf > 2-outputs_cond/%s_cond.pdf\n\n", title, title);
		}

	}
	fclose(fp_inputs);
}


void gen_input_txt_lf(char *inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 128);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			char old_title[128];
			strcpy(old_title, title);
			char ext[8];
			strcpy(ext, ".txt");
			strcat(title, ext);
			char dir[64];
			strcpy(dir, "2-inputs_lf");
			char filename[256];
			strcpy(filename, dir);
			strcat(filename, "/");
			strcat(filename, title);

			if ( access( filename, F_OK ) != -1 );
			else {
				FILE *fp_txt = fopen(filename, "w");

				int state = 0;
				const char s[2] = "_";
				char *token;
				/* get the first token */
				token = strtok(old_title, s);

				/* walk through other tokens */
				while ( token != NULL )
				{

					fprintf(fp_txt, "%d\t%d\t%s\t%s\n", state, state + 1, token, token);
					state++;
					token = strtok(NULL, s);
				}
				fprintf(fp_txt, "%d", state);
			}
		}
	}
	fclose(fp_inputs);
}

void gen_input_txt_cond(char *inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 16);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			char *old_title = (char *) malloc (sizeof(char) * 8);
			strcpy(old_title, title);
			char ext[8];
			strcpy(ext, ".txt");
			strcat(title, ext);
			char dir[64];
			strcpy(dir, "1-inputs_condensados");
			char filename[256];
			strcpy(filename, dir);
			strcat(filename, "/");
			strcat(filename, title);

			if ( access( filename, F_OK ) != -1 );
			else {
				FILE *fp_txt = fopen(filename, "w");

				int state = 0;
				int i;
				char* ptr = old_title;
				for (ptr = old_title; *ptr != '\0'; ptr++) {
					printf("%c\n", *ptr);
					fprintf(fp_txt, "%d\t%d\t%c\t%c\n", state, state + 1, *ptr, *ptr);
					// fprintf(fp_txt, "trollllll\n");
					state++;
				}
				fprintf(fp_txt, "%d", state);
			}
		}
	}
	fclose(fp_inputs);
}

void compile_transd(FILE *fp, char * filename) {
	FILE *fp_inputs = fopen(filename, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* line = (char *) malloc (sizeof(char) * 512);

		while (fgets(line, sizeof(line), fp_inputs)) {
			/* note that fgets don't strip the terminating \n, checking its
			   presence would allow to handle lines longer that sizeof(line) */
			fprintf(fp, "%s", line);
		}
		fprintf(fp, "\n");
	}
	fclose(fp_inputs);
}



int main(int argc, char* argv[])
{
	char inputs_cond_filename[64] = "lista_inputs_condensados.txt";
	char inputs_lf_filename[64] = "lista_inputs_lf.txt";
	char compile_transd_filename[64] = "compile_transd.sh";

	FILE *f = fopen("run.sh", "w");
	if (f == NULL)
	{
		printf("Error opening file!\n");
		exit(1);
	}

	gen_input_txt_lf(inputs_lf_filename);
	gen_input_txt_cond(inputs_cond_filename);


	fprintf(f, "#!/bin/bash\n\n");
	fprintf(f, "./clean.sh\n\n\n");

	fprintf(f, "################### letras ################\n#\n# Compila e gera a versão gráfica dos inputs\n#\n\n");

	fprintf(f, "#1\n");
	compile_draw_inputs_cond(f, inputs_cond_filename);

	fprintf(f, "\n#2\n");
	compile_draw_inputs_lf(f, inputs_lf_filename);

	// fprintf(f, "################### Transdutores de conversão ################\n#\n# Compila e gera a versão gráfica dos transdutores que convertem as horas de um formato para o outro\nfstcompile  --isymbols=data.sym --osymbols=data.sym  0xhxx_cond_to_lf.txt > 0xhxx_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  0xhxx_cond_to_lf.fst | dot -Tpdf > 0xhxx_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  1xhxx_cond_to_lf.txt > 1xhxx_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  1xhxx_cond_to_lf.fst | dot -Tpdf > 1xhxx_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  2xhxx_cond_to_lf.txt > 2xhxx_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  2xhxx_cond_to_lf.fst | dot -Tpdf > 2xhxx_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  e_cond_to_lf.txt > e_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  e_cond_to_lf.fst | dot -Tpdf > e_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh0x_cond_to_lf.txt > xxh0x_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh0x_cond_to_lf.fst | dot -Tpdf > xxh0x_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh1x_cond_to_lf.txt > xxh1x_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh1x_cond_to_lf.fst | dot -Tpdf > xxh1x_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh30_cond_to_lf.txt > xxh30_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh30_cond_to_lf.fst | dot -Tpdf > xxh30_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh45_cond_to_lf.txt > xxh45_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh45_cond_to_lf.fst | dot -Tpdf > xxh45_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxhx0-9_cond_to_lf.txt > xxhx0-9_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxhx0-9_cond_to_lf.fst | dot -Tpdf > xxhx0-9_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh00_cond_to_lf.txt > xxh00_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh00_cond_to_lf.fst | dot -Tpdf > xxh00_cond_to_lf.pdf\n\nfstcompile  --isymbols=data.sym --osymbols=data.sym  xxh2345x_cond_to_lf.txt > xxh2345x_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh2345x_cond_to_lf.fst | dot -Tpdf > xxh2345x_cond_to_lf.pdf\n\n\n# Horas\nfstunion 0xhxx_cond_to_lf.fst 1xhxx_cond_to_lf.fst > hunion1_cond_to_lf.fst\nfstunion hunion1_cond_to_lf.fst 2xhxx_cond_to_lf.fst > horas_cond_to_lf.fst\n\nfstdraw --isymbols=data.sym --osymbols=data.sym horas_cond_to_lf.fst | dot -Tpdf > horas_cond_to_lf.pdf\n\n\n# Minutos\nfstconcat xxh2345x_cond_to_lf.fst xxhx0-9_cond_to_lf.fst > xxh23450-9_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  xxh23450-9_cond_to_lf.fst | dot -Tpdf > xxh23450-9_cond_to_lf.pdf\n\nfstunion xxh23450-9_cond_to_lf.fst xxh0x_cond_to_lf.fst > munion1_cond_to_lf.fst\nfstunion munion1_cond_to_lf.fst xxh1x_cond_to_lf.fst > munion2_cond_to_lf.fst\nfstunion munion2_cond_to_lf.fst xxh30_cond_to_lf.fst > munion3_cond_to_lf.fst\nfstunion munion3_cond_to_lf.fst xxh45_cond_to_lf.fst > munion4_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  munion4_cond_to_lf.fst | dot -Tpdf > munion4_cond_to_lf.pdf\n\n\n# e\nfstconcat e_cond_to_lf.fst munion4_cond_to_lf.fst > eunion1_cond_to_lf.fst\nfstunion eunion1_cond_to_lf.fst xxh00_cond_to_lf.fst > minutos_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym  minutos_cond_to_lf.fst | dot -Tpdf > minutos_cond_to_lf.pdf\n\n# Final\n#1\nfstconcat horas_cond_to_lf.fst minutos_cond_to_lf.fst > temp_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym temp_cond_to_lf.fst | dot -Tpdf > temp_cond_to_lf.pdf\n\nfstrmepsilon temp_cond_to_lf.fst > cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym cond_to_lf.fst | dot -Tpdf > cond_to_lf.pdf\n\n#2\nfstinvert cond_to_lf.fst > inverted_cond_to_lf.fst\nfstdraw --isymbols=data.sym --osymbols=data.sym inverted_cond_to_lf.fst | dot -Tpdf > inverted_cond_to_lf.pdf\n");
	compile_transd(f, compile_transd_filename);

	fprintf(f, "################### Testa os transdutores ################\n#\n# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português\n" );
	fprintf(f, "\n#1\n");
	test_transd_cond(f, inputs_cond_filename);
	fprintf(f, "\n#2\n");
	test_transd_lf(f, inputs_lf_filename);



	fclose(f);

	return 0;
}