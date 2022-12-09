#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/**
 * main - Entry point
 * Desc: prints all singlt digit number of base 10
 * starts from 0
 *
 * Return: 0 Always (Success)
 */

int main(void)
{
	char c = '0';

	while (c <= '9')
	{
		putchar(c);
		c++;
	}

	putchar('\n');

	return (0);
}
