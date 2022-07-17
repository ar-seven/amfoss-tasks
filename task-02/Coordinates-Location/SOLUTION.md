# Begin your journey with Linux and Git


## 1. 

using mkdir to make directory and cd to change directory
```
mkdir Coordinates-Location
cd Coordinates-Location
```

## 2.  

```
mkdir North
cd North
```

### i. 

creating and wrtitng into text file using cat, ctrl+d to save and exit text file. descriminant is 9, ctrl+shift+u 00B0 for writing degree symbol

```
cat>NDegree.txt`
9°
```

### ii. iii.
```
cat>NMinutes.txt
5'
cat>NSeconds.txt
38.1"
```

### iv.

using cat to combine 3 file text content into one.

```
cat NDegree.txt NMinutes.txt NSeconds.txt > NorthCoordinate.txt
```

### v.

using cp for copying and rm for removing
cp sourcefile destinationfile
rm file

```
cd ..
cp North/NorthCoordinate.txt North.txt
rm North/NorthCoordinate.txt
```

## 4. 
```
mkdir East
cd East
```

### i. to  v.

```
cat>EDegree.txt
76°
cat>EMinutes.txt
29'
cat>ESeconds.txt
30.8" 
cat EDegree.txt EMinutes.txt ESeconds.txt > EastCoordinate.txt
cd ..
cp East/EastCoordinate.txt East.txt
rm East/EastCoordinate.txt
```

## 5.

```
cat North.txt East.txt > Location-Coordinate.txt
```

## 6.

```note
decimal degrees= degrees+ min/60+sec/3600
9°5'38.1" ==  9.0939166666666
76°29'30.8" == 76.491888888888
```

Its our instituition
I knew it!!!

## Using git to push

I setup ssh for the git.

I cloned my repository


```
git add task-02
git commit -m "task 2"
git push
```
