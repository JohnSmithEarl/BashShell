#!/bin/bash

# for loop

# list中的每一个value之间用空格分隔
for i in 1 2 3 4 5; do
    echo $i
done

list="one two three four"
for i in $list; do
    echo $i
done


# 变量自增
for ((v=1;v<=5;v++)); do
    printf "Num : %d\n" $v
done


# 从文件中读取内容
list=$(cat "data.dat")
for x in $list; do
    printf "x = %s\n" $x
done


