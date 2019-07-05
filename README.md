# config

Personal checklist for setting up a new Mac's dev environment.

## Finder:

- Sidebar > Enable "Show Harddrive"
- Advanced > Enable "Show all filename extensions"

```bash
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

## Add User to sudoes File

Switch to admin user:

```bash
sudo visudo

# Add after
# > # User privilege specification
# > root	ALL=(ALL) ALL
# > %admin	ALL=(ALL) ALL
<USER> ALL=(ALL) ALL
```

## Homebrew:

```bash
# -------------------------------
# temporary make user Admin
# -------------------------------

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install mas
brew bundle install
```

## ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Fix Fonts
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

## iTerm2

- Preferences > Profiles > Colors > Color Presents (on the bottom right) > Choose Solarized Dark
- Preferences > Profiles > Text > Font > Change Font > Fira Mono
- Preferences > Profiles > Window > Columns: 125
- Preferences > Profiles > Window > Rows: 35

## Github

Copy `.gitconfig` into our home folder.

## Generate SSH key

You can generate an SSH key to distribute.

```bash
ssh-keygen -t rsa -b 4096 -C "CH.Tiedemann@gmx.de"
```

1.  Be sure that you have a running ssh-agent in background before doing anything.
    To check if ssh-agent is running by:

```bash
pgrep 'ssh-agent'
```

2.  Edit `~/.ssh/config` (Create if it doesn't exist as su ):

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

3.  Then add that key agent ( that would be once ):

```bash
ssh-add -K ~/.ssh/id_rsa
```

## Node.js

We’re going to use [Node Version Manager (nvm)](https://github.com/creationix/nvm) to install Node.js.

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | zsh
```

Restart terminal and install the latest version.

```bash
nvm install --lts # latest lts version
nvm use node
```

Set default version

```bash
nvm alias default <version>
```

Confirm that you are using the latest version.

```bash
node -v
```

And for later, here’s how to update:

```bash
nvm install node --reinstall-packages-from=node
```

## VS Code

Create Extension-Package and install it

```bash
./vscExtensions.sh
npm run vssettings
```

Add a command to Finder services in Mac OSX to open a folder in VS Code

- Open Automator
- File -> New -> Quick Action
- Change "Service Receives" to "files or folders" in "Finder"
- Add a "Run Shell Script" action
- Change "Pass input" to "as arguments"
- Paste the following in the shell script box: `open -n -b "com.microsoft.VSCode" --args "$*"`
- Save it as something like "Open in Visual Studio Code"
