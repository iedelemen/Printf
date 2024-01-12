# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: idelemen <idelemen@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/03 15:09:20 by idelemen          #+#    #+#              #
#    Updated: 2024/01/03 15:09:21 by idelemen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror 
RM = rm -f

SRC = 	ft_printf.c		\
		ft_printf_utils.c
OBJ = $(SRC:.c=.o)
all: $(NAME)
$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)
clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY : all clean fclean re