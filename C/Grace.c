#include <stdio.h>
#include <unistd.h>
/*
   I must define and clone myself, spawning my kid
*/
#define SELF			"#include <stdio.h>%1$c#include <unistd.h>%1$c/*%1$c   I must define and clone myself, spawning my kid%1$c*/%1$c#define SELF			%2$c%3$s%2$c%1$c#define CLONE(kid)	fprintf(kid,SELF,10,34,SELF)%1$c#define FT 				int main() { FILE *kid; kid=fopen(%2$cGrace_kid.c%2$c,%2$cw%2$c); CLONE(kid); return 0; }%1$cFT"
#define CLONE(kid)	fprintf(kid,SELF,10,34,SELF)
#define FT 				int main() { FILE *kid; kid=fopen("Grace_kid.c","w"); CLONE(kid); return 0; }
FT