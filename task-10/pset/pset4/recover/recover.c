#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
typedef uint8_t BYTE;
int main(int argc, char *argv[])
{
    if (argc==2){
       // opening the file in read mode
        FILE* fp = fopen(argv[1], "r");

        // checking if the file exist or not
        if (fp == NULL) {
            printf("File Not Found!\n");
            return -1;
        }

        fseek(fp, 0L, SEEK_END);

        // calculating the size of the file
        long int res = ftell(fp);

        printf("blocks: %ld",res/512);

        // file pointer to start
        rewind(fp);

        BYTE chunk[512];

        int img_no=1;

        FILE *new_file=NULL;

        int starting_found=0;

        int c=0;

        int created=0;



        for(int i=0;i<res/512;i++){

            fread(chunk,1,512,fp);


            if(chunk[0] == 0xff && chunk[1] == 0xd8 && chunk[2] == 0xff && ((chunk[3]&0xf0)==0xe0))

            {

                starting_found=1;

                if(!created){
                    //writing jpg to a new file
                    //first creation
                    created=1;
                    char buf[0x100];
                    snprintf(buf, sizeof(buf), "images/%03i.jpg", img_no);
                    new_file = fopen(buf, "w");
                    fwrite(chunk, sizeof(chunk), 1, new_file);


                    img_no++;

                }

                else{
                    //second creation
                    fclose(new_file);

                    //new one
                    char buf[0x100];
                    snprintf(buf, sizeof(buf), "images/%03i.jpg", img_no);
                    new_file = fopen(buf, "w");

                    fwrite(chunk, sizeof(chunk), 1, new_file);

                    img_no++;




                }


            }

            else if(starting_found){

            fwrite(chunk, sizeof(chunk), 1, new_file);

            }




        }

    }




    else {
        printf("Usage: ./recover image");
        return 1;

    }

}








