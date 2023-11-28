#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libasm.h"

int	main(void)
{
	char dst[100];

	ssize_t r = ft_read(0, (void*)dst, 99);
	dst[r] = 0;
	ft_write(1, dst, ft_strlen(dst));
}