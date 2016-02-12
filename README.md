# Dotfiles
## Description
This is a backup of my zsh, vim, tmux, git and some other configs.
## Install
The settings can be installed by cloning this repository and running `./install` inside this directory.
[Dotbot](https://github.com/anishathalye/dotbot) will install all submodules and create the necessary symbolic links as specified in `install.conf.yaml`.

## VIM and Tmux Plugins 
For easy handeling of Vim plugins we use [Vundle](https://github.com/gmarik/vundle). It is already integrated in the repo as a submodule. 

Plugins for Tmux can be installed with the [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm). It is also integrated in the repo as a submodule.

### Install
The listed Vim plugins in the vimrc file can now be installed to vim/bundle by opening vim and executing the `:PluginInstall` command.

The listed Tmux plugins in the tmux.conf can be installed to tmux/plugins with `C-a I` in a running tmux-session. 

### Update
The installed Vim plugins in the vimrc file can be updated by opening vim and executing the `:PluginUpdate` command.

The installed Tmux plugins can be updated  with `C-a U` in a running tmux-session. 

## Update submodules
To update the submodules (vundle, tpm and oh-my-zsh) run `./update` or:

    git submodule update --init --remote
