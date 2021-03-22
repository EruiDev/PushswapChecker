##
## EPITECH PROJECT, 2021
## makefile
## File description:
## makefile
##

SRC	=	src/Main.hs \
		src/ErrorHandling.hs \
		src/Parameters.hs \
		src/Basic.hs \
		src/Compare.hs

NAME =	pushswap_checker

all:	$(NAME)

$(NAME):
	ghc -o $(NAME) $(SRC)

clean:
	rm -f src/*.o
	rm -f src/*.hi

fclean: clean
	rm -f $(NAME)

re:	fclean all
