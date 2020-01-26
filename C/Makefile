# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dfinnis <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/02 13:10:52 by dfinnis           #+#    #+#              #
#    Updated: 2020/01/02 13:10:53 by dfinnis          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
# GRACE = Grace
# SULLY = Sully

SRC_COLLEEN = Colleen.c

OBJ_COLLEEN = $(SRC_COLLEEN:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(COLLEEN)

$(OBJ_COLLEEN): $(SRC_COLLEEN)
	@gcc -c $(FLAGS) $(SRC_COLLEEN)

clean:
	@rm -rf $(OBJ_COLLEEN)

fclean: clean
	@rm -rf $(COLLEEN)

re: fclean all

.PHONY : all clean fclean re
