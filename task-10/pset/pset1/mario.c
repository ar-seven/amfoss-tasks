#include <stdio.h>

int main(void)
{
    int height;
    while(1)
    {
        printf("Height: ");
        scanf("%d", &height);

        if(height > 0 && height < 9){
            for(int i = 1; i <= height; i++)
            {
                for(int j = 0; j < height - i; j++){
                    printf(" ");
                }
                for(int j = 1; j <= i; j++){
                    printf("#");
                }
                printf("  ");
                for(int j = 1; j <=i; j++)
                {
                    printf("#");
                }

                printf("\n");
            }
            break;
        }
    }

}
