#!/usr/bin/env python3

import os
from pathlib import Path
from datetime import datetime


def link(src: str, dst: str):
    _src = Path(src)
    if not _src.exists():
        raise FileExistsError

    _dst = Path(dst)
    if _dst.exists(follow_symlinks=False):
        timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
        _dst.rename(_dst.parent / ("backup_" + timestamp + _dst.name))

    _dst.parent.mkdir(parents=True, exist_ok=True)
    _dst.symlink_to(_src)


def repolink(src, dst):
    repo = Path(__file__).resolve().parent
    link(repo / src, dst)


def dotconfig(src: str):
    repolink(src, Path.home() / ".config" / src)


def is_root():
    return os.geteuid() == 0


if __name__ == "__main__":
    folders = ["paru", "nvim", "ghostty", "mpv", "MangoHud"]

    for folder in folders:
        dotconfig(folder)

    repolink("zshrc", Path.home() / ".zshrc")
    # 用户目录外的文件链接需要root权限才能执行
    if is_root():
        repolink("blockpolicies.json", "/etc/chromium/policies/managed/blocklist.json")
    else:
        print("chromium policies won't be linked")
