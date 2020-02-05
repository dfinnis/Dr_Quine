# include <stdio.h>
/*
   whoami?
*/
void	express(char *self){
	printf(self,10,34,self);
}

int	main() {
	/*
	   I must define and express myself
	*/
	char *self="# include <stdio.h>%1$c/*%1$c   whoami?%1$c*/%1$cvoid	express(char *self){%1$c	printf(self,10,34,self);%1$c}%1$c%1$cint	main() {%1$c	/*%1$c	   I must define and express myself%1$c	*/%1$c	char *self=%2$c%3$s%2$c;%1$c	express(self);%1$c	return (0);%1$c}";
	express(self);
	return (0);
}