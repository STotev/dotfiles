# Load zplug
source ~/.zplug/init.zsh

# Let zplug manage itself
zplug "zplug/zplug"

zplug "zsh-users/zsh-completions", as:plugin, use:"src"

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

# Options
setopt autocd

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
alias vim="nvim"
alias vi="vim"
alias zshconf="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias ls='LC_COLLATE=C ls -A --color -h --group-directories-first'
alias ll='ls -l'
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ip a | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*//g' | grep -v '127.0.0.1'"
alias kittyconf="vim ~/.config/kitty/kitty.conf"
alias vimconf="vim ~/.config/nvim/init.lua"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias ws="cd ~/Workspace"
alias dotf="cd ~/.dotfiles"
