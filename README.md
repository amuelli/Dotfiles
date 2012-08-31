# Dotfiles

## Description
This is my own repository of bash and vim configurations, inspired by <https://github.com/haridas/Dotfiles>. So far my .vimrc file has been a mess and I will now try to reduce it to the settings I really need with nice commenting.

## VIM
### Plugins
For easy handeling of plugins we make use of pathogen.vim which loads all plugins from the vim-files/vim/bundle directory. Plugins that are available as a git repository were added as submodules and can be updated easily:
> git submodule init  
> git pull

