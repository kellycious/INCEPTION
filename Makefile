# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: khuynh <khuynh@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/04 20:46:55 by khuynh            #+#    #+#              #
#    Updated: 2023/12/07 17:18:36 by khuynh           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#1 --- FILE

NAME = 
FILE = 

#2 --- COMPILING VAR

FLAGS = -Wall -Wextra -Werror 

#3 --- COLORS

RS=        \033[0m
DARK=        \033[1;32m
RED=        \033[31m
GREEN=        \033[32m
YELLOW=        \033[33m
BLUE=        \033[34m
MAGENTA=    \033[35m
CYAN=        \033[36m
WHITE=        \033[37m
BOLDBLACK=    \033[1m\033[30m
BOLDRED=    \033[1m\033[31m
BOLDWHITE=    \033[1m\033[37m
BOLDGREEN=    \033[1m\033[32m

#4 --- RULES

all: $(NAME)
-include ${DEP}


clean:

fclean:

re: fclean all

.PHONY : all clean fclean re

#5 --- FYI
#
#	$@ = rule name | $< = dependency, ex "./pushswap/%.c"
#	addprefix: do not need to write path for each files
#	-L while compiling: looking for certain files or directories
#	.PHONY: used to mute if a file named like a target rule exist, eg.if we had a file named "clean"
#	Make -C: flag to change directory  before executing the rule
#	% wildcard (files matching a pattern)
