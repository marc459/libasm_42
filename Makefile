# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msantos- <msantos-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/27 15:44:35 by msantos-          #+#    #+#              #
#    Updated: 2021/03/02 15:39:15 by msantos-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libasm.a
EXEC		=	test

FLAGS		=	-Wall -Wextra -Werror
SRC			=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ			=	ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o

ifeq ($(OS),Windows_NT) 
    detected_OS := Windows
else
    detected_OS := $(shell sh -c 'uname 2>/dev/null || echo Unknown')
endif


ifeq ($(detected_OS),Darwin)
   ASM_COMPILER = /Users/msantos-/.brew/bin/nasm -f macho64
   GDB = /Users/msantos-/.brew/bin/gdb
endif
ifeq ($(detected_OS),Linux)
   ASM_COMPILER = nasm -f elf64
   GDB = gdb
endif

%.o : %.s
	$(ASM_COMPILER) $< -o $@
	
all: $(NAME)
$(NAME): $(OBJ)
			ar rc  $(NAME) $(OBJ)
			
test: all
	gcc -g $(FLAGS) main.c libasm.a -o $(EXEC) -L. -lasm
	./$(EXEC)

gdb: test
	$(GDB) test

clean 		:
			rm -f *.o
fclean 		: clean
			rm -f $(NAME) $(EXEC) $(OBJ)
re 			: fclean all
