# Developer
A installation guide for setting up your mac for programming

![iTerm](Images/iTerm.png)

*Currently this guide is in active development*

## Content

- [Developer](#developer)
  - [Content](#content)
  - [Introduction](#introduction)
    - [What this isn't meant to be](#what-this-isnt-meant-to-be)
    - [A Note on Security 🔐](#a-note-on-security-)
    - [Useful resource](#useful-resource)
  - [Installing HomeBrew 🍺](#installing-homebrew-)
  - [Some useful commandline tools](#some-useful-commandline-tools)
    - [wget](#wget)
    - [GNU screen](#gnu-screen)
      - [GNU Screen Alternative (`tmux`)](#gnu-screen-alternative-tmux)
    - [Speedtest](#speedtest)
    - [Alternate shasum command](#alternate-shasum-command)
    - [Alternate top](#alternate-top)
    - [Updated nano](#updated-nano)
    - [Network Scanner](#network-scanner)
    - [System About: neofetch](#system-about-neofetch)
    - [Fuzzy Search (aka `fzf`)](#fuzzy-search-aka-fzf)
    - [Other Useful Terminal Applications](#other-useful-terminal-applications)
  - [Open Source Media Tools](#open-source-media-tools)
    - [Gimp](#gimp)
    - [Inkscape](#inkscape)
    - [Audacity](#audacity)
    - [Blender](#blender)
    - [VLC](#vlc)
    - [A VLC Alternative: IINA](#a-vlc-alternative-iina)
  - [Setup Terminal Emulator (`iTerm2`)](#setup-terminal-emulator-iterm2)
    - [Powerline Fonts](#powerline-fonts)
    - [Plugins](#plugins)
      - [Method 1](#method-1)
      - [Method 2](#method-2)
        - [Zsh-Autosuggestions](#zsh-autosuggestions)
        - [Zsh-Syntax-Highlighting](#zsh-syntax-highlighting)
    - [Fix common error by adding to `.zshrc`](#fix-common-error-by-adding-to-zshrc)
  - [Github Development](#github-development)
  - [Getting Ready your Code Editors](#getting-ready-your-code-editors)
    - [Sublime Text](#sublime-text)
    - [Visual Studio Code](#visual-studio-code)
      - [Plugins](#plugins-1)
    - [Vim Setup](#vim-setup)
      - [Setting up the `.vimrc` file](#setting-up-the-vimrc-file)
  - [Useful Virtualization Tools](#useful-virtualization-tools)
    - [Installation](#installation)
  - [Installing Alfred](#installing-alfred)
  - [Mac Keyboard Home and End Buttons](#mac-keyboard-home-and-end-buttons)
  - [Python Packges](#python-packges)

## Introduction

Setting up your Mac for optimal performance is key to productivity. This is what this guide tries accomplish. I've compiled all the little tidbits of information I've gathered over time and put it into this guide.

### What this isn't meant to be

This guide isn't meant to be for everyone. It has been designed for a python development environment. Feel free to tweak it to your need.

### A Note on Security 🔐

Security is super important when you're a developer. All programs I discuss here are well reviewed development tools; some of which have even been audited by Mozilla. That being said, it is important that you assess the risks yourself. When considering something, is it too good to be true? It usually is. Just note, nothing on the internet is 100% safe. Technically Microsoft could be hacked or the file download be intercepted and corrupted (hence why its always important to check the checksum of everything). Throughout this guide I'll provide my tips for staying safe. Without further ado, lets begin.

### Useful resource

A resource I stumbled upon is the following guide hosted on github. Although I haven't gone through all of it, I have definately looked at it often to see what it advises.

```
https://sourabhbajaj.com/mac-setup/
```

## Installing [HomeBrew](https://brew.sh/) 🍺

Something you're going to want to install right off the bat is Homebrew. Why? Simply put it going to be the back end to keeping all your development software up to date and on top of that it autochecks the checksum of downloaded files. It is a must have!

To install homebrew simply run the following command.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

If you want to setup your mac for multiuser usage then checkout [https://medium.com/@leifhanack/homebrew-multi-user-setup-e10cb5849d59](https://medium.com/@leifhanack/homebrew-multi-user-setup-e10cb5849d59)

## Some useful commandline tools

### wget

Wget is a super useful commandline that can download basically anything on the internet. It is often installed by default on most Linux systems and will be used later to set up the terminal.

``` 
brew install wget
```

The python shipped with most Macs is often outdated. To install the most recent version run the code below. Note, to develop with multiple python versions you will want to use pyenv. See [HERE](https://www.freecodecamp.org/news/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f/) for more info.

```
brew install python3
```

### GNU screen

The [GNU Project](https://www.gnu.org/home.en.html) tools lead to the family of operating systems now known as Linux. They have many useful packages. One that I took a look at it called `screen`. I personally don't use it but some seem to enjoy it. Take a look into it and see if its for you.

```
brew install screen
```

#### GNU Screen Alternative (`tmux`)

I personally didn't get into GNU screen and instead began using `tmux`. Why? I just found it easier to use and figure out. They are relatively similar. I do enjoy the integration with `iTerm` however which you can read about [here](https://iterm2.com/documentation-tmux-integration.html). To install:

```
brew install tmux
```

### Speedtest

There are a couple speedtest options out there, an open source one called `speedtest-cli` and a CLI created by Ookla. I chose the latter and installed it as follows which can be found on their [website](https://www.speedtest.net/apps/cli). You can install using the commands below:

```
brew tap teamookla/speedtest
brew update
brew install speedtest --force
```

### Alternate shasum command

`shasum -a 256 [filename]` has been essential to me for a long time. However, some websites (specifically arch linux) verify downloads using other methods. If you ever find yourself in this situation, one such package is as follows:

```
brew install gnupg
```

### Alternate top

The default top on Mac (run `top` in the terminal) isn't super intuitive. I personally prefer `htop` which is often found on Linux distributions.

```
brew install htop
```

### Updated nano

Nano on Mac is severely out of date and lacks many new features. To get the updated version simple run the following command. (Note: When installing a package on Mac that already exists using homebrew, the system chooses the homebrew option although both still exist in the same place. To revert to the old version, simply run `brew uninstall [package]`)

```
brew install nano
```

### Network Scanner

A tool I like to use to scan my network for unknown devices is [nmap](https://en.wikipedia.org/wiki/Nmap). It's super useful and been around for ages. Again, installtion is made a breeze with Homebrew by running the following command:

```
brew install nmap
```

### System About: neofetch

I really like this handy little tool. Displays system information while looking nice. What's not to like? You can actually see it in use in the [image](/Images/iTerm.png) at the top of this page!

### Fuzzy Search (aka [`fzf`](https://github.com/junegunn/fzf))

To be frank, this is a widely used tool that I haven't utilized too much... mainly due to being too lazy to learn a new command. Nevertheless I've heard of what it can do and plan to use it in the future.

```
brew install fzf
```

### Other Useful Terminal Applications

I have a bunch of fun and experiment terminal applications installed that I play around with. I've included that in another [document](Terminal%20Applications.md)!

## Open Source Media Tools

### Gimp

When developing applications, it is often useful to be able to modify images. GIMP may be the best free and open source tool to do that. It may not have all the bells and whistles of Adobe Photoshop, but it doesn't cost a penny and will get the job done.

```
brew install --cask gimp
```
### Inkscape

Inkscape is a vector editor similar to Adobe Illustrator except is is open source. I haven't needed it too much but could come in handy!

```
brew install --cask inkscape
```

### Audacity

Another useful tool is Audacity which deals with audio files. Be careful to download from the official website however. There was a time where a **fake** website was the top search instead of the official one. [Link to Official Site](https://www.audacityteam.org/)

### Blender

This tool is a unique one. It enables the user to create 3D models and even animate them. Pretty neat!

```
brew install --cask blender
```

Last time I tried using `Brew` however something went wrong... sigh. So I manually installed it from the [website](https://www.blender.org/).

### VLC

Finally, VLC is such a staple when it comes to open source software I just had to install it.

```
brew install --cask vlc
```

### A VLC Alternative: IINA

I truly love VLC for what it is. It is great when qeuing videos. I've definetely used it when cramming professor's lectures. The one thing it lacks however is polish. It feels very open source. Which is fine... just sometimes I want an application that feels native to macOS. This is when I found [IINA](https://iina.io/). This is an open source modern feeling video player with tons of capabilities. It reminds me of Quicktime. You can install it with:

```
brew install --cask iina
```

## Setup Terminal Emulator (`iTerm2`)

[iTerm2](https://iterm2.com/) is a great alternative to the default terminal that comes on Mac. It also has better color support and is my personal favorite emulator. I highly recommend. On top of that it was audited by Firefox!

```
brew install --cask iterm2
```

Next, you'll want to set up zsh which comes by default on newer Macs. To install if you don't have it, run the following command:

```
brew install zsh
```

If you want to setup brew completions in zsh then check out [https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh](https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh)

The next couple steps are optional but recommended if you want a fantastic looking terminal.

**Install [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh/):**

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Powerline Fonts

Some of the themes won't work unless you have a mono font. I recommend powerline fonts which you can clone and then run as follows:

```
git clone https://github.com/powerline/fonts.git
```

And run:

```
./install.sh
```

I personally like the `Hack` font. You can change the font in iTerm by going to `Preferences` (<kbd>⌘</kbd>+<kbd>,</kbd>) and chaning the `Text` attributes under `Profiles`.

### Plugins

Although there are many plugin managers out there for zsh, I have chosen just to use the default oh-my-zsh framework. There are two methods to do this as shown below.

#### Method 1

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

I have attached my .zshrc configuration to this repository in [Files](/Files).

#### Method 2

*These two plugins can also be installed using Homebrew or git in another folder. To add these to zsh you'd want to add the following lines to your .zshrc configuration file replacing the path*

##### Zsh-Autosuggestions

```
brew install zsh-autosuggestions
```

##### Zsh-Syntax-Highlighting

```
brew install zsh-syntax-highlighting
```

**Add sources to `.zshrc`**

```
source [path]/zsh-syntax-highlighting.zsh
source [path]/zsh-autosuggestions.zsh
```

### Fix common error by adding to `.zshrc`

I got some complaints when I first set this all up. Below are some fixes to those problems. Plus I also include how to add `brew` completions to `zsh`.

```
ZSH_DISABLE_COMPFIX="true"
```

You'll want to add `brew` completions as well by adding the following:

```
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
```

Run `chmod -R go-w "$(brew --prefix)/share"` if you get an error about insecure directories.

Finally you will want to change the theme and perhaps add some aliases. Take a look at my script.

## Github Development

I think the reocurring theme you can take away from programmers is that we are lazy. Why make something that already exists. There are a two commandline tools that come to mind: [git](https://git-scm.com/) and [gh](https://cli.github.com/). What's the difference? Take a look at [*What is the difference between git and Github CLI or gh?*](https://stackoverflow.com/questions/64763225/what-is-the-difference-between-git-and-github-cli-or-gh) I think you'll find it enlightening.

To be frank, I have only really used git. I don't have the time to learn the official Github CLI (maybe one day though 🤔). To make my life even easier, I just use the [Github Desktop](https://desktop.github.com/) application. There are other that are more advanced but I haven't needed them yet.

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

![Microsoft Visual Studio Settings](/Images/Microsoft%20Visual%20Studio%20Settings.png)

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

#### Plugins

VSCode has tons of useful plugins. Their usefulness will vary depending on your use case. I find it helpful to google what others have used depending on what you are developing.

Here are a couple guides on setting up VSCode to look nice:

- [A Guide to Beautifying Visual Studio Code](https://medium.com/@bretcameron/the-2019-guide-to-beautifying-visual-studio-code-32470910fc5b)
- [Making Visual Studio Code Better 🔥✨🛠](https://levelup.gitconnected.com/making-visual-studio-code-better-e72105809bf2)

These are the extensions I use:

- Prettier -> makes code look nice
- Beautify -> like Prettier but for HTML
- Bracket Pair Colorizer 2 -> helps with seeing paired brackets
- Github Theme -> nice theme
- Material Icons -> pretty sweet icon pack
- Python
- Pylance
- C/C++
- Arduino
- Jupyter
- Live Share -> super useful for real time collab
- Github Pull Requests -> good for github integration
- Markdown All in One -> amazing markdown extension
- Markdown Preview Enhanced -> better markdown preview (don't use the one from Microsoft! I found it glitchy)
- markdownlint
- docs-markdown -> some markdown shortcuts cause I'm lazy
- docs-linting -> you don't need this... I installed it and then realized it messed up my other linter (why Micrsoft? Why?). Too lazy to debug removing it so I left it installed. Works nicely with `markdownlint`.

I tried the `Docs Authoring Pack` extension by Microsoft. It's essentially a pack of extensions to help with Markdown. The included previewer was glitchy so tried to remove. Tons of glitches removing! Huge pain! Got stuck in a dependancy loop... oh the joys. Finally removed and kept linter as explained above.

### Vim Setup

Something you're bound to be exposed to as you do development is Vim. Although it isn't my go to editor, it is super handy to know how to use. I'd recommend the following guide on using Vim: [Guide](https://danielmiessler.com/study/vim/)

**Make sure you have the most recent version of Vim**

```
brew install vim
```

#### Setting up the `.vimrc` file

The `.vimrc` file is found in your `Home` directory. It's possible to use Vim without modifying anything. I personally used the following guides to create my own personal setup:


> [https://github.com/romainl/idiomatic-vimrc](https://github.com/romainl/idiomatic-vimrc)
> [https://github.com/amix/vimrc](https://github.com/amix/vimrc)


## Useful Virtualization Tools

If you ever have to containerize applications or test things out, I'd recommend the following two pieces of software:

1. Docker
2. VMware Fusion

I used to recommend Virtualbox by Oracle for OS virtualization, however with the update to Big Sur I encountered a bunch of issues getting it installed. In addtion I found the software not optimized for mac and getting the Guest Additions setup was a pain. VMware has been in the hypervisor business for ages and VMware fusion is their specific Mac version of their VMware workstation. Not only does it run so much faster than Virtualbox, it is so much easier to setup. They do have a premium version of their software, but just of September 2020, they made the lower tier free for noncommercial use. 

Both of Docker and Vmware Fusion are useful in their own way and I'd recommend reading their wikis to see if they'd be useful to you.

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

To get more info about Alfred see [Alfred.md](/Alfred.md)

**To be Added**
*Still in the works*

## Mac Keyboard Home and End Buttons

An annoying problem in macOS is that the Home and End buttons don't work as expected. A solution to this is provided on [Apple Stack Exchange](https://apple.stackexchange.com/questions/16135/remap-home-and-end-to-beginning-and-end-of-line). You can find my file in [Files](/Files)

## Python Packges

I think I will be moving this to a second of its own. 
