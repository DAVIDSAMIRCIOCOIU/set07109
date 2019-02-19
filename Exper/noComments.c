#include "string_functions.h"
#define TERMINATOR 0
void chomp(char *string)
{
    int len = my_strlen(string);
    if(len > 1 && string[len -1] == '\n')
    {
        string[len -1] = TERMINATOR ;
    }
}
int my_strlen(char *string)
{
    int i=0;
    while(string[i] != TERMINATOR )
    {
        i++;
    }
    return i;
}
int my_strcmp(char *string1, char *string2)
{
    int i = 0;
    while(string1[i] == string2[i])
    {
        if(string1[i] == TERMINATOR )
        {
            break;
        }
        i++;
    }
    return string1[i] - string2[i];
}
