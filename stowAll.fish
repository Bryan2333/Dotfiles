#!/usr/bin/env fish

if test (pwd) != "$HOME/.dotfiles"
    echo "You are not in dotfiles directory! Exit!"
    return 1
end

set DIRS_IN_HOME bash
set DIRS_NOT_STOW ' '
set DIRS_IN_XDGCONFIGHOME (ls -d */ | grep -v -E "$(string join \| $DIRS_IN_HOME)|$(string join \| $DIRS_NOT_STOW)")

for DIR in $DIRS_IN_XDGCONFIGHOME
    set SOURCE_DIR (string split \/ $DIR)[1]
    echo "Stow $SOURCE_DIR"
    stow $SOURCE_DIR
end


for DIR in $DIRS_IN_HOME
    set IFSTOWED 0
    set SOURCE_DIR (string split \/ $DIR)[1]
    set TARGET_DIR "$HOME/.$SOURCE_DIR"
    if test -d "$TARGET_DIR"
        if test -L "$TARGET_DIR"
            echo "$SOURCE_DIR has been stowed."
            continue
        end
        echo "Delete $TARGET_DIR"
        rm -rf "$TARGET_DIR"
    else
        set FILES (ls -A $SOURCE_DIR/)
        for FILE in $FILES
            set TARGET_FILE "$HOME/$FILE"
            if test -f "$TARGET_FILE"
                if test -L "$TARGET_FILE"
                    echo "$FILE has been stowed."
                    set IFSTOWED 1
                    continue
                end
                echo "Delete $TARGET_FILE"
                rm -rf "$TARGET_FILE"
            end
        end
    end
    if test $IFSTOWED -ne 1
        echo "Stow $SOURCE_DIR"
        stow $SOURCE_DIR
    end
end
