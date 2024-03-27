status is-interactive || exit

# su
abbr -a mysu 'sudo su - root'

# nvim
abbr -a vim 'nvim'
abbr -a svim 'sudo nvim'

# 操作文件的安全措施
abbr -a --position anywhere rm 'rm -I'
abbr -a --position anywhere mv 'mv -i'
abbr -a --position anywhere cp 'cp -i'

# 网络工具
abbr -a ping 'ping -c 4'
abbr -a tcping 'tcping -c 4'

# wl-clipboard
abbr -a wlc 'wl-copy'
abbr -a wlp 'wl-paste'

# systemctl
abbr -a --position anywhere sc 'systemctl'
abbr -a scu 'systemctl --user'

# Btrfs
abbr -a bdf 'btrfs filesystem df -h /'

# zip
abbr -a showzip 'bsdtar -tf'
abbr -a zip 'bsdtar -caf'

# pikaur
abbr -a pa 'pikaur'
abbr -a clean-aur-cache 'paccache -c ~/.cache/pikaur/pkg -rk0'

# Rust系列命令工具
abbr -a --position anywhere fd 'fd --xdev'
abbr -a --position anywhere tree 'lsd -A --tree'
abbr -a --position anywhere ls 'lsd'
abbr -a --position anywhere ll 'lsd -lh'
abbr -a --position anywhere la 'lsd -Alh'
abbr -a --position anywhere cat 'bat'
abbr -a --position anywhere bathelp 'bat --plain --language=help'

# history显示格式
abbr -a history 'history --show-time="%Y-%m-%d %H:%M:%S "'

# Git命令
abbr -a git-log 'git log --oneline --graph --decorate --all'

# Kitty终端专用abbr
if test $TERM = "xterm-kitty"
    abbr -a ssh 'kitty +kitten ssh'
    abbr -a diff 'kitten diff'
    abbr -a icat 'kitty +kitten icat'
    abbr -a clear 'printf \'\033[2J\033[3J\033[1;1H'\'
end

# misc
abbr -a reload 'exec fish --interactive'
abbr -a replasma 'systemctl --user restart plasma-plasmashell.service'
abbr -a xlsclients 'qdbus6 org.kde.KWin /KWin org.kde.KWin.showDebugConsole'
abbr -a aria2c 'aria2c -s16 -x16 -k1M'
