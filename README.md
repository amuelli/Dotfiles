# Dotfiles

## Description
This is my backup of my bash, vim and git configs. So far my .vimrc file has been a mess and I will now try to reduce it to the settings I really need with nice commenting.
## Install
To install clone this repository and create the following symbolic links:
    ``` 
    $ ln -s Dotfiles/bash/bashrc ~/.bashrc
    $ ln -s Dotfiles/vim-files/vim ~/.vim
    $ ln -s Dotfiles/vim-files/vimrc ~/.vimrc
    $ ln -s Dotfiles/git/gitconfig ~/.gitconfig
    ```
## VIM Plugins 
For easy handeling of vim plugins I use of [vundle] (https://github.com/gmarik/vundle). The listed bundles in the vimrc file can be installed to vim/bundle with the *:BundleInstall* command.

