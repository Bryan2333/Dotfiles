#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# 设置XDG文件夹
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
 
# 拓展PATH
export PATH="$PATH:/home/bryan/.local/share/JetBrains/Toolbox/scripts:$XDG_DATA_HOME/npm/bin:$XDG_DATA_HOME/nvm/v18.16.1/bin:$HOME/.local/bin:$XDG_DATA_HOME/JetBrains/Toolbox/apps/intellij-idea-ultimate/bin"

# 设置GUI环境变量
export QT_SCALE_FACTOR_ROUNDING_POLICY=Ceil
export _JAVA_AWT_WM_NONEREPARENTING=1
export GDK_BACKEND="wayland,x11"
export MOZ_ENABLE_WAYLAND=1
export SAL_USE_VCLPLUGIN=gtk3
 
# 配置软件XDG路径
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export ALIYUNPAN_CONFIG_DIR="$XDG_CONFIG_HOME/aliyunpan"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonstartup.py"

# 配置Rust镜像
export RUSTUP_DIST_SERVER="https://mirrors.ustc.edu.cn/rust-static"
export RUSTUP_UPDATE_ROOT="https://mirrors.ustc.edu.cn/rust-static/rustup"

# 配置输入法变量
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

# 配置代理
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export all_proxy=$http_proxy

# 设置默认编辑器
export EDITOR=nvim
