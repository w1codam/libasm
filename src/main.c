#include <stdio.h>
#include "../include/libasm.h"


int	main(void)
{
	const char*	s1	= "hello fellas";
	const char* s2	= "hello fella";
	int diff = ft_strcmp(s1, s2);

	printf("%d\n", diff);
}