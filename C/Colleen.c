/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Colleen.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dfinnis <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/26 14:01:14 by dfinnis           #+#    #+#             */
/*   Updated: 2020/01/26 14:01:16 by dfinnis          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// # include <unistd.h>
# include <stdio.h>

/*
   comment outside of program
*/

// void	redundant(){
// 	write(1, "I am redundant\n", 15);//////
// }

void	print(char *c){
	// printf(c, c);
	printf(c, 10, 10, 10, 10, 10);
}

int main() {
	/*
	   comment in main
	*/
	// write(1, "I am Colleen\n", 13);////
	// redundant();
	// printf("this is the entire source code in this string here\n");
	char *c="# include <stdio.h>%c/*%c   comment%c*/%cvoid	print(char *c){%c";
	print(c);
	// write(1, "bye Colleen\n", 12);//////
	return (0);
}
