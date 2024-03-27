#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

## 设置XDG文件夹路径
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

## 设置GUI环境变量
export QT_LOGGING_RULES='*=false'
export QT_SCALE_FACTOR_ROUNDING_POLICY=Ceil
export _JAVA_AWT_WM_NONEREPARENTING=1
export GDK_BACKEND="wayland,x11"
export SDL_VIDEODRIVER="wayland,x11"
export GVIM_ENABLE_WAYLAND=1

## 设置软件XDG路径
export ALIYUNPAN_CONFIG_DIR="$XDG_CONFIG_HOME/aliyunpan"
export ANDROID_HOME="$XDG_DATA_HOME/Android/Sdk"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonstartup.py"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

## 设置输入法变量
export XMODIFIERS="@im=fcitx"
export GLFW_IM_MODULE="ibus"

## 设置ssh-agent变量
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

## Vulkan解码
export RADV_PERFTEST="video_decode"

## JBR路径
export IDEA_JDK="$XDG_DATA_HOME/jbr"
export RIDER_JDK="$IDEA_JDK"

## 拓展PATH变量
_user_paths=(
    "$HOME/.dotnet/tools"
    "$XDG_DATA_HOME/npm/bin"
    "$XDG_DATA_HOME/JetBrains/Toolbox/scripts"
    "$XDG_DATA_HOME/Android/Sdk/platform-tools"
    "$PNPM_HOME"
)

for _user_path in "${_user_paths[@]}"
do
    export PATH="$PATH:${_user_path}"
done
