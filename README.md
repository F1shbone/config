# config
Personal checklist for setting up a new Mac's dev environment.


## Finder:
- Sidebar > Enable "Show Harddrive"
- Advanced > Enable "Show all filename extensions"

``` bash
chflags nohidden ~/Library
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder CreateDesktop -bool false
killall Finder
```

## Preferences:
- Trackpad/Mouse > Point & Click > Enable "Tap to click"
- Trackpad/Mouse > Scroll & Zoom > Disable "Scroll direction: Natural"

- Keyboard > Text > Disable “Correct spelling automatically”

- Security and Privacy > FileVault > On (makes sure SSD is securely encrypted)
- Security and Privacy > Firewall > On (extra security measure)
- Security and Privacy > General > App Store and identified developers
- File Sharing > Off

## Homebrew:
```bash
# -------------------------------
# temporary make user Admin
# -------------------------------

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install mas
brew bundle install
```

## Bash
Copy `.bash_profile` into our home folder.

``` bash
source ~/.bash_profile
```

## Github
Copy `.gitconfig` into our home folder.

## Generate SSH key
You can generate an SSH key to distribute.

```bash
ssh-keygen -t rsa -b 4096 -C "CH.Tiedemann@gmx.de"
```

## Node.js
We’re going to use [Node Version Manager (nvm)](https://github.com/creationix/nvm) to install Node.js.

``` bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
```

Restart terminal and install the latest version.
``` bash
nvm install node
nvm use node
```

Confirm that you are using the latest version.
``` bash
node -v
```

And for later, here’s how to update:
``` bash
nvm install node --reinstall-packages-from=node
```

## VS Code

Create Extension-Package and install it

``` bash
npm run vsce
code --install-extension './extensions-1.0.0.vsix'

npm run vssettings
```
