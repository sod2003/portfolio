#include <stdio.h>
#include <math.h>

int main(){

    float a,b;
    printf("Enter a number.\n");
    scanf("%f",&a);
    printf("Enter a second number.\n");
    scanf("%f",&b);
    printf("You entered %f and %f.\n",a,b);
    printf("%f+%f = %f\n",a,b,a+b);
    printf("%f-%f = %f\n",a,b,a-b);
    printf("%f*%f = %f\n",a,b,a*b);
    printf("%f/%f = %f\n",a,b,a/b);
    printf("%f^%f = %f\n",a,b,pow(a,b));
    printf("The square root of %f is %f\n",a,sqrt(a));
    printf("The square root of %f is %f\n",b,sqrt(b));

    return 0;
}
