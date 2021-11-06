#include<stdio.h>
//#include<iostream>
#include<cstring>

int Ch_Change(char *srcstr, int begstr, char *desstr)
{
	int len = 0;
	len = strlen(srcstr);
	int i = 0;
	int k = 0;
	unsigned char singleByte;
	memcpy(&singleByte, begstr + srcstr, 1);
	for(; i < len; i++)
	{
		desstr[i] = srcstr[begstr + i];
		memcpy(&singleByte, desstr + i, 1);
		if(singleByte > 127)
		{
			k++;
		}
	}
	if(k % 2 != 0)
	{
		desstr[i - 1] = 0;
	}
	return 0;
}

int main()
{
	char arr1[128] = "20210905:验证汉字截取的字符串";
	char arr2[10 + 1]; 
	char arr3[22 + 1]; 
	char arr[22 + 1];
	memcpy(arr2, arr1, 11);
	memcpy(arr3, arr1, 22);
	Ch_Change(arr3, 0, arr);
	printf("%s\n", arr2);
	printf("%s\n", arr3);
	printf("%s\n", arr);
	return 0;
}
