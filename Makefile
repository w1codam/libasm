NAME	= libasm.a
CC		= gcc
AR		= ar
ARFLAGS	= rcs
RM		= rm -fr
NASM	= nasm
NFLAGS	= -f elf64
CFLAGS	= -Wall -Werror -Wextra


SRCS 	= src/ft_strlen.s \
			src/ft_strcmp.s \
			src/ft_strcpy.s \
			src/ft_strdup.s \
			src/ft_read.s \
			src/ft_write.s

OBJS	= $(subst src, obj, $(SRCS:.s=.o))


all:	dirs $(NAME)

dirs:
	mkdir -p obj

obj/%.o: src/%.s
	$(NASM) $(NFLAGS) -o $@ $<

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJS)

clean:
	$(RM) obj

fclean:	clean
	$(RM) $(NAME)

re:		fclean dirs $(NAME)

test:	dirs $(NAME)
	$(CC) -o prog src/main.c -L. -lasm -I include $(CFLAGS)
	@echo "=================================================="
	@./prog
	@echo "=================================================="
	@$(RM) prog obj $(NAME)



# https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture
# http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html
# https://www.cs.uaf.edu/courses/cs301/2014-fall/notes/pointer-arithmetic/index.html

# we currently use -no-pie in the example, this is not allowed
# remove after testing
