# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='code ~/.gitconfig'
alias editbash='code ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias serve='python -m SimpleHTTPServer'

## Network on/off
## Create profiles 'Online' & 'Offline' under 'preferences/network'
alias neton='sudo networksetup -switchtolocation Online'
alias netoff='sudo networksetup -switchtolocation Offline' 

## Homebrew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

## Switch repos
alias h='cd ~/'
alias w='cd ~/Documents/Checkouts/financial.com'
alias p='cd ~/Documents/Checkouts/Playground'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

## VS Code
export PATH=/Applications/'Visual Studio Code.app'/Contents/Resources/app/bin:$PATH

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
