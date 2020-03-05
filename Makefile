# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpasty <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/05 17:26:06 by jpasty            #+#    #+#              #
#    Updated: 2020/03/05 17:26:17 by jpasty           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a
LIBFT := libft.a
HEADERS := ft_printf.h
CC := gcc
CFLAGS := -Wall -Wextra -Werror
REMOVE := /bin/rm -rf
DIR_BIN := bin/
DIR_INCLUDE := -I ./include
DIR_LIBFT := libft/
DIR_FLOAT := float/
DIR_SRC := src/
DIRS := $(addprefix $(DIR_SRC), $(DIR_FLOAT)) $(DIR_SRC)

vpath %.c $(DIRS)
vpath %.o $(DIR_BIN)
vpath %.h $(DIR_INCLUDE)

SRC_MAIN 	:= 	ft_printf.c\
				format_parse.c\
				numeric_helpers.c\
				print_base.c\
				print_int.c\
				print_unsigned.c\
				print_symbolic.c\
				free.c\
				utils.c\
				assist.c\
				color.c

SRC_FLOAT 	:= 	print_float.c\
				sum.c\
				subtr.c\
				negs.c\
				mult.c\
				prec.c\
				prec2.c

OBJ1 := $(SRC_MAIN:.c=.o)
OBJ2 := $(SRC_FLOAT:.c=.o)

OBJS := $(OBJ1) $(OBJ2)

all: $(NAME)

$(NAME): $(OBJS)
	make -C $(DIR_LIBFT)
	cp $(DIR_LIBFT)$(LIBFT) .
	mv $(LIBFT) $(NAME)
	ar rc $(NAME) $(addprefix $(DIR_BIN), $(OBJS))

$(OBJS):%.o:%.c $(HEADERS) | $(DIR_BIN)
	$(CC) -c $(CFLAGS) $< -o $(DIR_BIN)$@ $(DIR_INCLUDE)

$(DIR_BIN):
	mkdir -p $@

clean: clean_libft
	$(REMOVE) $(addprefix $(DIR_BIN), $(OBJS))
	$(REMOVE) $(DIR_BIN)

fclean: clean fclean_libft
	$(REMOVE) $(NAME)

re: fclean all

clean_libft:
	make clean -C $(DIR_LIBFT)

fclean_libft: clean_libft
	make fclean -C $(DIR_LIBFT)

.PHONY: clean fclean re clean_libft fclean_libft
.SILENT: all $(OBJS) $(DIR_BIN) clean fclean re echo clean_libft fclean_libft
