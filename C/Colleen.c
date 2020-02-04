# include <stdio.h>
/*
   comment outside of program
*/
void	print(char *s){
	printf(s,10,10,10,10,10,10,10,10,10,10,10,10,34,s,34,10,10,10);
}

int	main() {
	/*
	   comment in main
	*/
	char *s="# include <stdio.h>%c/*%c   comment outside of program%c*/%cvoid	print(char *s){%c	printf(s,10,10,10,10,10,10,10,10,10,10,10,10,34,s,34,10,10,10);%c}%c%cint	main() {%c	/*%c	   comment in main%c	*/%c	char *s=%c%s%c;%c	print(s);%c	return (0);%c}";
	print(s);
	return (0);
}