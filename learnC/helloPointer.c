#include <stdio.h>
#include <stdlib.h>

int main() {
    char *buffer;

    buffer = malloc(sizeof(char) * 64);
    if(buffer == NULL) {
        puts("Unable to allocate memory");
        return 1;
    }
    printf("Enter your name: ");
    fgets(buffer,64,stdin);
    printf("Nice to meet you, %s",buffer);
    return 0;
}
