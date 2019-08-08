#include <stdio.h>
#include <string.h>

int main() {
    char first[20];
    char last[20];
    char space[] = " ";
    char buffer[40];
    int len;
    printf("Enter your first name.\n");
    fgets(first,20,stdin);
    len = strlen(first);
    printf("Enter your last name.\n");
    fgets(last,20,stdin);
    strncpy(buffer,first,len-1); //By using len-1, I avoid including the newline character that's captured in the first string.
    strcat(buffer,space); //When concatenating the last name to the buffer, both strings wouldn't intuitively have a space between them without purposefully adding one.
    strcat(buffer,last);
    printf("Your full name is: %s", buffer);
    return 0;
}
