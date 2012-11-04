# Dotfiles

## Description
This is basically a backup of my bash, vim and git configs. So far my .vimrc file has been a mess and I will now try to reduce it to the settings I really need and add some nice commenting.
## Install
To install clone this repository and create the following symbolic links:

    $ ln -s Dotfiles/bash/bashrc ~/.bashrc
    $ ln -s Dotfiles/vim-files/vim ~/.vim
    $ ln -s Dotfiles/vim-files/vimrc ~/.vimrc
    $ ln -s Dotfiles/git/gitconfig ~/.gitconfig

## VIM Plugins 
For easy handeling of vim plugins I use [Vundle] (https://github.com/gmarik/vundle). The listed bundles in the vimrc file can be installed to vim/bundle with the *:BundleInstall* command.
