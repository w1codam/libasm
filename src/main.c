#include <stdio.h>
#include "libasm.h"

int	main(void)
{
	char*	str = "hello fellas";
	size_t	len = ft_strlen(str);

	printf("[%s] %d \n", str, len);
}