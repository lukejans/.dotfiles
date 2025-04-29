# My MacOS Setup

> Warning: Run this script at your own risk!

## Install

Running the below command in your terminal will execute the [setup.sh](./setup.sh) install script. 

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lukejans/dotfiles/main/setup.sh)"
```

This script will confirm you want to proceed with the install before doing anything. If you confirm it will attempt to download and install/upgrade the following:

- 🛠️ Xcode command line tools
- 🍺 Homebrew & programs listed inside of [Brewfile](./Brewfile)
- 😊 This repo to `$HOME/.dotfiles`
- 🔗 Symlink config files to `$HOME` and `$HOME/.config`
- 🌱 Setup a Node.js environment (v22.xx.x), (`nvm`, `pnpm`)
- 📦 Install some npm packages
- ✨ Set some system settings
