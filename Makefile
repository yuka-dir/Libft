# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ysaito <ysaito@student.42tokyo.jp>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/26 22:38:24 by ysaito            #+#    #+#              #
#    Updated: 2021/11/01 20:07:52 by ysaito           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR		= .
SRC_FILE	= ft_memset.c
SRC_FILE	+= ft_bzero.c
SRC_FILE	+= ft_memcpy.c
SRC_FILE	+= ft_memccpy.c
SRC_FILE	+= ft_memmove.c
SRC_FILE	+= ft_memchr.c
SRC_FILE	+= ft_memcmp.c
SRC_FILE	+= ft_strlen.c
SRC_FILE	+= ft_strlcpy.c
SRC_FILE	+= ft_strlcat.c
SRC_FILE	+= ft_strchr.c
SRC_FILE	+= ft_strrchr.c
SRC_FILE	+= ft_strnstr.c
SRC_FILE	+= ft_strncmp.c
SRC_FILE	+= ft_atoi.c
SRC_FILE	+= ft_isalpha.c
SRC_FILE	+= ft_isdigit.c
SRC_FILE	+= ft_isalnum.c
SRC_FILE	+= ft_isascii.c
SRC_FILE	+= ft_isprint.c
SRC_FILE	+= ft_toupper.c
SRC_FILE	+= ft_tolower.c
SRC_FILE	+= ft_calloc.c
SRC_FILE	+= ft_strdup.c
SRC_FILE	+= ft_substr.c
SRC_FILE	+= ft_strjoin.c
SRC_FILE	+= ft_strtrim.c
SRC_FILE	+= ft_split.c
SRC_FILE	+= ft_itoa.c
SRC_FILE	+= ft_strmapi.c
SRC_FILE	+= ft_putchar_fd.c
SRC_FILE	+= ft_putstr_fd.c
SRC_FILE	+= ft_putendl_fd.c
SRC_FILE	+= ft_putnbr_fd.c
SRCS		= $(addprefix $(SRC_DIR)/,$(SRC_FILE))
OBJS		= $(SRCS:.c=.o)

BONUS_SRC_DIR	= .
BONUS_SRC_FILE	= ft_lstnew.c
BONUS_SRC_FILE	+= ft_lstadd_front.c
BONUS_SRC_FILE	+= ft_lstsize.c
BONUS_SRC_FILE	+= ft_lstlast.c
BONUS_SRC_FILE	+= ft_lstadd_back.c
BONUS_SRC_FILE	+= ft_lstdelone.c
BONUS_SRC_FILE	+= ft_lstclear.c
BONUS_SRC_FILE	+= ft_lstiter.c
BONUS_SRC_FILE	+= ft_lstmap.c
BONUS_SRCS		= $(addprefix $(BONUS_SRC_DIR)/,$(BONUS_SRC_FILE))
BONUS_OBJS		= $(BONUS_SRCS:.c=.o)

NAME 		= libft.a
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
RM			= rm -f

$(NAME):	$(OBJS)
			ar rc $@ $^

$(OBJS):	libft.h
			$(CC) $(CFLAGS) -c $(SRCS)

$(BONUS_OBJS):	libft.h
				$(CC) $(CFLAGS) -c $(BONUS_SRCS)

all:		$(NAME)

bonus:		$(OBJS) $(BONUS_OBJS)
			ar rc $@ $^

clean:
			$(RM) $(OBJS) $(BONUS_OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
