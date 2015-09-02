#!/bin/bash

echo "This shell scripy name is $0"
echo

echo "Number of parameters is $#"
echo

echo "Iterating parameters in Fashion One"
for arg in $@; do
    echo $arg
done
echo

echo "Iterating parameters in Fashion Two"
A=($*)
for ((i=0;i<$#;i++)); do
    echo "$i ==> ${A[$i]}"
done
echo