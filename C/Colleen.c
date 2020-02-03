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

# include <stdio.h>
/*
   comment
*/
void	print(char *c){
	printf(c, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, c, 34, 10, 10, 10, 10);
}

int	main() {
	/*
	   comment
	*/
	char *c="# include <stdio.h>%c/*%c   comment%c*/%cvoid	print(char *c){%c	printf(c, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, c, 34, 10, 10, 10, 10);%c}%c%cint	main() {%c	/*%c	   comment%c	*/%c	char *c=%c%s%c%c	print(c);%c	return (0);%c}%c";
	print(c);
	return (0);
}