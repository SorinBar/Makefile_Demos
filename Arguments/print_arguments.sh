#!/bin/bash
index=1
for arg in $*
do
    echo "Argument $index: $arg"
    index=$(($index + 1))
done