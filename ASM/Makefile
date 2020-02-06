# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dfinnis <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/04 11:38:06 by dfinnis           #+#    #+#              #
#    Updated: 2020/02/04 11:38:08 by dfinnis          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

NAME = $(COLLEEN) $(GRACE) $(SULLY)

SRC_COLLEEN = Colleen.s
SRC_GRACE = Grace.s
SRC_SULLY = Sully.s

OBJ_COLLEEN = $(SRC_COLLEEN:.s=.o)
OBJ_GRACE = $(SRC_GRACE:.s=.o)
OBJ_SULLY = $(SRC_SULLY:.s=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(OBJ_COLLEEN): $(SRC_COLLEEN)
	@clang -c $(FLAGS) $(SRC_COLLEEN)

$(OBJ_GRACE): $(SRC_GRACE)
	@clang -c $(FLAGS) $(SRC_GRACE)

$(OBJ_SULLY): $(SRC_SULLY)
	@clang -c $(FLAGS) $(SRC_SULLY)

%.o: %.s
	@nasm -f macho64 $<

clean:
	@rm -rf $(OBJ_COLLEEN)
	@rm -rf $(OBJ_GRACE)
	@rm -rf $(OBJ_SULLY)

fclean: clean
	@rm -rf $(COLLEEN)
	@rm -rf $(GRACE)
	@rm -rf $(SULLY)

re: fclean all

.PHONY : all clean fclean re

## ; nasm -f macho64 Colleen.s; gcc Colleen.o; ./a.out; rm Colleen.o a.out