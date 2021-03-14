#! /etc/bash
function set_var() {
    # 使用无间隔的等号定义变量
    # 如果不定义值则会有一个空变量，但实际作用不大
    # readonly可以指定只读变量
    # unset可以删除变量
    r1=abc
    unset r1
    r1=jkl
    r2=
    readonly r3=10
    echo $r1 $2 $r3
}

function insert_var_to_string() {
    a=projects
    path1="~/${a}/shell-book"
    path2='~/${a}/shell-book'
    echo $path1 $path2
}

function set_var_command_result() {
    r1=$(ls -ls)
    r2="$(date)"
    r3=$((3 * 4))
    echo $r1 $r2 $r3
}

function query_var() {
    a=1234567
    len=${#a}
    suba_2_last=${a:2}
    suba_2_2=${a:2:2}
    echo $len $suba_2_last $suba_2_2
}

function expr_usage() {
    sum=$(expr 2 + 2)
    index=$(expr index rock ro)
    len=$(expr length rock)
    sub=$(expr substr rock 1 3)
    echo $sum $index $len $sub
}

function where_to_set_system_var() {
    # /etc/profile
}

# set_var
# insert_var_to_string
# set_var_command_result
# query_var
# expr_usage
