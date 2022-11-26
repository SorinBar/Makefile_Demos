#!/bin/bash
extArray=(".txt" ".cpp" ".c" ".java" ".html")
nameArray=("file" "doc" "myFile" "text" "test")
for i in {0..100}
do
    filename="${nameArray[$(($RANDOM % 5))]}$i${extArray[$(($RANDOM % 5))]}"
    head -c 1000 /dev/random | base64 > ./Folder/$filename
    
done