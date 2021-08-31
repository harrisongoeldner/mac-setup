# Ebook Management

The best way to manage your Ebooks is using a tool called [Calibre](https://calibre-ebook.com/). It is compatible with Kindle, Kobo, and a whole slu of other products. The reason it is so much more powerful that the default Kindle or Kobo desktop application is that it isn't locked into any ecosystem. You can convert any file format and even remove the DRMs (with the help of a plugin) from ebooks.

*Note: Removing DRMs is a illegal in some jurisdictions. In addition, the file that the DRM is removed from should never be used for piracy. Use this guide at your own risk.*

It is important to keep in mind that I use macOS and a Kindle. This guide can still be used for other scenarios, but some of the plugins I use are Kindle specific.

## Content

- [Ebook Management](#ebook-management)
  - [Content](#content)
  - [Installation](#installation)
  - [DeDRM](#dedrm)
  - [Plugins](#plugins)

## Installation 

Although Calibre can be installed using the link on the website, I prefer using a package manager. As I am on macOS, I prefer to use [Homebrew](https://brew.sh/). With Brew installed, this can be achieved by running:

> brew install --cask calibre

![Calibre Setup](/Images/Screen%20Shot%202021-08-02%20at%2010.37.35%20PM.png)

*Calibre once launched*

## DeDRM

Apprentice Alf has created a plugin called DeDRM_tools for Calibre to remove book DRMs. He has a wordpress blog that you can check out sometime. The plugin however is hosted on Github at the following link: https://github.com/apprenticeharper/DeDRM_tools

If you need help with installing plugins, I'd recommend you take a look at their [online guide](https://calibre-ebook.com/help). There are also countless guides online to help you with that. To use the plugin, check out: https://github.com/apprenticeharper/DeDRM_tools/wiki/Exactly-how-to-remove-DRM

## Plugins

There's a great guide on Reddit that goes over some basics you can setup: https://www.reddit.com/r/kindle/comments/3b7dzl/tutorial_how_to_use_calibre_to_manage_book/

```
[TUTORIAL] How to use calibre to manage book library and Kindle (or any E-Readers)
I haven't seen any Calibre tutorial, so today I'll share some knowledge to use the basic functions of Calibre in an organized way.

If you want to use Calibre right away, follow Setting up Calibre using Welcome Wizard and Using Calibre to manage books. Other sections are only intended for aesthetics problems and ease of using in the long run.

Requirement:

Calibre

Kindle

An Amazon and GMX account (If you want to use Send-to-Kindle to send document wirelessly to your Kindle)

A micro-USB cable

And a working internet connection.

.

Setting up Calibre using Welcome Wizard:

Create a new empty folder using your library's desired name

Launch Calibre and choose that folder.

Next, Choose your device. If you choose Kindle, go to step 4. If you choose other e-readers, go to step 6. If you don't want to set up Send-to-Kindle, go to step 6.

Go to Amazon's Manage Your Content and Devices, choose Settings, find Personal Document Settings. Take note of the Send-to-Kindle E-Mail (ending with @Kindle,com). Find Add a new approved e-mail address and type in your GMX email.

In the Next dialog on Calibre welcome wizard, type in your Kindle email. Press Use GMX and type in your GMX credentials.

Next, and you are done.

.

Setting up your Calibre:

Select Preferences

Choose Behavior, set Preferred output format to AZW3 (if you're using Kindle) or EPUB (if you're using other devices). The reason is that AZW3 and EPUB can make use of Calibre's Edit Book function. Apply.

Choose Add your own columns, press the "+" button. Setup the following:

Pages (For Count Pages plugin, to get page number on your books):

Lookup name: pages

Column heading: Pages

Column type: Integers.

Format for numbers: {0,}

Shelf (To manage your reading progress):

Lookup name: shelf

Column heading: Shelf

Column type: Text, column shown in the tag browser.

Choose Common Options, Look & Feel, set Embed font famlly to your preferred font. I choose Bookerly here. Note: I have no problem using Bookerly on the Kindle 7th Gen, but for the older generations, there might be some issues. The font will be in the Publisher's Font option on the Kindle.

Choose Saving books to disk, Copy and paste the following to the Save template: 1. Books/{author_sort}/{title}/{title} - {authors}

Choose Sending books to devices, Copy and paste the following to the Save template: 1. Books/{author_sort}/{title}/{title} - {authors}

Choose Metadata plugboards, Add new plugboard

Format: any format

Device: any device

Source template: {series:|| - }{series_index:0>5.2f|[|] - }{title}

This will save your books like this: Harry Potter - [01.00] - Harry Potter and the Sorcerer's Stone if your book is in a series, or Oliver Twist if your book isn't.

You can look here for more options

Destination field: title

Choose Plugins, find Kindle 2/3/4/Touch/PaperWhite/Voyage Device Interface, set:

Save templates: 1. Books/{author_sort}/{title}/{title} - {authors}

Custom column name to retrieve page counts from: #pages

Disable Overwrite existing apnx on device

Close, and restart Calibre

.

Adding plug-ins to power-up your Calibre:

Select Preferences, choose Plugins

Choose Get new plugins

Find and install Goodreads and Count Pages

Find Count Pages plugin, double click, under Page count options, choose Custom column: #pages. Leave the others blank.

Notes: This only gives you a rough estimation of the books. If you want a more accurate version, use Amazon books, or use the built-in Download page counts from Goodreads

Apply.

Go to Metadata download, and choose Goodreads

Apply, and Restart Calibre.

.

Using Calibre to manage books:

Add books: You can Drag-and-drop the ebook files to Calibre, or use the Add books function.

Edit metadata: You can type in your books' metadata manually, or download the data using Download metadata buttons. Calibre will automatically search book's data and you can choose the matching title.

Convert books: When sending to Kindle, Calibre'll automatically convert your books to Kindle readable formats, but it won't store the file locally. You can convert individually, or bulk convert to save the metadata directly to your books

If you connect Kindle to Calibre, Calibre will automatically find books on your Kindle. To send books to your Kindle, press Send to device.

Fetch news: You can choose your favorite news source from the menu, Press Schedule for download, choose days to download, and Save. Calibre will automatically download News IF IT IS RUNNING and send to your Kindle if you already set up Send-to-Kindle account.

There you go. Now you're ready to use Calibre like a pro. If you have any problems, feel free to contact me.
```

Some other plugins you can install are:

- EpubMerge - merges epubs
- EpubSplit - splits epubs
- FanFicFare - download fan fiction

- KFX Input - convert amazon kfx to epub or mobi
- KFX Output - convert mobi or epub to amazon kfx

- Count Pages - count pages in book
- Extract ISBN - find ISBN listed in book and add as attribute
- Fantastic Fiction - add [Fantastic Fiction](https://www.fantasticfiction.com/) as source for metadata
- Favourites Menu - hides extra menu options in pop down to clean up Calibre
- Find Duplicates - finds duplicates in library
- Generate Cover - generates customizable covers for ebooks
- Goodreads add [https://www.goodreads.com/](https://www.goodreads.com/) as source for metadata download
- Manage Series - easy way to order series of ebooks
- Modify ePub - quick method of modifying many common attributes of ebooks
- Quality Check
- Reading List
- Search The Internet

Some others you can check out:

- Resize Cover
- Quick Preferences
- Annotations
- Overdrive Link
- View Manager