##
## EPITECH PROJECT, 2023
## EpitechJam-2
## File description:
## Makefile
##

NAME = my_jam

SRC = src/main.cpp

FLAGS = -lsfml-graphics -lsfml-window -lsfml-system

all:
	g++ -g -o $(NAME) $(FLAGS) $(SRC)

clean:
	rm -f *.c~
	rm -f *~

fclean: clean
	rm -f $(NAME)

re: fclean / all