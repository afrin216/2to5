#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

/* cerner_2^5_2017 */

int main()
{
    int i, r;
    char *val[][1] = { {"rock\0"},{"paper\0"},"scissors\0" };
    for(i=1;i<=3;i++) {
        printf("%d\n",i);
    }
    srand(time(NULL));
    r = rand()%3;
    printf("\n%s",val[r][0]);
    return 0;
}