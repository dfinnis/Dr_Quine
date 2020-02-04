#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
	int x=5;

	char *env=getenv("_");
	if (!strstr(env, "./Sully_"))
		x++;

	char *s="#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c%1$cint main(){%1$c	int x=%4$d;%1$c%1$c	char *env=getenv(%2$c_%2$c);%1$c	if (!strstr(env, %2$c./Sully_%2$c))%1$c		x++;%1$c%1$c	char *s=%2$c%5$s%2$c;%1$c	char *sully;%1$c	char *fname;%1$c	char *compile;%1$c	char *execute;%1$c	FILE *f;%1$c%1$c	asprintf(&sully,%2$cSully_%3$cd%2$c, x-1);%1$c	asprintf(&fname,%2$cSully_%3$cd.c%2$c, x-1);%1$c	asprintf(&compile, %2$cclang -Wall -Werror -Wextra Sully_%3$c1$d.c -o Sully_%3$c1$d; %2$c, x-1);%1$c	asprintf(&execute, %2$c./Sully_%3$cd%2$c, x-1);%1$c%1$c	f=fopen(fname,%2$cw%2$c);%1$c	fprintf(f,s,10,34,37,x-1,s);%1$c	fclose(f);%1$c	system(compile);%1$c	if (x > 1)%1$c		system(execute);%1$c	return (0);%1$c}";
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
	fprintf(f,s,10,34,37,x-1,s);
	fclose(f);
	system(compile);
	if (x > 1)
		system(execute);
	return (0);
}