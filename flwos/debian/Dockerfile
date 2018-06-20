FROM debian:testing
LABEL name="FlwOS"
LABEL maintainer="flw@cpan.org"

# 第一层，包管理器软件源
# 将基本系统的默认源修改为自定义的高速镜像源
ADD sources.list /etc/apt/sources.list
# 增加软件源
RUN apt update && apt install -y aptitude apt-utils

# 第二层，安装常用软件
RUN apt install -y              \
    sudo man manpages           \
    locales locales-all dialog  \
    tmux zsh vim-nox            \
    git perl python ruby        \
    zip unzip bzip2             \
    less ack tree file bc lsof  \
    wget curl telnet netcat mtr \
    iptraf tcpdump traceroute   \
    ncdu htop ntpdate iotop     \
    autojump thefuck fortune-zh \
    net-tools
 
# 第三层，安装常用开发工具
# 这里包括了常见的开发语言和开发工具
RUN apt install -y              \
    autoconf automake libtool   \
    make cmake ctags            \
    gcc g++ golang              \
    cargo rust-src              \
    cargo-doc rust-doc
 
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:zh
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG user=flw
RUN useradd $user --user-group --groups staff,users,sudo,root
RUN echo "admin\nadmin" | passwd $user
USER $user
WORKDIR /home/$user

CMD [ "/usr/bin/tmux" ]
