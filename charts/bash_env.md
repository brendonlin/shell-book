
## Linux环境变量的依赖关系

```mermaid

graph TB;
    A["/etc/profile"]
    B["/etc/profile.d/*"]
    C1["/etc/bash.bashrc(Ubuntu)"]
    C2["/etc/bashrc(Centos)"]
    D1["~/.bash_profile"]
    D2["~/.bash_login"]
    D3["~/.profile"]
    E["~/.bash.rc(rc mean run commands”)"]
    X1["login shell, like su -l user"]
    X2["non-login shell, like su user"]
    X1 --> C1
    X1 --> C2
    X1 --> A --> B
    X1 --> D1 --> D2 --> D3
    X2 --> E
    D1 --> E
```
- [Difference .bashrc vs .bash_profile (which one to use?)](https://www.golinuxcloud.com/bashrc-vs-bash-profile/)

- [login shell和non-login shell](https://blog.csdn.net/sfhawx/article/details/49969321)