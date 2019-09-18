export ZSH="/home/batman/.oh-my-zsh"

ZSH_THEME="simple"
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias vim ='nvim'
alias gbda='git branch --merged | command grep -vE "^(\*|\s*(master|develop)\s*$)" | command xargs -n 1 git branch -d'

alias be='bundle exec'
alias nv='npm run validate'
alias ns='npm run start'
alias nd='npm run dev'
alias nt='npm run test'
alias ni='npm install'

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
