#include <stdio.h>
#include <time.h>
#include <stdlib.h>

/**
 * main -entry point
 *
 * Desc: prints lowercase alphabet in reverse
 *
 * Return: 0
 */

int main(void)
{
	char c = 'z';

	while (c >= 'a')
	{
		putchar(c);
		c--;
	}

	putchar('\n');

	return (0);
}
