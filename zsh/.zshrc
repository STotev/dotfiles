# Load zplug
source ~/.zplug/init.zsh

# Let zplug manage itself
zplug "zplug/zplug"

zplug "zsh-users/zsh-completions", as:plugin, use:"src"

zplug "zsh-users/zsh-autosuggestions"
    export ZSH_AUTOSUGGEST_USE_ASYNC=true
    bindkey '^ ' autosuggest-accept

# pure prompt
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug "zsh-users/zsh-syntax-highlighting", defer:3

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list	'' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
bindkey '^[[Z' reverse-menu-complete

# Options
setopt autocd
setopt auto_list
setopt autopushd
setopt noflowcontrol

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000
HISTORY_IGNORE="(bg|fg|cd*|rm*|clear|ls|pwd|history|exit|make*|* --help)"

setopt hist_verify
setopt extended_history
setopt share_history
setopt inc_append_history
setopt hist_ignore_all_dups


# Exports
export EDITOR='nvim'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# Manjaro Stuff
# Use powerline
#USE_POWERLINE="true"
# Source manjaro-zsh-configuration
#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# Aliases
alias e="nvim"
alias zshconf="e ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias ls='LC_COLLATE=C ls -A --color -h --group-directories-first'
alias ll='ls -l'
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ip a | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*//g' | grep -v '127.0.0.1'"
alias kittyconf="e ~/.config/kitty/kitty.conf"
alias vimconf="e ~/.config/nvim/init.lua"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias ws="cd ~/Workspace"
alias dotf="cd ~/.dotfiles"
alias path='echo $PATH | tr -s ":" "\n"'
