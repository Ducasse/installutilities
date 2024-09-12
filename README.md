# Installation facilities for macOS

---

This repository is based on *brandonb927*'s [dotfiles](https://github.com/brandonb927/dotfiles) and their customisation for my usage. 



### Usage 

Clone the repository and run the main files `bootstrap.sh` for utilities and app installations or `macos.sh` for macOS customisation.

```bash
$ git clone git@github.com:Ducasse/installutilities.git
$ cd install_utilities
$ sh bootstrap.sh
$ sh macos.sh
```

### Dive in

This part consists of an explanation of the contents of the main scripts for the installation and customisation.

1. **`bootstrap.sh`**

The different components run by `bootstrap.sh` are the following:

***The first two are mandatory***

- `brew.sh`: Install `homebrew`
- `oh-my-zsh.sh`: Install `zsh` and some plugins (`oh-my-zsh-plugins.sh`)

***The next ones are asked to be confirmed by the user***

- `mas.sh`: Install mac apps from the *App Store*.
- `brew-utilities.sh`: Command line utilities from `homebrew`.
- `brew-cask.sh`: Applications that can be installed directly from `homebrew cask`.
- `ruby.sh`: Ruby working environment.
- `python.sh`: Python working environment.
- `go.sh`: Go working environment.
- `node.sh` and `npm.sh`: Nodejs working environment. 
- `git.sh`: Git global configuration. **PLEASE USE YOUR OWN NAME AND EMAIL!**
- `fonts.sh`: Classic fonts.

2.  `macos.sh`

If you plan on using this script, I ***REALLY*** encourage you to have a look at what would be changed and modified according to the script. Sections in the script are split and labelled, each one of the actions is detailed in the comment before each line, ***PLEASE READ IT***. The section are the following:

- General UI/UX configuration
- SSD tweaks
- Trackpad, accessories and inputs
- Screen
- *Finder*
- *Dock*, *Dashboard* and *Menu bar*
- *Safari* & *Webkit*
- *Mail*
- *Spotlight*
- *Terminal* & *iTerm2*
- *Time Machine*
- *Activity Monitor*
- *TextEdit* & *DiskUtility*
- *App Store*
- *Photos*
- *Messages*
- *Google Chrome*
- *Transmission*

