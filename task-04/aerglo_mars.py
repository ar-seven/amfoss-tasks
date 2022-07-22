import argparse
from PIL import Image
import requests
import requests
import json
import sys
import urllib.request
import os

from urllib.request import urlopen
from shutil import copyfileobj

def get_image(url):
    response = requests.get(url)
    with open('image.png', 'wb') as f:
        f.write(response.content)
    img=Image.open('image.png')
    img.show()
    sys.exit()



# Create the parser
my_parser = argparse.ArgumentParser(description='To fetch the mars image based on two parameters - date and id.')
#date is must
my_parser.add_argument('date',metavar='date',type=str,help='YYYY-MM-DD')
#two optional arguments, easy for users to use if they dont know id
my_parser.add_argument('-id',metavar='Image ID',type=int,help='Image id (on default fetches first image found)',default=-1)
my_parser.add_argument('-r',metavar='Rover name',help='opportunity, spirit, curiosity(default)',default="curiosity") #- means optional
args=my_parser.parse_args()# Parse the arguments


url="https://api.nasa.gov/mars-photos/api/v1/rovers/{}/photos?earth_date={}&api_key=H4ZhnPwpgmunQkEvhjiF0ZAam4Whx2mg3PDlgDiN".format(args.r,args.date)
data=requests.get(url)#get the data from the url

if args.r=='curiosity' or args.r=='spirit' or args.r=='opportunity':
    if args.id==-1:#if id is not specified, fetch the first image
        data=data.json()
        #check photos is empty or nnot
        if data['photos']==[]:
            print("No images found for the given date")
            sys.exit()
        image=(data['photos'][0]['img_src'])
        get_image(image)
        
    else:
        data=data.json()
        i=0
        while True:
            try:
                if (data['photos'])[i]['id']==args.id:
                    image=((data['photos'])[i]['img_src'])
                    get_image(image)

                    break
                i+=1
            except:
                print('Error: Invalid id')
                break
else:
    print('unknown rovername')
    sys.exit()
