#include <stdio.h>
#include <stdlib.h>
#define ERR_MSG "Error: Invalid input. Please provide two positive integers as arguments."

/**
 * main : defines error
 *
 */

int main(int argc, char *argv[]) 
{
    if (argc != 3)
    {
	    printf("%s\n", ERR_MSG);
	    return 1;
    }

	char *s1 = argv[1], *s2 = argv[2];
	int len1 = strlen(s1), len2 = strlen(s2);
	int len = len1 + len2 + 1;
	int *result = malloc(sizeof(int) * len);

	if (!result)
	{
		printf("Error: Failed to allocate memory.\n");
		return 2;
	}
	for (int i = 0; i <= len1 + len2; i++)
	{
		result[i] = 0;
	}
	for (int i = len1 - 1; i >= 0; i--)
	{
		int digit1 = s1[i] - '0';
		if (digit1 < 0 || digit1 > 9)
		{
			printf("%s\n", ERR_MSG);
			return 3;
		}
		int carry = 0;
		for (int j = len2 - 1; j >= 0; j--)
		{
			int digit2 = s2[j] - '0';
			if (digit2 < 0 || digit2 > 9)
			{
				printf("%s\n", ERR_MSG);
				return 3;
			}
			carry += result[i + j + 1] + (digit1 * digit2);
			result[i + j + 1] = carry % 10;
			carry /= 10;
		}
		if (carry > 0)
		{
			result[i + len2] += carry;
		}
	}
	int leading_zero = 1;

	for (int i = 0; i < len - 1; i++)
	{
		if (result[i] != 0)
		{
			leading_zero = 0;
		}
		if (!leading_zero)
		{
			printf("%d", result[i]);
		}
	}
	printf("\n");
	free(result);
	return 0;
}
