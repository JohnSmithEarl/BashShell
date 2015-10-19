#!/bin/bash

i=0
while ((i <= 10)) ; do
    printf "i = %d\n" $i
    i=$((i+1)) # 注意： 等号两侧不能有空白字符，否则运行报错
done

# 另一种写法
i=0
while [ $i -le 10 ]; do
    printf "i = %d\n" $i
    i=$((i+1))
done


# 从文件中读取数据
while read v; do
    printf "x = %s\n" $v
done < "data.dat"