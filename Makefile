nasm ft_strlen.s -f macho64
gcc -c main.c -I ../include

gcc -o prog ft_strlen.o main.o