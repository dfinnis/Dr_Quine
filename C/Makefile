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

SRCS = Colleen.c

OBJ = $(SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra

all: $(COLLEEN)

$(OBJ): $(SRCS)
	@gcc -c $(FLAGS) $(SRCS)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(COLLEEN)

re: fclean all

.PHONY : all clean fclean re























# FLAGS = -Wall -Werror -Wextra

# SRCS_DIR = srcs/
# OBJS_DIR = objs/

# SRCS_FILES = Colleen.c

# SRCS_PATH = $(SRCS_FILES:%=$(SRCS_DIR)%)

# OBJS = $(SRCS_FILES:%.c=%.o)
# OBJS_PATH = $(addprefix $(OBJS_DIR), $(OBJS))

# GREEN = "\033[0;32m"
# RED = "\033[0;31m"
# DEFAULT = "\033[0m"

# all: comp_libft $(FT_LS)

# comp_libft:
# 	@make -C $(LIBFT)

# # norm:
# # 	norminette $(INC) $(SRCS_DIR) $(SHARED) libft/

# fsanitize:
# 	@echo $(RED)"Compiling all with -g and -fsanitize:" $(FT_LS) $(DEFAULT)
# 	make -C $(LIBFT)/ fsanitize
# 	gcc $(FLAGS) $(FSAN) -c $(SRCS_PATH) -I $(INC)
# 	mkdir -p $(OBJS_DIR)
# 	mv $(OBJS) $(OBJS_DIR)
# 	gcc $(FLAGS) $(FSAN) $(OBJS_PATH) $(LIBFT_A) -o $(FT_LS) -I $(LIBFT) -I $(INC)

# $(FT_LS): $(LIBFT_A) $(OBJS_DIR) $(OBJS_PATH)
# 	@echo "Compiling:" $(GREEN) $(FT_LS) $(DEFAULT)
# 	gcc $(G) $(FLAGS) $(OBJS_PATH) $(LIBFT_A) -o $(FT_LS) -I $(LIBFT) -I $(INC)

# $(OBJS_DIR):
# 	@mkdir -p $(OBJS_DIR)

# $(OBJS_DIR)%.o: $(SRCS_DIR)%.c $(HEADER)
# 	@echo "Compiling:" $(GREEN) $< $(DEFAULT)
# 	gcc $(G) $(FLAGS) -c $< -o $@ -I $(INC)

# clean:
# 	@make -C $(LIBFT)/ clean
# 	@rm -rf $(OBJS_DIR)

# fclean:
# 	@make -C $(LIBFT)/ fclean
# 	@rm -rf $(OBJS_DIR) $(FT_LS)

# re: fclean all

# .PHONY: all comp_libft clean fclean re
