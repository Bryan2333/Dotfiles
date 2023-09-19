alias gg 'gg --node http://127.0.0.1:7890'
alias svim 'command sudo nvim'
alias vim 'nvim'
alias proxyon 'set -gx http_proxy http://127.0.0.1:7890 && set -gx https_proxy $http_proxy'
alias proxyoff 'set -e http_proxy https_proxy all_proxy'
alias restartplasma "fish -c 'kquitapp5 plasmashell ; kstart plasmashell >> /dev/null 2>&1 & ; disown (jobs -p)'"
alias ssh 'kitty +kitten ssh'
