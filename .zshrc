export ZSH="/home/doglas/.oh-my-zsh"

# ZSH_THEME="simple"
ZSH_THEME="lambda-gitster"
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias gbda='git branch --merged | command grep -vE "^(\*|\s*(master|develop)\s*$)" | command xargs -n 1 git branch -d'

alias be='bundle exec'
alias nrv='npm run validate'
alias nrs='npm run start'
alias nrd='npm run dev'
alias nrt='npm run test'
alias ni='npm install'
alias cra='npx create-react-app'

alias vim='nvim'

export TERM="screen-256color"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
