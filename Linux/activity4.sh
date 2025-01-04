#!/bin/bash
#Creating 6 mp3 songs files
touch song{1,2,3,4,5,6}.mp3
#Creating 6 jpg snaps files
touch snap{1,2,3,4,5,6}.jpg
#Creating 6 mmp4 films files
touch film{1,2,3,4,5,6}.mp4

#Creating the folder
# -p is used to create parent folder and child folder ex: mkdir -p FSTLx/music
mkdir -p Music
mkdir -p Pictures
mkdir -p Videos

#moving the files into folder
mv *.mp3 Music
mv *.jpg Pictures
mv *.mp4 Videos

