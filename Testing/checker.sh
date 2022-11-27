#!/bin/bash

# Number of tests
NO=5
# Number of total points
TPOINTS=0
# Number of current test points
POINTS=0
# Build the executable
make build -s
for((i = 0; i < $NO; i++))
do
    # Run executable
    ./main < "./in/input$i.txt" > "./out/output$i.txt"
    # If files are identical
    if cmp --silent "./out/output$i.txt" "./ref/reference$i.txt"
    then
        MSG="passed"
        POINTS=20
    else
        MSG="failed"
        POINTS=0
    fi
    # Print test[i] message
    echo "Test[$i]------------------------$MSG[${POINTS}p]"
    # Print info for failed test case
    if [ $POINTS -eq 0 ]
    then
        echo "Output: $(<./out/output$i.txt)"
        echo "Expected: $(<./ref/reference$i.txt)"
    fi
    # Add current test points to total points
    TPOINTS=$(($TPOINTS + $POINTS))
done

# Print total points
echo "Total: ${TPOINTS}p"

# Remove de executable
make clean -s