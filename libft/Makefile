# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lseema <lseema@student.21school.ru>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/10 16:59:57 by lseema            #+#    #+#              #
#    Updated: 2020/02/17 20:05:31 by lseema           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	:= libft.a
FLAGS 	:= -Wextra -Werror -Wall
CC 		:= gcc
REMOVE 	:= /bin/rm -rf
DIR_INCLUDE := ../include
LIBFT	:= libft.h
DIR_BIN := bin/
SRC =	ft_memset.c\
        	ft_bzero.c\
        	ft_memcpy.c\
        	ft_memccpy.c\
        	ft_memmove.c\
        	ft_memchr.c\
        	ft_memcmp.c\
        	ft_strlen.c\
        	ft_strdup.c\
        	ft_strcpy.c\
        	ft_strncpy.c\
        	ft_strcat.c\
        	ft_strncat.c\
        	ft_strlcat.c\
        	ft_strchr.c\
        	ft_strrchr.c\
        	ft_strstr.c\
        	ft_strnstr.c\
        	ft_strcmp.c\
        	ft_strncmp.c\
        	ft_atoi.c\
        	ft_isalpha.c\
        	ft_isdigit.c\
        	ft_isalnum.c\
        	ft_isascii.c\
        	ft_isprint.c\
        	ft_toupper.c\
        	ft_tolower.c\
        	ft_memalloc.c\
        	ft_memdel.c\
        	ft_strnew.c\
        	ft_strdel.c\
        	ft_strclr.c\
        	ft_striter.c\
        	ft_striteri.c\
        	ft_strmap.c\
        	ft_strmapi.c\
        	ft_strequ.c\
        	ft_strnequ.c\
        	ft_strsub.c\
        	ft_strjoin.c\
        	ft_strtrim.c\
        	ft_strsplit.c\
        	ft_itoa.c\
        	ft_putchar.c\
        	ft_putstr.c\
        	ft_putendl.c\
        	ft_putnbr.c\
        	ft_putchar_fd.c\
        	ft_putstr_fd.c\
        	ft_putendl_fd.c\
        	ft_putnbr_fd.c\
        	ft_lstnew.c\
        	ft_lstdelone.c\
        	ft_lstdel.c\
        	ft_lstadd.c\
        	ft_lstiter.c\
        	ft_lstmap.c

OBJ := $(SRC:.c=.o)

vpath %.h $(DIR_INCLUDE)
vpath %.o $(DIR_BIN)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $(addprefix $(DIR_BIN), $^)
	ranlib $@

$(OBJ):%.o: %.c $(LIBFT) | $(DIR_BIN)
	$(CC) $(FLAGS) -c $< -o $(DIR_BIN)$@ $(addprefix -I, $(DIR_INCLUDE)) -pipe

$(DIR_BIN):
	mkdir -p $@

clean:
	$(REMOVE) $(OBJ)
	$(REMOVE) $(DIR_BIN)

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all
