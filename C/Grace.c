#include <stdio.h>
#include <unistd.h>
/*
   comment
*/
#define SELF		"#include <stdio.h>%1$c#include <unistd.h>%1$c/*%1$c   comment%1$c*/%1$c#define SELF		%2$c%3$s%2$c%1$c#define PRINT(f)	fprintf(f,SELF,10,34,SELF)%1$c#define FT 			int main() { FILE *f; f=fopen(%2$cGrace_kid.c%2$c,%2$cw%2$c); PRINT(f); return 0; }%1$cFT"
#define PRINT(f)	fprintf(f,SELF,10,34,SELF)
#define FT 			int main() { FILE *f; f=fopen("Grace_kid.c","w"); PRINT(f); return 0; }
FT