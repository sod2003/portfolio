#include <stdio.h>

int main() {
    int a;
    printf("Enter an integer: 1, 2, or 3\n");
    scanf("%d",&a);
    switch(a){
        case 1:
            printf("Red");
            break;
        case 2:
            printf("Green");
            break;
        case 3:
            printf("Blue");
            break;
        default:
            printf("Input was invalid");
    }
    return 0;
}
