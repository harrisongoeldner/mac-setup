# Uninstall Software on your Mac

Plenty of people are going to tell you than you need some magical uninstaller to remove programs on your Mac. The problem is most of these programs contain PUPs and malware... the exact opposite of what they advertise as!

I wrote the following answer to a question on Super User in which I explain my process of uninstalling an app from macOS. In this example I talk about `Iterm2`. Keep in mind that this set of steps can be applied anywhere (and yes they spelled "from" wrong 🙄)

> [How to uninstall iTerm form the mac?](https://superuser.com/questions/1596965/how-to-uninstall-iterm-form-the-mac/1671308#1671308)

I've pasted my reply below:


> You need to provide more information on your issue. As [Tetsujin](https://superuser.com/users/347380/tetsujin) linked, you can simply go to `/Applications` and move the `iTerm` app to the trash (see [HERE](https://stackoverflow.com/questions/32483710/how-to-uninstall-iterm2)). This is how you uninstall all macOS applications (unless you are using Homebrew). Any internet search can show you this step by step.
> 
> Now, I am guessing that you want to also uninstall all the hidden files that `iTerm` creates on your computer. I would recommend taking a look at this [tread](https://discussions.apple.com/thread/8483999) which shows some other hidden file locations:
>
>```
>    caches files in ~Library/Caches
>    preferences files in ~Library/Preferences
>    log files in ~Library/Logs
>    Other files in
>        ~Library/Containers
>        ~Library/Cookies
>        ~Library/Address Book Plug-Ins
>        ~Library/Saved Application State
>        ~private/var/db/BootCaches
>```
>
>You could manually delete iTerm's folders within these one at a time. Just be sure not to accidentally delete anything important to another application.
>
>Now, you mentioned that you didn't install using Homebrew. I think you can still uninstall an application with Homebrew even if you didn't use Homebrew to install it. Usually using Brew you could just run:
>
>```
>brew uninstall --force iterm
>```
>
>You can add `--zap` to get rid of hidden files in the `~/Library` folder:
>
>```
>brew uninstall --force --zap iterm
>```
>
>If you don't have Homebrew, you can always go to the [website](https://brew.sh/). Search `iTerm` and select [`cask code`](https://github.com/Homebrew/homebrew-cask/blob/HEAD/Casks/iterm2.rb). Then delete the files under zap trash from your computer after you've moved the iTerm application to the trash.
>
>```
>zap trash: [
>    "~/Library/Application Support/iTerm",
>    "~/Library/Application Support/iTerm2",
>    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
>    "~/Library/Caches/com.googlecode.iterm2",
>    "~/Library/Cookies/com.googlecode.iterm2.binarycookies",
>    "~/Library/Preferences/com.googlecode.iterm2.plist",
>    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
>  ]
>```

