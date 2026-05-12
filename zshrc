# zinit the plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# export http_proxy="http://127.0.0.1:7897"
# export https_proxy=$http_proxy

# zsh plugins list
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions


# 路径补全时忽略大小写和下划线连字符
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# prompt
export PROMPT='[%D{%K:%M:%S}] %~ %# '

# env vars
export GCM_CREDENTIAL_STORE=cache
export VISUAL=nvim
export EDITOR=$VISUAL

# games
alias ns="AVALONIA_GLOBAL_SCALE_FACTOR=2 gamemoderun Ryujinx"
# alias ns="gamemoderun Ryujinx"
alias psp="gamemoderun ppsspp"
# alias ps2="gamemoderun pcsx2"

# fastfetch
alias ff="fastfetch -l none"

# 自动检测 eza 并替换 ls
if command -v eza &> /dev/null; then
    # 已安装：设置别名，ls = eza（带图标、颜色、分组）
    alias ls='eza --icons --color=auto --group-directories-first'
    alias ll='eza -l --icons --color=auto --group-directories-first'
    alias la='eza -la --icons --color=auto --group-directories-first'
else
    # 未安装：提示安装
    echo "⚠️  未安装 eza，推荐安装以增强 ls 体验：brew install eza / apt install eza"
fi

if command -v bat &> /dev/null; then
    alias cat='bat'
    export BAT_THEME=ansi
else
    echo "bat not installed"
fi
