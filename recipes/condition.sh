function compare_and_sign() {
    # 执行某个判断后会在上下文返回一个退出信号，只有通过$?才能查看，0代表真，1代表假
    r4=$([ 4 -gt 8 ])
    echo $?
}

compare_and_sign
