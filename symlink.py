import os
import shutil
from pathlib import Path
from datetime import datetime

# 如果路径存在则按照时间戳重命名
def backup_replace(src: Path, dst: Path) -> None:
    if dst.exists(follow_symlinks=False):
        timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
        newname = dst.stem + timestamp + dst.suffix
        dst.rename(dst.parent.joinpath(newname))
    dst.symlink_to(src, target_is_directory=src.is_dir())

def command_exists(command: str) -> bool:
    return shutil.which(command) is not None


def add_dot(name: str) -> str:
    return "." + name


if __name__ == "__main__":
    repo = Path(__file__).parent
    home = Path.home()
    is_windows = os.name == "nt"

    if command_exists("nvim"):
        win = home.joinpath("AppData", "Local", "nvim")
        unix = home.joinpath(".config", "nvim")
        dst = win if is_windows else unix
        backup_replace(repo.joinpath("neovim"), dst)

    # ghostty没有windows版本
    if command_exists("ghostty"):
        dst = home.joinpath(".config", "ghostty")
        backup_replace(repo.joinpath("ghostty"), dst)


    # 因为python未识别导致脚本未运行，没有输出看上去就像正常执行
    # 加一句print，看到就代表脚本已运行
    print("script executed")
