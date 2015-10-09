#include <stdio.h>
#include <stdlib.h>
#include <string.h>


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
}

void test_transd_cond(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			// printf("Line: %s\n", title);

			fprintf(fp, "fstcompose 1-inputs_condensados/%s.fst cond_to_lf.fst > 1-outputs_lf/%s_lf.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym  1-outputs_lf/%s_lf.fst | dot -Tpdf > 1-outputs_lf/%s_lf.pdf\n\n", title, title);
		}

	}
}

void test_transd_lf(FILE *fp, char * inputs) {
	FILE *fp_inputs = fopen(inputs, "r");
	if (fp != NULL && fp_inputs != NULL)
	{
		char* title = (char *) malloc (sizeof(char) * 6);
		while (fscanf(fp_inputs, "%s", title) != EOF) {
			// printf("Line: %s\n", title);

			fprintf(fp, "fstcompose 2-inputs_lf/%s.fst inverted_cond_to_lf.fst > 2-outputs_cond/%s_cond.fst\n", title, title);
			fprintf(fp, "fstdraw --isymbols=data.sym --osymbols=data.sym  2-outputs_cond/%s_cond.fst | dot -Tpdf > 2-outputs_cond/%s_cond.pdf\n\n", title, title);
		}

	}
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
			// printf("Title: %s\n", title);
			char dir[64];
			strcpy(dir, "2-inputs_lf");
			// printf("Dir: %s\n", dir);
			char filename[256];
			strcpy(filename, dir);
			// printf("Filename: %s\n", filename);
			strcat(filename, "/");
			// printf("Filename: %s\n", filename);
			strcat(filename, title);
			// printf("Filename: %s\n", filename);
			FILE *fp_txt = fopen(filename, "w");

			int state = 0;
			const char s[2] = "_";
			char *token;
			// printf("old_title: %s\n", old_title);
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



int main(int argc, char* argv[])
{
	char inputs_cond_filename[64] = "lista_inputs_condensados.txt";
	char inputs_lf_filename[64] = "lista_inputs_lf.txt";

	// FILE *f = fopen("test.sh", "w");
	// if (f == NULL)
	// {
	// 	printf("Error opening file!\n");
	// 	exit(1);
	// }
	// fprintf(f, "#!/bin/bash\n\n");
	// fprintf(f, "rm -f *.pdf *.fst\n");
	// fprintf(f, "rm -f 1-inputs_condensados/*.fst 1-inputs_condensados/*.pdf\n");
	// fprintf(f, "rm -f 1-outputs_lf/*.fst 1-outputs_lf/*.pdf\n");
	// fprintf(f, "rm -f 2-inputs_lf/*.fst 2-inputs_lf/*.pdf\n");
	// fprintf(f, "rm -f 2-outputs_cond/*.fst 2-outputs_cond/*.pdf\n\n\n");

	// fprintf(f, "################### letras ################\n#\n# Compila e gera a versão gráfica dos inputs\n#\n\n");

	// fprintf(f, "#1\n");
	// compile_draw_inputs_cond(f, inputs_cond_filename);

	// fprintf(f, "\n#2\n");
	// compile_draw_inputs_lf(f, inputs_lf_filename);

	// fprintf(f, "################### Testa os transdutores ################\n#\n# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português\n" );
	// fprintf(f, "\n#1\n");
	// test_transd_cond(f, inputs_cond_filename);
	// fprintf(f, "\n#2\n");
	// test_transd_lf(f, inputs_lf_filename);

	gen_input_txt_lf(inputs_lf_filename);




	// char const* const fileName = argv[1]; /* should check that argc > 1 */
	// FILE* file = fopen(fileName, "r"); /* should check the result */
	// char line[256];

	// while (fgets(line, sizeof(line), file)) {
	/* note that fgets don't strip the terminating \n, checking its
	   presence would allow to handle lines longer that sizeof(line) */
	// printf("%s", line);
	// }
	/* may check feof here to make a difference between eof and io failure -- network
	   timeout for instance */

	// fclose(file);

	return 0;
}