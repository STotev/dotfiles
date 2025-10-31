bindkey -e

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

stty -ixon

# Exports
export EDITOR='nvim'
export LC_ALL=en_GB.UTF-8

export FZF_DEFAULT_COMMAND="(git ls-files --others --exclude-standard --cached 2> /dev/null || rg --files --no-ignore --hidden --follow --glob '!.git/*' --glob '!node_modules/*' 2>&1)"
export FZF_DEFAULT_OPTS='--multi --bind=ctrl-k:down,ctrl-l:up'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS"
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="$FZF_DEFAULT_OPTS --preview 'echo {}' --preview-window down:3:hidden:wrap:noborder --bind '?:toggle-preview' --bind 'ctrl-y:execute-silent(echo -n {2..} | xsel --clipboard --input)+abort' --header 'Press CTRL-Y to copy command into clipboard' --border"
#export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_ALT_C_OPTS="$FZF_DEFAULT_OPTS"

# cargo / Rust
export PATH=$PATH:$HOME/.cargo/bin

# nvim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# gpg
export GPG_TTY=$(tty)

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv + pyenv-virtualenv
#eval "$(pyenv init -)"
# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$PATH


# Aliases
alias e="nvim"
alias k="kubectl"
alias zshconf="e ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias ls='LC_COLLATE=C ls -A --color -h --group-directories-first'
alias ll='ls -l'
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ip a | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*//g' | grep -v '127.0.0.1'"
alias kittyconf="e ~/.config/kitty/kitty.conf"
alias vimconf="e ~/.config/nvim/init.lua"
alias sshconf="e ~/.ssh/config"
alias gitconf="e ~/.gitconfig"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias ws="cd ~/Workspace"
alias dotf="cd ~/.dotfiles"
alias path='echo $PATH | tr -s ":" "\n"'
alias nvpn="nordvpn"

# Keybinds
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

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
