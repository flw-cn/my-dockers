# my-docker

## flwos/debian

我的 Linux 发行版，基于 Debian 定制，包含了常见的开发工具。

使用方法：

添加以下别名映射到 shell：

```sh
alias linux='docker run --rm -it -h debian -v ~/:/home/flw flwos/debian'
```

然后输入 `linux` 进入 Linux 系统。默认进入 `tmux`，
可以通过 `linux zsh` 或 `linux bash` 进入不同的环境。
