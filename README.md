# dotfiles

## General System Setup

## macOS

1. Install [homebrew](http://brew.sh/).

2. Install some standard utilities using `brew`. In particular the following
   packages are useful:

   `vim, zsh, tmux, ctags, wget, reattach-to-user-namespace`

3. `./install.sh` from this directory.

### zsh Setup

zsh is controlled primarily through the `.zshrc` file. To setup zsh on macOS:

1. `chsh -s $(which zsh)`

    This will prompt for a password and then change the login shell.

2. Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh).

### vim Setup

1. Install [pathogen.vim](https://github.com/tpope/vim-pathogen).
2. Install [solarized](https://github.com/altercation/vim-colors-solarized).
