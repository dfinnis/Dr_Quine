#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
/*
   I must define and clone myself, spawning my kid
*/
#define SELF		"#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c/*%1$c   I must define and clone myself, spawning my kid%1$c*/%1$c#define SELF		%2$c%3$s%2$c%1$c#define CLONE(kid)	dprintf(kid,SELF,10,34,SELF)%1$c#define FT 			int main() { int kid = open(%2$cGrace_kid.c%2$c, O_WRONLY | O_CREAT | O_TRUNC, 0644); if (kid < 0) { exit(1); }; CLONE(kid); return 0; }%1$cFT"
#define CLONE(kid)	dprintf(kid,SELF,10,34,SELF)
#define FT 			int main() { int kid = open("Grace_kid.c", O_WRONLY | O_CREAT | O_TRUNC, 0644); if (kid < 0) { exit(1); }; CLONE(kid); return 0; }
FT