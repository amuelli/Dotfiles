# Dotfiles
## Description
This is a backup of my zsh, vim, git and some other configs.
## Install
To install clone this repository and create the following symbolic links:

    ln -s Dotfiles ~/.config
    ln -s Dotfiles/bash/bash_profile ~/.bash_profile
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

The listed bundles in the vimrc file can now be installed to vim/bundle by opening vim and executing the *:PluginInstall* command.

## Update submodules
To update the submodules (vundle and oh-my-zsh):

    git submodule foreach git pull origin master

