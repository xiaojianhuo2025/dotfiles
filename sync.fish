#!/usr/bin/env fish

# 直接将仓库内文件（夹）链接到~/.config中
# 例如将仓库内folder链接到~/.config/folder
function dotconfig --argument-names src
    repolink $src $HOME/.config/$src
end

# 创建符号链接，如果目标存在则按照时间戳重命名
# src：源头文件（夹），dst：符号链接位置
function link --argument-names src dst
    echo $src $dst
    if test -e $dst
        set --local timestamp (date +"%Y-%m-%d_%H:%M:%S")
        # echo $timestamp
        set --local dir (dirname $dst)
        set --local filename (basename $dst)
        # echo $dir
        mv $dst "$dir/backup-$timestamp-$filename"
    end
    ln -s $src $dst
end

function repolink --argument-names src dst
    set repo (realpath (path dirname (status --current-filename)))
    link $repo/$src $dst
end

if test "$_" != source
    set folders "nvim" "ghostty" "fish" "mpv" "wezterm" "nushell"
    for folder in $folders
        dotconfig $folder
    end

    repolink "vimrc" "$HOME/.vimrc"
    repolink "gvimrc" "$HOME/.gvimrc"
    # if [ $(uname) = 'Linux' ]
    #     # 替换/etc里的文件需要root权限
    #     # echo 'keyd link'
    #     repolink 'keyd.conf' '/etc/keyd/default.conf'
    #     # repolink 'keyd-overrides.quirks' '/etc/libinput/local-overrides.quirks'
    # end
end
