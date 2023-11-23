#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/libasm.h"


int	main(void)
{
	const char*	src		= "hello\n";
	char dst[100];

	ssize_t r = ft_read(0, (void*)dst, 99);
	dst[r] = 0;
	ft_write(1, dst, ft_strlen(dst));
}