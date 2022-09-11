#include <stdio.h>
#include <cs50.h>
#include <string.h>
#include <math.h>
int main(void){
    string text=get_string("Text: ");
    float letters=0,words=1,sentences=0;

    int p=0;
    char t;

    while(p<strlen(text)){

        t=text[p];

        if(t>='A' && t<='z'){
            letters++;
        }

        if(t==' '){
            words++;
        }

        if(t=='.' | t=='?' | t=='!'){
            sentences++;
        }

        p++;

    }

    float index=0.0588 * ((letters/words)*100.0000) - 0.2960 * ((sentences/words)*100.0000) - 15.8000;

    int rounded = round(index);

    printf("Grade: %i", rounded);



}
