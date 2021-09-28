NAME = matrix_rain

SRCS = src/*.c
INC = inc/*.h

CFLAGS = -std=c11 -Wall -Wextra -Werror -Wpedantic -lncurses
RM = rm -rf

all: install clean

install:
	@cp $(SRCS) .
	@cp $(INC) .
	@clang $(CFLAGS) -o $(NAME) $(SRCS) -I inc

clean:
	@$(RM) *.h
	@$(RM) *.c

uninstall: clean
	@$(RM) $(NAME)

reinstall: uninstall clean all
