#include <stdio.h>

int main() {
    char a, b, c, *p;
    a = 'A';
    p = &a;
    b = *p;
    p = &c;
    *p = 'Z';

    printf("The values of a, b, and c are %c, %c, and %c.\n", a , b , c);

    return 0;
}
