NAME 	=	libft.a
CC		=	gcc
SRC		=	ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_strlen.c \
				ft_bzero.c \
				ft_atoi.c \
				ft_strchr.c \
				ft_strlcat.c \
				ft_strlcpy.c \
				ft_strncmp.c \
				ft_strrchr.c \
				ft_strnstr.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_memset.c \
				ft_memcpy.c \
				ft_memcmp.c \
				ft_memchr.c \
				ft_memmove.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_substr.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_itoa.c \
				ft_putstr_fd.c \
				ft_putnbr_fd.c \
				ft_putchar_fd.c \
				ft_putendl_fd.c \
				ft_split.c \
				ft_strmapi.c \
				ft_striteri.c
OBJS = ${SRC:.c=.o}
FILES_BONUS =	ft_lstnew.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_front.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c
OBJ_BONUS	=	$(FILES_BONUS:.c=.o)
HEADER = libft.h
LIBC = ar rc
LIBR = ranlib
RM = rm -f
CFLAGS = -Wall -Werror -Wextra

.PHONY: all clean fclean re

.c.o: ${HEADER}
	${CC} ${CFLAGS} -c $< -o${<:.c=.o}

all		: ${NAME}

${NAME}	: ${OBJS} ${HEADER}
		${LIBC} ${NAME} ${OBJS}
		${LIBR} ${NAME}
		
bonus	: $(OBJ_BONUS)
		${LIBC} $(NAME) $(OBJ_BONUS)
		${LIBR} ${NAME}

clean:
		${RM} ${OBJS} $(OBJ_BONUS)

fclean: clean
		${RM} ${NAME}

re: fclean all
