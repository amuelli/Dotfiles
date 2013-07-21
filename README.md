# Dotfiles

## Description
This is basically a backup of my bash, vim, git and some other configs. So far my .vimrc file has been a mess and I will now try to reduce it to the settings I really need and add some nice commenting.
## Install
To install clone this repository and create the following symbolic links:

    ln -s Dotfiles ~/.config
    ln -s Dotfiles/bash/bashrc ~/.bashrc
    ln -s Dotfiles/zsh/zshrc ~/.zshrc
    ln -s Dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh
    ln -s Dotfiles/vim-files/vim ~/.vim
    ln -s Dotfiles/vim-files/vimrc ~/.vimrc
    ln -s Dotfiles/git/gitconfig ~/.gitconfig

## VIM Plugins 
For easy handeling of vim plugins I use [Vundle] (https://github.com/gmarik/vundle). It is already integrated in the repo as a submodule. To install we have to init and update the submodule:

    cd Dotfiles
    git submodule init
    git submodule update

The listed bundles in the vimrc file can now be installed to vim/bundle by opening vim and execute the *:BundleInstall* command.

## Update submodules
To update the submodules (vundle and oh-my-zsh):
    git submodule foreach git pull origin master
