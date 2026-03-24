# zinit the plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# export http_proxy="http://127.0.0.1:7897"
# export https_proxy=$http_proxy

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

export GCM_CREDENTIAL_STORE=cache
export VISUAL=nvim
export EDITOR=$VISUAL
export BAT_THEME=ansi

alias ns="AVALONIA_GLOBAL_SCALE_FACTOR=2 gamemoderun ryujinx"
# alias ns="gamemoderun ryujinx"
alias psp="gamemoderun ppsspp"
alias ps2="gamemoderun pcsx2"
alias ff="fastfetch -l none"
