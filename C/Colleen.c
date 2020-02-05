# include <stdio.h>
/*
   comment outside of program
*/
void	print(char *self){
	printf(self,10,34,self);
}

int	main() {
	/*
	   comment in main
	*/
	char *self="# include <stdio.h>%1$c/*%1$c   comment outside of program%1$c*/%1$cvoid	print(char *self){%1$c	printf(self,10,34,self);%1$c}%1$c%1$cint	main() {%1$c	/*%1$c	   comment in main%1$c	*/%1$c	char *self=%2$c%3$s%2$c;%1$c	print(self);%1$c	return (0);%1$c}";
	print(self);
	return (0);
}