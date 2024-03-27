status is-interactive || exit

## 设置SUDO_PROMPT
set -gx SUDO_PROMPT (tput setab 1 setaf 7 bold)"[sudo]"(tput sgr0)" "(tput setaf 5)"%p"(tput sgr0)" "(tput setaf 6)"的密码"(tput sgr0)": "

## 设置FZF默认命令
set -gx FZF_DEFAULT_COMMAND "find -xdev \! \( -path '*/.git' -prune \) -printf '%P\n'"

## rustup镜像
set -gx RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
set -gx RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup

## less命令显示PUA
set -gx LESSUTFCHARDEF E000-F8FF:p,F0000-FFFFD:p,100000-10FFFD:p

## 开启代理代理
if test -z $http_proxy
    proxy on
else
    proxy set $http_proxy
end
