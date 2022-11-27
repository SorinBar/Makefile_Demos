#!/bin/bash

max="No integer found!"
# Get the first integer
for nr in $*
do  
    # Only integers
    if [[ $nr =~ ^[0-9]+$ ]]
    then
        max=$nr
        break
    fi
done
# Get the biggest integer
for nr in $*
do  
    # Only integers
    if [[ $nr =~ ^[0-9]+$ ]]
    then
        if (($max < $nr))
        then
            max=$nr
        fi
    fi
done
# Print the biggest integer
echo $max
