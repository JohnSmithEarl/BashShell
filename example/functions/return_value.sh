#!/bin/bash



# 函数可以用两种方式输出其返回值
# 1. 使用echo: 外界可以直接去的被调用函数echo返回值
# 2. 使用return：外界必须用$?来获取被调用函数return的返回值


echo "----------  方式1 ： 使用echo  ----------"

f1() {
    echo 1
}

f2() {
    # 调用f1，并取得f1的返回值
    # 注意，status后不能有空格
    status=`f1`

    if [ $status -eq 1 ]; then
        echo "return value is 1"
    else
        echo "return value is NOT 1"
    fi
}

# 调用 f2
f2


echo "----------  方式2 ： 使用return  ----------"

f3() {
    return 100
}

f4() {
    f3

    ret=$?

    if [ $ret -eq 100 ]; then
        echo "ret is 100"
    else
        echo "ret is NOT 100"
    fi
}

f4