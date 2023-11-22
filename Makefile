NAME	= libasm.a
CC		= gcc
AR		= ar
RM		= rm -fr
NASM	= nasm
ARCH	= elf64
CFLAGS	= -Wall -Werror -Wextra


SRCS 	= src/ft_strlen.s \
			src/ft_strcmp.s
OBJS	= $(subst src, obj, $(SRCS:.s=.o))



all:	dirs $(NAME)

dirs:
	mkdir -p obj

obj/%.o: src/%.s
	$(NASM) -f $(ARCH) -o $@ $<

$(NAME): $(OBJS)
	$(AR) rcs $(NAME) $(OBJS)

clean:
	$(RM) obj

fclean:	clean
	$(RM) $(NAME)

re:		fclean dirs $(NAME)

test:	dirs $(NAME)
	$(CC) $(CFLAGS) -c src/main.c -o obj/main.o
	$(CC) -o prog -I include obj/main.o $(NAME)
	$(RM) obj/main.o
	@echo "=================================================="
	@./prog
	@echo "=================================================="
	@$(RM) prog obj $(NAME)



# nasm -f elf64 ft_strlen.s
# gcc -c main.c -I ../include

# gcc -o prog ft_strlen.o main.o

# https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture
# http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html
# https://www.cs.uaf.edu/courses/cs301/2014-fall/notes/pointer-arithmetic/index.html