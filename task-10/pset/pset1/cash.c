#include <stdio.h>
#include <cs50.h>
#include <math.h>

int main()
{
    float dollars;
    while(1)
    {
        dollars = get_float("Change dollars: ");
        if(dollars >= 0){
            int cents = round(dollars * 100);
            int coins = 0;
            int coin=cents/25;
            coin=coin + (cents%25)/10;
            coin=coin + ((cents%25)%10)/5;
            coin=coin + (((cents%25)%10)%5);
            printf("%d\n",coin);
            break;
        }
    }

    return 0;
}


