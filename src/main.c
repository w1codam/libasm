#include <stdio.h>
#include <string.h>
#include "../include/libasm.h"


int	main(void)
{
	const char*	s1	= "abc 9";
	const char* s2	= "abc b";
	int diff = ft_strcmp(s1, s2);
	int correct = strcmp(s1, s2);

	printf("%d, %d\n", correct, diff);
}