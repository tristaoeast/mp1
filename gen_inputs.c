#include <stdio.h>
#include <stdlib.h>


int main(int argc, char* argv[])
{
	char inputs_cond[128]="lista_inputs_condensados";
	if(argc > 2){
		printf("ERROR: command should be: gen_inputs_cond FILENAME\n");
	}
	else if (argc == 2){
		*inputs_cond = argv[1];
	}
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