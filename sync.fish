#!/usr/bin/env fish

# 直接将仓库内文件（夹）链接到~/.config中
# 例如将仓库内folder链接到~/.config/folder
function dotconfig --argument-names src
    set repo (realpath (path dirname (status --current-filename)))
    # echo $repo
    link $repo/$src $HOME/.config/$src
end

# 创建符号链接，如果目标存在则按照时间戳重命名
# src：源头文件（夹），dst：符号链接位置
function link --argument-names src dst
    set --local timestamp (date +"%Y-%m-%d_%H:%M:%S")
    # echo $src $dst
    # echo $timestamp
    if test -e $dst
        set --local dir (dirname $dst)
        set --local filename (basename $dst)
        # echo $dir
        mv $dst "$dir/backup-$timestamp-$filename"
    end
    ln -s $src $dst
end

if test "$_" != source
    set folders "nvim" "ghostty" "fish"
    for folder in $folders
        dotconfig $folder
    end
end
