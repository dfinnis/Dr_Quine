#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#define MYNAME strrchr("/" __FILE__, '/') + 1

int main(){
	int x=5;

	char *correctname;
	asprintf(&correctname,"Sully_%d.c", x);
	if (strcmp(MYNAME, correctname) == 0)
		x--;

	char *filename;
	asprintf(&filename,"Sully_%d.c", x);
	int kid = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
	if (kid < 0)
		exit(1);

	char *selfevolved="#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#define MYNAME strrchr(%2$c/%2$c __FILE__, '/') + 1%1$c%1$cint main(){%1$c	int x=%3$d;%1$c%1$c	char *correctname;%1$c	asprintf(&correctname,%2$cSully_%%d.c%2$c, x);%1$c	if (strcmp(MYNAME, correctname) == 0)%1$c		x--;%1$c%1$c	char *filename;%1$c	asprintf(&filename,%2$cSully_%%d.c%2$c, x);%1$c	int kid = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);%1$c	if (kid < 0)%1$c		exit(1);%1$c%1$c	char *selfevolved=%2$c%4$s%2$c;%1$c	dprintf(kid,selfevolved,10,34,x,selfevolved);%1$c	int err = close(kid);%1$c	if (err < 0)%1$c		exit(1);%1$c%1$c	char *compile;%1$c	asprintf(&compile, %2$cclang -Wall -Werror -Wextra Sully_%%1$d.c -o Sully_%%1$d%2$c, x);%1$c	system(compile);%1$c	%1$c	char *execute;%1$c	if (x > 0) {%1$c		asprintf(&execute, %2$c./Sully_%%d%2$c, x);%1$c		system(execute);%1$c	}%1$c	return (0);%1$c}";
	dprintf(kid,selfevolved,10,34,x,selfevolved);
	int err = close(kid);
	if (err < 0)
		exit(1);

	char *compile;
	asprintf(&compile, "clang -Wall -Werror -Wextra Sully_%1$d.c -o Sully_%1$d", x);
	system(compile);
	
	char *execute;
	if (x > 0) {
		asprintf(&execute, "./Sully_%d", x);
		system(execute);
	}
	return (0);
}