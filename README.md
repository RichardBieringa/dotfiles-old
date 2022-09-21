# Richard's Dotfiles

My configuration files for the tools that I use such as nvim.

Depends on [GNU make](https://www.gnu.org/software/make/) and [GNU stow](https://www.gnu.org/software/stow/).


### Features:
- 🖥 zsh + oh my zsh
- 🚀 Starship as a fancy $PS1 
- 🍺 Basic Brew packages so I don't have to install it all again
- ✨ GNU > Mac OS (BSD) default utils
- 🍎 Sane Mac OS defaults
- 👑 yabai window manager configuration


### Usage 

To copy all the dotfiles to the home directory execute the following command:

```sh
make stow
```

### MacOS specific steps

There are some additional settings to change for my MacOS setup:
- Set up sane MacOS defaults
- Install Oh My Zsh
- Install brew package manager, and a list of packages


**Note:** Requires elevated privileges for setting MacOS defaults

```sh
sudo make macos


# only installs brew and brew packages
make brew
```
