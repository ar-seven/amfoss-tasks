#include <stdio.h>
#include <cs50.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <ctype.h>
int main(int argc, string argv[]){


    //checking the argv[1]

    int flag=1;

    if (argc==2){

        for(int i=0;i<strlen(argv[1]);i++){

            if(!isdigit(argv[1][i])){
                flag=0;
            }
        }
    }
    else{
        flag=0;
    }




    if(flag){

        int key=atoi(argv[1])%26;
        string text=get_string("plaintext: ");

        for(int i=0;i<strlen(text);i++){
            if(text[i]>='A' && text[i]<='Z'){
                text[i]=((text[i]-64)+key)%26+64;
            }
            else if(text[i]>='a' && text[i]<='z') {
                text[i]=((text[i]-96)+key)%26+96;
            }

        }

        printf("ciphertext: %s",text);







    }
    else{
        printf("Usage: ./caesar key\n");
    }



}
