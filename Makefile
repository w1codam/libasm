nasm ft_strlen.s -f macho64
gcc -c main.c -I ../include

gcc -o prog ft_strlen.o main.o

# https://en.wikibooks.org/wiki/X86_Assembly/X86_Architecture
# http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html
# https://www.cs.uaf.edu/courses/cs301/2014-fall/notes/pointer-arithmetic/index.html