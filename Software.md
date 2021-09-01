# Software

Once the system is installed and basic setup is completed (see [HERE](/Basic%20Setup.md)), it is time to install some basic software that is essential for productivity and getting tasks done. The way I generally setup my mac is that all development or open source software is handled by package managers, while everything else is installed directly from the developer websites. Why might you do that one might ask? It comes down to security. I do banking and access other highly sensitive data while doing my work on say Google Chrome or MS Word. If there is a security bug with one of these pieces of software, I want the most up to date version I can get.

In addition, I generally only update Homebrew every two weeks. Now, you could argue that I could just set auto update up on Homebrew and that usually Chrome and MS Word is at the latest version within hours on brew. This would be true. But I still have the issue that these pieces of software are "smart." They auto update themself and this could break Homebrew updates to that package which would be a mess (I had an Homebrew software break once due to another issue and it was a pain). Again one could also counter argue this by saying that I should just disable auto update. The problem is that this isn't usually very easy to do, if downright impossible. As a result, for simplicity sake, I don't use Homebrew for everything.

## Content

- [Software](#software)
  - [Content](#content)
  - [Browser](#browser)
    - [Extensions](#extensions)
      - [Ad Blocker](#ad-blocker)
      - [1Password](#1password)
      - [Save it for Later](#save-it-for-later)
      - [Privacy](#privacy)
  - [Privacy](#privacy-1)
    - [Password Manager](#password-manager)
    - [2FA Authentication](#2fa-authentication)
    - [Malware Scanner](#malware-scanner)
  - [Productivity](#productivity)
    - [Reference Manager](#reference-manager)
    - [Kanban](#kanban)
    - [Spotlight Replacement](#spotlight-replacement)
    - [Microsoft Office](#microsoft-office)
  - [Entertainment](#entertainment)
    - [Spotify](#spotify)
    - [IINA (alt VLC)](#iina-alt-vlc)
    - [TV App](#tv-app)
  - [Utilities](#utilities)
    - [Keyboard Software](#keyboard-software)
    - [Bartender](#bartender)
    - [Magnet](#magnet)
    - [iStat Menus](#istat-menus)
    - [Adobe Acrobat Reader](#adobe-acrobat-reader)

## Browser

The very first thing I download on any computer is Google Chrome. Why? Well most of the websites I use (Zoom and Google) don't always work properly on Safari. Plus, my default extensions (which are open source) aren't available on Safari and I don't trust any of the smaller closed source projects (there is a long history of web browser extensions containing malware).

**The Move to Firefox**

I recently switched from **Google Chrome** to **Firefox**. I found that Chrome just wasn't integrating very well with **1Password**. I wasn't willing to go to Safari as I'd lose some key add-ons discussed below. I love Firefox! It is fast and the new update looks amazing! Combo that with a great theme and you're set.

### Extensions

I find certain extensions absolutely vital to my workflow. An ad blocker is one of them.

#### Ad Blocker

Ads are annoying and can be malicious. As a result I generally like to block these ads with a ad blocker. There are many sketchy ad blockers out there so it was hard deciding a safe one to use. I finally decides upon uBlock Origin which has a large community and is open source. In addition, it's been around for a long time and is super secure. Plus, it does so much more than just block ads. It also blocks pop ups, malicious redirects, and can even block java script. Be sure not to get it from a website. There is a fake one called ublock dot org. The actual software is hosted on github and can be downloaded through the Chrome extension store. The fake website also has a fake extension called ublock on the extension store. Be wary! It is a fraud! Only download uBlock Origin which has about 10M downloads.

#### 1Password

I discuss this below, but recently I switched to 1Password. The extension for Firefox is absolutely amazing. I haven't looked back since.

Note: *I used to have the Bitwarden extension installed*

#### Save it for Later

- **Zotero Connector** - super handy for saving files/webpages to Zotero
- **Instapaper** - great read-it-later service (could also use Pocket as built in integration with Firefox)
- **OneNote Web Clipper** - save articles to OneNote

#### Privacy

- Privacy Badger - fantastic tracker blocker
- HTTPS Everywhere - keep you safe on websites by forcing encryption
- ExpressVPN - for use on public networks

## Privacy

### Password Manager

Once Google Chrome is install, I want to be able to access all my passwords which are stored in a password manager. I personally use Bitwarden and haven't regretted it at all. It's open source and mostly free (unless you need some specific features). I tried LastPass which I felt was outdated, bloated, and has had way too many breaches for my liking. Another good one I've heard good things about is 1Password.

### 2FA Authentication

I like to always enable 2-factor authentication when I can. I used to use `Google Authenticator` but then switched to `Authy` as they have a desktop app which is useful.

### Malware Scanner

For detecting Malware, I use Malwarebytes. It was recommended to me by Apple Support as well as a local computer store. They have a free version which does everything you'll need except auto scan. Unless you want to pitch out $40 a year to autoscan, just get the free version. 



## Productivity

### Reference Manager

I am in university, and as such I need to use references in most of my essays. I use an open source piece of software called Zotero which is compadibly with Google Docs, Word, and Libre Office. In addition it has a Chrome and Firefox extension to save articles and websites to the manager.

### Kanban

For time management, I use a piece of software called Trello. You can just use the web version, but I also got the desktop version (they also have a phone app) from the macOS app store.

### Spotlight Replacement

Spotlight is great, but no where as powerful as Alfred. With Alfred, I can auto expand text and search custom set websites. Navigate directories and create custom workflows. I might add an entire article to this repository alone (see [here](/Alfred.md))

### Microsoft Office

Yes, you can use LibreOffice... but I don't because university requires specific features of excel. Plus you get 1 TB of free storage so I'm not complaining.

## Entertainment

### Spotify

I could use Apple Music, but I enjoy Spotify better. Hence I use this to listen to Music.

### IINA (alt VLC)

I mention this in the [Developer](/Developer.md/#open-source-media-tools) section, but IINA and VLC are two good video players.

### TV App

Apple has a pretty good TV app in which you can buy movies and tv shows. I like it and use it to buy media. 

## Utilities

### Keyboard Software

I use a logitech keyboard and as such I usually download Logitech Options. Not much to say here.

### Bartender

Once you've settled into using your Mac, the menu bar begins to get messy. You could simply remove icons but I find myself running into two problems. The first is that some icons I want to use only occationally. The second is that some menu bar items cannot be removed (cough cough OneDrive) and in addition add a new icon for every single account! The solution? Mac Bartender is a staple that's been around for a while. Super customizable. Essentially enables you to hide icons until you hover your mouse over it. Very useful!

### Magnet

Apple has done great at some things... but really bad in others. In my opinion, they handle window management fairly well until it comes to window snapping. For those that don't know, in Windows 10, when you drag your window to the edge of the screen, it can snap to either a half or full screen etc. MacOS lacks that feature and this is what Magnet does. It's the third most downloaded app in the app store and I believe it won an award from Apple for top innovators (don't quote me on it).

### iStat Menus

Having my CPU stats in the menu bar is something I miss from Linux. It's great. You can see if your CPU is being used. In addition has tons of cool features like fan control and weather stats.

### Adobe Acrobat Reader

I am not a huge fan of Adobe for their high subscription prices and clunky software. I will admit however it's helpful to have their PDF viewer installed. I usually just use the default Preview.

To be continued...