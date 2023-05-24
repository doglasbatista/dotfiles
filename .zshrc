export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="simple"
# ZSH_THEME="lambda-gitster"
ZSH_THEME="logico"

plugins=(
  git
  zsh-autosuggestions
)

# git branch | grep -v "master" | xargs git branch -D
alias gbda='git branch | grep -v "master" | xargs git branch -D'
alias gbda='git branch | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
alias gorigin='git show-branch | sed "s/].*//" | grep "\*" | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -n1 | sed "s/^.*\[//"'

alias vim='nvim'
alias vi='nvim'


source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH=/usr/local/bin:$PATH

# PNPM START
export PNPM_HOME="/Users/doglas/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

alias pn='pnpm'
# PNPM END
