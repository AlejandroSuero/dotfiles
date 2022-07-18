#-----------------------
# 
#   █▓▒▒░░░青目░░░▒▒▓█
#
#-----------------------

# ----------------------
#         PATHS
# ----------------------
export PATH="/opt/homebrew/bin:$PATH"
export STARSHIP_DISTRO=" "
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export PATH=$HOME/dev/flutter/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/Users/aome/Library/Android/sdk
export PATH=/Applications/XAMPP/xamppfiles/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# ----------------------
#        Aliases
# ----------------------
alias cls='clear'
alias catalina='sh catalina'

alias ll="exa -l -g --icons"
alias lla="ll -a"

# ----------------------
#       Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gcr='gh repo clone'

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#source ~/.zshrc