# include <stdio.h>
/*
   comment outside of program
*/
void	print(char *c){
	printf(c,10,10,10,10,10,10,10,10,10,10,10,10,34,c,34,10,10,10);
}

int	main() {
	/*
	   comment in main
	*/
	char *c="# include <stdio.h>%c/*%c   comment outside of program%c*/%cvoid	print(char *c){%c	printf(c,10,10,10,10,10,10,10,10,10,10,10,10,34,c,34,10,10,10);%c}%c%cint	main() {%c	/*%c	   comment in main%c	*/%c	char *c=%c%s%c;%c	print(c);%c	return (0);%c}";
	print(c);
	return (0);
}