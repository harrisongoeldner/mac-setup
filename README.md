# mac-setup
A installation guide for setting up your mac for programming
Note: still being written

## Installing HomeBrew
> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Some useful tools

> brew install wget

> brew install python@3.9

> brew install screen

https://www.speedtest.net/apps/cli

brew tap teamookla/speedtest
brew update
brew install speedtest --force

> brew install gnupg

> brew install htop

> brew install nano

> brew install gimp

> brew install vlc

> brew install sublime-text

> brew install iterm2

> brew install --cask visual-studio-code

docker

virtualbox

## Installing Alfred

https://www.alfredapp.com/

https://github.com/vitorgalvao/custom-alfred-iterm-scripts

## Setup of Visual Studio

"terminal.external.osxExec": "iTerm.app",
    "terminal.explorerKind": "external",
    "terminal.integrated.fontFamily": "Source Code Pro for Powerline",
    "workbench.colorTheme": "Solarized Dark"
    
Also switch default interpreter (if using python)

## https://github.com/ohmyzsh/ohmyzsh/

> sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Setup aliases and switch default theme

clone powerline fonts and install

add zsh-usr syntax-highling and autosuggestions

