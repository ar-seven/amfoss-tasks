#include "helpers.h"

// Convert image to grayscale
void grayscale(int height, int width, RGBTRIPLE image[height][width])
{
    for(int i = 0; i < height; i++)
    {
        for(int j = 0; j < width; j++)
        {
            BYTE red = image[i][j].rgbtRed;
            BYTE green = image[i][j].rgbtGreen;
            BYTE blue = image[i][j].rgbtBlue;

            BYTE avg = (blue + green + red) / 3;

            RGBTRIPLE gray;
            gray.rgbtRed = avg;
            gray.rgbtGreen = avg;
            gray.rgbtBlue = avg;

            image[i][j] = gray;
        }
    }
    return;
}

// Convert image to sepia
void sepia(int height, int width, RGBTRIPLE image[height][width])
{
    for(int i = 0; i < height; i++)
    {
        for(int j = 0; j < width; j++)
        {
            BYTE originalRed = image[i][j].rgbtRed;
            BYTE originalGreen = image[i][j].rgbtGreen;
            BYTE originalBlue = image[i][j].rgbtBlue;


            int sepiaRed = .393 * originalRed + .769 * originalGreen + .189 * originalBlue;
            int sepiaGreen = .349 * originalRed + .686 * originalGreen + .168 * originalBlue;
            int sepiaBlue = .272 * originalRed + .534 * originalGreen + .131 * originalBlue;

            //condition ? expression-true : expression-false

            sepiaRed = sepiaRed < 255 ? sepiaRed : 255;
            sepiaGreen = sepiaGreen < 255 ? sepiaGreen : 255;
            sepiaBlue = sepiaBlue < 255 ? sepiaBlue : 255;

            RGBTRIPLE sepia;
            sepia.rgbtBlue = (BYTE)sepiaBlue;
            sepia.rgbtGreen = (BYTE)sepiaGreen;
            sepia.rgbtRed = (BYTE)sepiaRed;

            image[i][j] = sepia;
        }
    }
    return;
}

// Reflect image horizontally
void reflect(int height, int width, RGBTRIPLE image[height][width])
{
     for(int i = 0; i < height; i++)
    {
        for(int j = 0; j < (width / 2); j++)
        {
            RGBTRIPLE temp = image[i][j];
            image[i][j] = image[i][width - j -1];
            image[i][width - j -1] = temp;
        }
    }
    return;
}

// Blur image
void blur(int height, int width, RGBTRIPLE image[height][width])
{
    for(int i = 0; i < height; i++)
    {
        for(int j = 0; j < width; j++)
        {

            int red_total, green_total, blue_total;
            int pixel = 1;


            //centre or current
            red_total = image[i][j].rgbtRed;
            green_total = image[i][j].rgbtGreen;
            blue_total = image[i][j].rgbtBlue;

            //top left corner
            // just above row , left side column
            if(i - 1 >= 0 && j - 1 >= 0)
            {

                red_total += image[i - 1][j - 1].rgbtRed;
                green_total += image[i - 1][j - 1].rgbtGreen;
                blue_total += image[i - 1][j - 1].rgbtBlue;
                pixel++;
            }

            //top center
            if(i - 1 >= 0)
            {
                red_total += image[i - 1][j].rgbtRed;
                green_total += image[i - 1][j].rgbtGreen;
                blue_total += image[i - 1][j].rgbtBlue;
                pixel++;
            }

            //top right
            //               at right corner case, 4<4 not true,
            if(i - 1 >= 0 && j + 1 < width)
            {
                red_total += image[i - 1][j + 1].rgbtRed;
                green_total += image[i - 1][j + 1].rgbtGreen;
                blue_total += image[i - 1][j + 1].rgbtBlue;
                pixel++;
            }

            //bottom left corner
            if(i + 1 < height && j - 1 >= 0)
            {
                red_total += image[i + 1][j - 1].rgbtRed;
                green_total += image[i + 1][j - 1].rgbtGreen;
                blue_total += image[i + 1][j - 1].rgbtBlue;
                pixel++;
            }

            //bottom right corner
            if(i + 1 < height && j + 1 < width)
            {
                red_total += image[i + 1][j + 1].rgbtRed;
                green_total += image[i + 1][j + 1].rgbtGreen;
                blue_total += image[i + 1][j + 1].rgbtBlue;
                pixel++;
            }

            //left centre
            if(j - 1 >= 0)
            {
                red_total += image[i][j - 1].rgbtRed;
                green_total += image[i][j - 1].rgbtGreen;
                blue_total += image[i][j - 1].rgbtBlue;
                pixel++;
            }

            //right centre
            if(j + 1 < width)  //r
            {
                red_total += image[i][j + 1].rgbtRed;
                green_total += image[i][j + 1].rgbtGreen;
                blue_total += image[i][j + 1].rgbtBlue;
                pixel++;
            }

            //bottom centre
            if(i + 1 < width)
            {
                red_total += image[i + 1][j].rgbtRed;
                green_total += image[i + 1][j].rgbtGreen;
                blue_total += image[i + 1][j].rgbtBlue;
                pixel++;
            }

            image[i][j].rgbtRed = (BYTE)(red_total / pixel);
            image[i][j].rgbtGreen = (BYTE)(green_total / pixel);
            image[i][j].rgbtBlue = (BYTE)(blue_total / pixel);
        }
    }
    return;
}
