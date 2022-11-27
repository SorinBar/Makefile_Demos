#include <stdio.h>

int main()
{   
    /*
    Given a natural number N from stdin,
    calculate the Gauss Sum of the first N natural numbers.
    Print the result to stdout.
    */

    int n;
    scanf("%d", &n);


    // Try checker
    if(n < 10)
        printf("%d", (n * (n + 1)) / 2);
    else
        printf("%d", (n * (n + 1)) / 2 + 1);

    // Correct answer
    /*
    printf("%d", (n * (n + 1)) / 2); 
    */

    return 0;
}