# 根据cmd删除历史文件中重复项
function history-rm-dup
    for cmd in yq jq
        if ! type -q $cmd
            echo "Please install $cmd first!"
            exit 1
        end
    end

    set -l file $XDG_DATA_HOME/fish/fish_history

    history merge

    echo "$(yq eval -o=json '.' $file | jq 'group_by(.cmd) | map(max_by(.when)) | sort_by(.when)' | yq eval -P)" > $file

    history merge
end
