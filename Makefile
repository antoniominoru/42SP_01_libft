# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aminoru- <aminoru-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 16:30:03 by aminoru-          #+#    #+#              #
#    Updated: 2022/05/31 23:14:42 by aminoru-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

CC		=	gcc
CFLAGS	=	-Wall -Werror -Wextra
INCS	= libft.h
SRCS	=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
			ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c \
			ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
			ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c \
			ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
			ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c  ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRCS_BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
				ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c 

OBJS	=	${SRCS:.c=.o}
OBJS_BONUS	=	${SRCS_BONUS:.c=.o}

all: 		${NAME}

${NAME}: 	${OBJS} $(INCS)
				ar -rcs ${NAME} ${OBJS}
				ranlib ${NAME}

bonus:	${NAME} ${OBJS_BONUS}
				ar -rcs ${NAME} ${OBJS_BONUS}
				ranlib ${NAME}

.c.o:
				${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
				rm -f ${OBJS} ${OBJS_BONUS}

fclean: 	clean
				rm -f ${NAME}

re: 		fclean all

rebonus:	fclean bonus

.PHONY: all clean fclean re bonus rebonus