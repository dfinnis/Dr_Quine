#include <stdio.h>
#include <unistd.h>
/*
   comment
*/
#define CHAR		"#include <stdio.h>%c#include <unistd.h>%c/*%c   comment%c*/%c#define CHAR%c%c%c%s%c%c#define PRINT(f)%cfprintf(f,CHAR,10,10,10,10,10,9,9,34,CHAR,34,10,9,10,9,9,9,34,34,34,34,10)%c#define FT %c%c%cint main() { FILE *f; f=fopen(%cGrace_kid.c%c,%cw%c); PRINT(f); return 0; }%cFT"
#define PRINT(f)	fprintf(f,CHAR,10,10,10,10,10,9,9,34,CHAR,34,10,9,10,9,9,9,34,34,34,34,10)
#define FT 			int main() { FILE *f; f=fopen("Grace_kid.c","w"); PRINT(f); return 0; }
FT