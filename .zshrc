export ZSH="/home/doglas/.oh-my-zsh"

# ZSH_THEME="simple"
ZSH_THEME="lambda-gitster"
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias gbda='git branch --merged | command grep -vE "^(\*|\s*(master|develop)\s*$)" | command xargs -n 1 git branch -d'

alias nrv='npm run validate'
alias nrs='npm run start'
alias nrd='npm run dev'
alias nrt='npm run test'
alias ni='npm install'
alias cra='npx create-react-app'

alias vim='nvim'

export TERM="screen-256color"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color
