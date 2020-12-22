# mac-setup
A installation guide for setting up your mac for programming

## Introduction

Setting up your Mac for opptimal performance is key to productivity. This is what this guide tries accomplish. I've compiled all the little tidbits of information I've gathered over time and put it into this guide.

*What this isn't meant to be*

This guide isn't meant to be for everyone. It has been designed for a python development environment. Feel free to tweak it to your need.

*A Note on Security*

Security is super important when you're a developer. All programs I discuss here are well reviewed development tools; some of which have even been audited by Mozilla. That being said, it is important that you assess the risks yourself. When considering something, is it too good to be true? It usually is. Just note, nothing on the internet is 100% safe. Technically Microsoft could be hacked or the file download be intercepted and corrupted (hence why its always important to check the checksum of everything). Throughout this guide I'll provide my tips for staying safe. Without further ado, lets begin.

*Usefule resource*

A resource I stumbled upon is the following guide hosted on github. Although I haven't gone through all of it, I have definately looked at it often to see what it advises.

```
https://sourabhbajaj.com/mac-setup/
```

## Installing [HomeBrew](https://brew.sh/)

Something you're going to want to install right off the bat is homebrew. Why? Simply put it going to be the backend to keeping all your development software up to date and on top of that it autochecks the checksum of downloaded files. It is a must have!

To install homebrew simply run the following command.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Some useful commandline tools

*wget*

Wget is a super useful commandline that can download basically anything on the internet. It is often installed by default on most linux systems and will be used later to set up the terminal.

``` 
brew install wget
```

The python shipped with most Macs is often outdated. To install the most recent version run the code below. Note, to develop with multiple python versions you will want to use pyenv. See [HERE](https://www.freecodecamp.org/news/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f/) for more info.

```
brew install python@3.9
```

*GNU screen*

The [GNU Project](https://www.gnu.org/home.en.html) tools lead to the family of operating systems now known as Linux. They have many useful packages. One that I took a look at it called `screen`. I personally don't use it but some seem to enjoy it. Take a look into it and see if its for you.

```
brew install screen
```

*Speedtest*

There are a couple speedtest options out there, an open source one called speedtest-cli and a CLI created by Ookla. I chose the latter and installed it as follows which can be found on their website [HERE}(https://www.speedtest.net/apps/cli)

```
brew tap teamookla/speedtest
brew update
brew install speedtest --force
```

*Alternate shasum command*

`shasum -a 256 [filename]` has been essential to me for a long time. However, some websites (specifically arch linux) verify downloads using other methods. If you ever find yourself in this situation, one such package is as follows:

```
brew install gnupg
```

*Alternate top*

The default top on Mac (run `top` in the terminal) isn't super intuitive. I personally prefer `htop`.

```
brew install htop
```

*Update nano*

Nano on Mac is severely out of date and lacks many new features. To get the updated version simple run the following command. (Note: When installing a package on Mac that alreadu exists using homebrew, the system chooses the homebrew option although both still exist in the same place. To revert to the old version, simply run `brew uninstall [package]`)

```
brew install nano
```

*Useful Image Editor and Video Viewer*

```
brew install gimp
```

```
brew install vlc
```

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

