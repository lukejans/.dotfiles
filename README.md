# Dotfiles

> My MacOS setup

## Install

Running the below command in your terminal will execute the [setup.sh](./setup.sh) install script.

```sh
curl -fsSL https://raw.githubusercontent.com/lukejans/dotfiles/main/setup.sh | bash
```

This script will confirm you want to proceed with the install before doing anything. If you confirm it will attempt to do the following:

- 🛠️ Install Xcode command line tools
- 🍺 Install Homebrew & programs listed inside of [Brewfile](./Brewfile)
- 😊 Download This repo to `$HOME/.dotfiles`
- 🔗 Symlink config files to `$HOME` and `$HOME/.config`
- 🌱 Setup a Node.js environment (v22.xx.x), (`nvm`, `pnpm`)
- 📦 Install some npm packages
- ✨ Set some MacOS system settings

## ⚠️ Warnings

> **Run at your own risk! I do not take responsibility for any data loss or other issues related to using this install script.**

- Use only on apple silicon Macs as I have not added checks for different homebrew paths.
- I create backups of configurations this script replaces but in some cases an old `.config.bak` may end up in `~/.Trash`
- `setup.sh` was written for the latest version of MacOS and may or may not work on earlier versions.
