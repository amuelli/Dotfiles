# Dotfiles
## Description
This is a backup of my zsh, vim, tmux, git and some other configs.
## Install
To install clone this repository and create the following symbolic links:

    ln -s Dotfiles ~/.config
    ln -s Dotfiles/bash/bash_profile ~/.bash_profile
    ln -s Dotfiles/bash/bashrc ~/.bashrc
    ln -s Dotfiles/zsh/zshrc ~/.zshrc
    ln -s Dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh
    ln -s Dotfiles/git/gitconfig ~/.gitconfig
    ln -s Dotfiles/vim-files/vim ~/.vim
    ln -s Dotfiles/vim-files/vimrc ~/.vimrc
    ln -s Dotfiles/tmux-files/tmux ~/.tmux
    ln -s Dotfiles/tmux-files/tmux.conf ~/.tmux.conf
    ln -s Dotfiles/bin ~/.bin

## VIM and Tmux Plugins 
For easy handeling of Vim plugins we use [Vundle] (https://github.com/gmarik/vundle). It is already integrated in the repo as a submodule. 

Plugins for Tmux can be installed with the [Tmux Plugin Manager] (https://github.com/tmux-plugins/tpm). It is also integrated in the repo as a submodule.

To install both we have to init and update these submodules:

    cd Dotfiles
    git submodule init
    git submodule update

The listed Vim plugins in the vimrc file can now be installed to vim/bundle by opening vim and executing the `:PluginInstall` command.

The listed Tmux plugins in the tmux.conf can be installed to tmux/plugins with `C-a I` in a running tmux-session. 

## Update submodules
To update the submodules (vundle, tpm and oh-my-zsh):

    git submodule foreach git pull origin master

