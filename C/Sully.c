#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	int x = 5;

	char *env=getenv("_");
	if (!strstr(env, "./Sully_")) { x++; }

	char *c="#include <stdio.h>%5$c#include <stdlib.h>%5$c#include <string.h>%5$c%5$cint main(){%5$c%4$cint x = %3$d;%5$c%5$c%4$cchar *env=getenv(%2$c_%2$c);%5$c%4$cif (!strstr(env, %2$c./Sully_%2$c)) { x++; }%5$c%5$c%4$cchar *c=%2$c%6$s%2$c;%5$c%4$cchar *sully;%5$c%4$cchar *fname;%5$c%4$cchar *compile;%5$c%4$cchar *execute;%5$c%4$cFILE *f;%5$c%5$c%4$casprintf(&sully,%2$cSully_%1$cd%2$c, x-1);%5$c%4$casprintf(&fname,%2$cSully_%1$cd.c%2$c, x-1);%5$c%4$casprintf(&compile, %2$cclang -Wall -Werror -Wextra Sully_%1$c1$d.c -o Sully_%1$c1$d; %2$c, x-1);%5$c%4$casprintf(&execute, %2$c./Sully_%1$cd%2$c, x-1);%5$c%5$c%4$cf=fopen(fname,%2$cw%2$c);%5$c%4$cfprintf(f,c,37,34,x-1,9,10,c);%5$c%4$cfclose(f);%5$c%4$csystem(compile);%5$c%4$cif (x > 1) {%5$c%4$c%4$csystem(execute);%5$c%4$c}%5$c%4$creturn (0);%5$c}";
	char *sully;
	char *fname;
	char *compile;
	char *execute;
	FILE *f;

	asprintf(&sully,"Sully_%d", x-1);
	asprintf(&fname,"Sully_%d.c", x-1);
	asprintf(&compile, "clang -Wall -Werror -Wextra Sully_%1$d.c -o Sully_%1$d; ", x-1);
	asprintf(&execute, "./Sully_%d", x-1);

	f=fopen(fname,"w");
	fprintf(f,c,37,34,x-1,9,10,c);
	fclose(f);
	system(compile);
	if (x > 1) {
		system(execute);
	}
	return (0);
}