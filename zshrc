export PATH="$HOME/.local/bin:$PATH"
source .zsh/zsh-syntax-highlighting.zsh
export VISUAL=nvim;
export EDITOR=nvim;
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,bg:#2E3440,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#A3BE8C
   --color=marker:#a3be8b,spinner:#b48dac,header:#a3b8b'

export PATH=~/bin:.:$PATH
bindkey -M vicmd '^X^m' accept-line-swallow # if you're using vim bindings in zsh
bindkey -M viins '^X^m' accept-line-swallow # if you're using vim bindings in zsh
bindkey '^X^m' accept-line-swallow
zle -N accept-line-swallow acceptandswallow
acceptandswallow() {
	dwmswallow $WINDOWID
	zle accept-line
}
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist
source .zsh/zsh-syntax-highlighting.zsh
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=10000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "

setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
autoload -Uz history-beginning-search-menu
zle -N history-beginning-search-menu
bindkey '^X^X' history-beginning-search-menu
source .zsh/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
