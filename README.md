# Richard's Mac OS Development Environment

After formatting my laptop one too many times I have created a very basic development environment setup. Making automated install scripts seems to be more of a hassle than a time saver so I just got this quick documentation here


Features:
- 🖥 zsh + oh my zsh
- 🚀 Starship as a fancy $PS1 
- 🍺 Basic Brew packages so I don't have to install it all again
- ✨ GNU > Mac OS (BSD) default utils (amazing portability)
-  Sane Mac OS defaults


# After wiping your macbook

## Update OS
System Settings -> Software Update

## Install MacOS Command Line tools
```sh
sudo xcode-select --install
```

## Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install some homebrew packages
This will install the packages in the [BrewFile](./BrewFile)
```sh
brew bundle
```

## Install Oh My Zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Run this dangerous script which changes OSX settings
But get cool stuff like being able to sudo with 💅 TOUCH ID 💅
```sh
./mac-os-defaults.sh
```

## Fix iTerm2
### Import the Snazzy Theme for relaxed colours
Go to iTerm2's settings -> profiles -> colours -> colour presets -> import and select [this file](./Snazzy.itermcolors)

### Import the iTerm settings
Go to iTerm2's settings -> general -> preferences -> load from file -> select [this bad boy](./com.googlecode.iterm2.plist)

## Toss in the .zshrc
Modify the [zsh config](./zshrc) or not and toss it in the home directory


## Done
You shall now not have some matrix colour theme but rather some soothing colours to look at while you hack away.


