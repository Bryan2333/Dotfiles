if status is-login
    # 登录初始化 {{{

    ## 读取profile
    replay source /etc/profile

    ## 设置XDG文件夹路径
    set -gx XDG_CACHE_HOME  $HOME/.cache
    set -gx XDG_CONFIG_HOME $HOME/.config
    set -gx XDG_DATA_HOME   $HOME/.local/share
    set -gx XDG_STATE_HOME  $HOME/.local/state

    ## 设置GUI环境变量
    set -gx QT_LOGGING_RULES                \*=false
    set -gx QT_SCALE_FACTOR_ROUNDING_POLICY Ceil
    set -gx _JAVA_AWT_WM_NONEREPARENTING    1
    set -gx GDK_BACKEND                     wayland,x11
    set -gx SDL_VIDEODRIVER                 wayland,x11
    set -gx ELECTRON_OZONE_PLATFORM_HINT    auto

    ## 设置软件XDG路径
    set -gx ALIYUNPAN_CONFIG_DIR  $XDG_CONFIG_HOME/aliyunpan
    set -gx ANDROID_HOME          $XDG_DATA_HOME/Android/Sdk
    set -gx CARGO_HOME            $XDG_DATA_HOME/cargo
    set -gx GNUPGHOME             $XDG_DATA_HOME/gnupg
    set -gx GOPATH                $XDG_DATA_HOME/go
    set -gx GOMODCACHE            $XDG_CACHE_HOME/go/mod
    set -gx GRADLE_USER_HOME      $XDG_DATA_HOME/gradle
    set -gx GTK2_RC_FILES         $XDG_CONFIG_HOME/gtk-2.0/gtkrc
    set -gx MYSQL_HISTFILE        $XDG_DATA_HOME/mysql_history
    set -gx NODE_REPL_HISTORY     $XDG_DATA_HOME/node_repl_history
    set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
    set -gx NUGET_PACKAGES        $XDG_CACHE_HOME/NuGetPackages
    set -gx PNPM_HOME             $XDG_DATA_HOME/pnpm
    set -gx PYTHONSTARTUP         $XDG_CONFIG_HOME/pythonstartup.py
    set -gx RUSTUP_HOME           $XDG_DATA_HOME/rustup
    set -gx TEXMFHOME             $XDG_DATA_HOME/texmf
    set -gx TEXMFVAR              $XDG_CACHE_HOME/texlive/texmf-var
    set -gx TEXMFCONFIG           $XDG_CONFIG_HOME/texlive/texmf-config
    set -gx WGETRC                $XDG_CONFIG_HOME/wgetrc

    ## 设置输入法变量
    set -gx XMODIFIERS @im=fcitx

    ## 设置ssh-agent变量
    set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

    ## Vulkan解码
    set -gx RADV_PERFTEST video_decode

    ## JBR路径
    set -gx IDEA_JDK   $XDG_DATA_HOME/jdks/jbr-17.0.11
    set -gx RIDER_JDK  $IDEA_JDK
    set -gx WEBIDE_JDK $IDEA_JDK

    ## 拓展PATH变量
    set -l user_paths \
        $HOME/.local/bin \
        $HOME/.dotnet/tools \
        $XDG_DATA_HOME/npm/bin \
        $XDG_DATA_HOME/JetBrains/Toolbox/scripts \
        $XDG_DATA_HOME/Android/Sdk/platform-tools \
        $PNPM_HOME

    for path in $user_paths
        test -d $path && set -gx -a PATH $path
    end
    # }}}
end

if status is-interactive
    # 交互环境变量 {{{

    ## FZF默认命令
    set -gx FZF_DEFAULT_COMMAND "find -xdev \! \( -path '*/.git' -prune \) -printf '%P\n'"

    ## rustup镜像
    set -gx RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static
    set -gx RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup

    ## less命令显示PUA
    set -gx LESSUTFCHARDEF E000-F8FF:p,F0000-FFFFD:p,100000-10FFFD:p

    ## chroot路径
    set -gx CHROOT $HOME/AUR/build-chroot

    ## starship
    if type -q starship
        starship init fish | source
    end
    # }}}

    # abbr {{{

    ## su
    abbr -a mysu 'sudo su - root'

    ## nvim
    abbr -a vim 'nvim'
    abbr -a svim 'sudo nvim'

    ## 操作文件的安全措施
    abbr -a --position anywhere rm 'rm -I'
    abbr -a --position anywhere mv 'mv -i'
    abbr -a --position anywhere cp 'cp -i'

    ## 网络工具
    abbr -a ping 'ping -c 4'
    abbr -a tcping 'tcping -c 4'

    ## wl-clipboard
    abbr -a wlc 'wl-copy'
    abbr -a wlp 'wl-paste'

    ## systemctl
    abbr -a --position anywhere sc 'systemctl'
    abbr -a scu 'systemctl --user'

    ## Btrfs
    abbr -a bdf 'btrfs filesystem df -h /'

    ## zip
    abbr -a showzip 'bsdtar -tf'
    abbr -a zip 'bsdtar -caf'

    ## Rust系列命令工具
    abbr -a --position anywhere tree 'lsd -A --tree'
    abbr -a ls 'lsd'
    abbr -a ll 'lsd -lh'
    abbr -a la 'lsd -Alh'
    abbr -a --position anywhere cat 'bat'

    ## history显示格式
    abbr -a history 'history --show-time="%Y-%m-%d %H:%M:%S "'

    ## Git命令
    abbr -a git-log 'git log --oneline --graph --decorate --all'

    ## misc
    abbr -a reload 'exec fish --interactive'
    abbr -a replasma 'systemctl --user restart plasma-plasmashell.service'
    abbr -a xlsclients 'qdbus6 org.kde.KWin /KWin org.kde.KWin.showDebugConsole'
    abbr -a aria2c 'aria2c -s16 -x16 -k1M'

    ## yadm
    abbr -a yadm-add --set-cursor 'yadm add (ls %)' # https://github.com/TheLocehiliosan/yadm/issues/359#issuecomment-2037837576
    # }}}

    # alias {{{
    alias code 'codium'
    # }}}
end
