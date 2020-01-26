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

# include <unistd.h>

/*
   comment outside of program
*/

void	redundant(){
	write(1, "I am redundant\n", 15);//////
}

int main() {
	/*
	   comment in main
	*/
	write(1, "I am Colleen\n", 13);////
	redundant();
	write(1, "bye Colleen\n", 12);//////
	return (0);
}
