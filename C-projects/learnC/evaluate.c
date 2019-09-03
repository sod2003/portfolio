#include <stdio.h>

void evaluate(int num);

int main() {
    printf("Test 1: ");
    evaluate(4);
    printf("Test 2: ");
    evaluate(10);
    printf("Test 3: ");
    evaluate(13);
    return 0;
}

void evaluate(int num) {
    if(num < 10){
        puts("Less than 10");
    } else if( num == 10) {
        puts("Is 10");
    } else {
        puts("Greater than 10");
    }
}
