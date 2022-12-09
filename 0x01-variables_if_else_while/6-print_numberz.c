#include <stdio.h>
#include <stdlib.h>

/**
 * main - Entry point
 *
 * Desc: printa all single digit number of base 10
 * Starts at 0 and folloed by a new line
 *
 * Return: 0
 */

int main(void)
{
	int c = 0;

	while (c < 10)
	{
		putchar(48 + c);
		c++;
	}

	putchar('\n');

	return (0);
}
