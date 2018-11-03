# Personal dotfiles for macOS setups

## Features

* ZSH with oh-my-zsh and a few plugins
  * Shortcuts
    * Alt+Left: popd
    * Alt+Right: pushd
    * Alt+Up: cd ..
    * Alt+Option+Up: Visit last directory (recorded via cd)
    * Alt+Option+Down: Visit last git repository
    * Alt+Option+Left: Jump word to the left
    * Alt+Option+Right: Jump word to the right
* Few aliases and functions
* vim with vim-plug and auto installer as default editor
* Useful nano setup

## Setup

### Setup rcm

```bash
brew tap thoughtbot/formulae
brew install rcm
mkdir -p ~/.dotfiles
```

### Clone repository

`git clone https://github.com/NicoSiebler/dotfiles.git ~/.dotfiles/tag-dotfiles`

### Backup your files

I'm not responsible for any loss.

### Apply dotfiles for the first time
`rcup -d .dotfiles -t dotfiles -x "README*.md README LICENSE LICENSE.md"`

## Overriding files

### Manual files

Add your own overrides as .local to be included:

* .gitconfig.local
* .bashrc.local
* .my.cnf.local
* .zshrc/*.rc.local (overriding each original file)
* .zshrc.local (added at last)
* .tmux.conf.local
* .vimrc.local

### Add a new managed dotfile

You can also setup these via local dotfiles:
`mkrc -d .dotfiles-local -t dotfiles $myfile`

An issue of the following command will include the `.dotfiles-local` directory in the setup. They get precedence over `.dotfiles` files:

`rcup -t dotfiles`

## TODO

* Brew Installer
* Setup command
