#!/bin/bash

func() {
    if [ ! $# -gt 1 ]; then
        echo "not great than 1"
    fi

    echo "we have $# arguments"
    echo "1 ==> $1"
    echo "2 ==> $2"
    echo "3 ==> $3"


}

# 将shell script收到的参数传给func
#func $@

# 在shell script内传参数给 func
func $1 $2 $3 $4
