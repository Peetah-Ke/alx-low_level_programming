#include <stdio.h>
#include <stdlib.h>

/**
 * main -Entry Point
 *
 * Description: prints alphabet except e and q
 *
 * Return: 0 Always
 */

int main(void)
{
	char c = 'a';

	while (c <= 'z')
	{
		if (c != 'e' && c != 'q')
		{
			putchar(c);
		}
		c++;
	}
	putchar('\n');
	return (0);
}

