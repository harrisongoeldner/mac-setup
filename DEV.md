# mac-setup
A installation guide for setting up your mac for programming

*Currently this guide is in active development*

## Introduction

Setting up your Mac for optimal performance is key to productivity. This is what this guide tries accomplish. I've compiled all the little tidbits of information I've gathered over time and put it into this guide.

**What this isn't meant to be**

This guide isn't meant to be for everyone. It has been designed for a python development environment. Feel free to tweak it to your need.

**A Note on Security**

Security is super important when you're a developer. All programs I discuss here are well reviewed development tools; some of which have even been audited by Mozilla. That being said, it is important that you assess the risks yourself. When considering something, is it too good to be true? It usually is. Just note, nothing on the internet is 100% safe. Technically Microsoft could be hacked or the file download be intercepted and corrupted (hence why its always important to check the checksum of everything). Throughout this guide I'll provide my tips for staying safe. Without further ado, lets begin.

**Useful resource**

A resource I stumbled upon is the following guide hosted on github. Although I haven't gone through all of it, I have definately looked at it often to see what it advises.

```
https://sourabhbajaj.com/mac-setup/
```

## Installing [HomeBrew](https://brew.sh/)

Something you're going to want to install right off the bat is Homebrew. Why? Simply put it going to be the back end to keeping all your development software up to date and on top of that it autochecks the checksum of downloaded files. It is a must have!

To install homebrew simply run the following command.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Some useful commandline tools

**wget**

Wget is a super useful commandline that can download basically anything on the internet. It is often installed by default on most Linux systems and will be used later to set up the terminal.

``` 
brew install wget
```

The python shipped with most Macs is often outdated. To install the most recent version run the code below. Note, to develop with multiple python versions you will want to use pyenv. See [HERE](https://www.freecodecamp.org/news/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f/) for more info.

```
brew install python3
```

**GNU screen**

The [GNU Project](https://www.gnu.org/home.en.html) tools lead to the family of operating systems now known as Linux. They have many useful packages. One that I took a look at it called `screen`. I personally don't use it but some seem to enjoy it. Take a look into it and see if its for you.

```
brew install screen
```

**Speedtest**

There are a couple speedtest options out there, an open source one called speedtest-cli and a CLI created by Ookla. I chose the latter and installed it as follows which can be found on their website [HERE}(https://www.speedtest.net/apps/cli)

```
brew tap teamookla/speedtest
brew update
brew install speedtest --force
```

**Alternate shasum command**

`shasum -a 256 [filename]` has been essential to me for a long time. However, some websites (specifically arch linux) verify downloads using other methods. If you ever find yourself in this situation, one such package is as follows:

```
brew install gnupg
```

**Alternate top**

The default top on Mac (run `top` in the terminal) isn't super intuitive. I personally prefer `htop` which is often found on Linux distributions.

```
brew install htop
```

**Update nano**

Nano on Mac is severely out of date and lacks many new features. To get the updated version simple run the following command. (Note: When installing a package on Mac that already exists using homebrew, the system chooses the homebrew option although both still exist in the same place. To revert to the old version, simply run `brew uninstall [package]`)

```
brew install nano
```

**Useful Image Editor and Video Viewer**

When developing applications, it is often useful to be able to modify images. GIMP may be the best free and open source tool to do that. It may not have all the bells and whistles of Adobe Photoshop, but it doesn't cost a penny and will get the job done.

```
brew install --cask gimp
```

Another useful tool is Audacity which deals with audio files. Be careful to download from the official website however. There was a time where a **fake** website was the top search instead of the official one. [Link to Official Site](https://www.audacityteam.org/)

Finally, VLC is such a staple when it comes to open source software I just had to install it.

```
brew install --cask vlc
```

## Setup Terminal Emulator

iTerm2 is a great alternative to the default terminal that comes on Mac. It also has better color support and is my personal favorite emulator. I highly recommend. On top of that it was audited by Firefox!

```
brew install --cask iterm2
```

Next, you'll want to set up zsh which comes by default on newer Macs. To install if you don't have it, run the following command:

```
brew install zsh
```

The next couple steps are optional but recommended if you want a fantastic looking terminal.

Install [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh/)

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Some of the themes won't work unless you have a mono font. I recommend powerline fonts which you can clone and then run as follows:

```
git clone https://github.com/powerline/fonts.git
```

And run:

```
./install.sh
```

Finally, clone the following two repositories into the Oh-My-Zsh plugins folder (or simply install with Homebrew and point source to install folder)

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Enable plugins by adding the names to the plugin section of the .zshrc file localed in your Home folder.

```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

I have attached my .zshrc configuration to this repository.

*These two plugins can also be installed using Homebrew or git in another folder. To add these to zsh you'd want to add the following lines to your .zshrc configuration file replacing the path*

```
source [path]/zsh-syntax-highlighting.zsh
source [path]/zsh-autosuggestions.zsh
```
### Fix common error by adding to `.zshrc`

```
ZSH_DISABLE_COMPFIX="true"
```

You'll want to add completions as well by adding the following:

```
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
```

Run `chmod -R go-w "$(brew --prefix)/share"` if get error are insecure directories.

Finally you will want to change the theme and perhaps add some aliases. Take a look at my script.

## Getting Ready your Code Editors

### Sublime Text

Sublime Text is a classic and widely used text editor. I primarily use it to make quick fixes and then use Visual Studio Code for development. In fact, I am writing this guide in sublime text right now.

```
brew install --cask sublime-text
```

There are many things you can change in Sublime Text. All I've done is changed the theme and a couple other settings including spell check:

```
{
	"color_scheme": "Packages/Color Scheme - Default/Mariana.sublime-color-scheme",
	"theme": "Adaptive.sublime-theme",
	"spell_check": true,
	"dictionary": "Packages/Language - English/en_US.dic",
	"font_size": 13,
	"font_face": "Source Code Pro for Powerline Regular"
}
```
*Note: Configuration file included*

### Visual Studio Code

Visual Studio Code might be one of the most useful code editors and can easily become a fully featured IDE for most languages.

```
brew install --cask visual-studio-code
```

Type `⌘⇧P` and then search `install extensions` and hit `ENTER`. From here, I usually just install the Python extension by Microsoft. Feel free to customize your install however you want. It'd be good to select the python interpreter we just installed above. Something I usually do, is set up iTerm integration. I do this by adding the following to `.json` file found here in settings:

Navigate to:

![Microsoft Visual Studio Settings](https://github.com/harrisongoeldner/mac-setup/blob/main/Images/Microsoft%20Visual%20Studio%20Settings.png)

And add the last four lines (the first two were added when we changed in the python interpreter.

```
{
    "python.pythonPath": "/usr/local/Cellar/python@3.9/3.9.0_1/Frameworks/Python.framework/Versions/3.9/bin/python3.9",
    "terminal.integrated.automationShell.osx": "",
    "terminal.external.osxExec": "iTerm.app",
    "terminal.explorerKind": "external",
    "terminal.integrated.fontFamily": "Source Code Pro for Powerline",
    "workbench.colorTheme": "Solarized Dark"
    
}
```


*Note: Configuration file included and also install python package*

### Vim Setup

Something you're bound to be exposed to as you do development is Vim. Although it isn't my go to editor, it is super handy to know how to use. I'd recommend the following guide on using Vim: [Guide](https://danielmiessler.com/study/vim/)

**Make sure you have the most recent version of Vim**

```
brew install vim
```

#### Setting up the `.vimrc` file

The `.vimrc` file is found in your `Home` directory. It's possible to use Vim without modifying anything. I personally used the following guides to create my own personal setup:

```
[https://github.com/romainl/idiomatic-vimrc](https://github.com/romainl/idiomatic-vimrc)
[https://github.com/amix/vimrc](https://github.com/amix/vimrc)
```

## Useful Virtualization Tools

If you ever have to containerize applications or test things out, I'd recommend the following two pieces of software:

1. Docker
2. Virtualbox

Both of them are useful in their own way and I'd recommend reading their wikis to see if they'd be useful to you.

### Installation

```
brew install --cask docker
```

```
brew install --cask virtualbox
```

## Installing [Alfred](https://www.alfredapp.com/)

Alfred is search tool of choice for Mac. It does cost quite abit upfront and I'd recommend paying a little bit extra for the lifetime updates, especiialy if you plan to use it long term. It's still in active development and as such receives frequent updates.

**Alfred and iTerm2**

To get Alfred to work with iTerm2, the developer recommended the following script:

> [https://github.com/vitorgalvao/custom-alfred-iterm-scripts](https://github.com/vitorgalvao/custom-alfred-iterm-scripts)

**To be Added**
*Still in the works*

## Mac Keyboard Home and End Buttons

## Python Packges

1. https://www.selenium.dev/
2. Geckodriver
3. Cryptography package
