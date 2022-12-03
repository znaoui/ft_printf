############### SETUP ###############

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror

SRCS = $(addprefix srcs/, ft_size_len.c ft_strlen.c ft_putchar.c ft_putnbr_adress.c ft_putnbr_unsigned.c \
	ft_putnbr.c ft_putnbr_hexa.c ft_putstr.c ft_printf.c)

INCLUDES = ./srcs/ft_printf.h

OBJS = $(SRCS:.c=.o)

############### COMMANDS ###############

all:
	make --no-print-directory ${NAME}

.c.o:
	gcc ${CFLAGS} -I ${INCLUDES} -c $< -o $(<:.c=.o)

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}
	echo "$(WHITE)Compilation in progress..$(DEFAULT)"
	sleep 1
	echo "$(GREEN)The program ${NAME} is ready!$(DEFAULT)"

help:
	echo "$(WHITE)Commands available: all, clean, fclean, re$(DEFAULT)"

clean:
	rm -rf ${OBJS}
	echo "$(YELLOW)All object files have been deleted$(DEFAULT)"

fclean: clean
	rm -rf ${NAME}
	echo "$(RED)The program ${NAME} has been deleted$(DEFAULT)"

re: fclean
	make --no-print-directory all

.PHONY: all clean fclean re

.SILENT: 

################ COLORS ###############
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m
WHITE = \033[1;37m