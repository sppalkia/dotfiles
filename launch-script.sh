# Source this file to use it!
# 
# source launch-script.sh
#
# This script is specifically for Ubuntu 18.04 (Bionic).

# Basics
sudo apt-get install build-essential zlib1g-dev git gcc g++ wget curl htop cmake python-dev python3-dev mosh

# Install Clang/LLVM 6.0 for Weld
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main"
sudo apt-get update
sudo apt-get install llvm-6.0-dev clang-6.0

# Install Latest Rust
curl https://sh.rustup.rs -sSf | sh

# For remaining installation, make sure Rust can be found.
export PATH=$HOME/.cargo/bin:$HOME/.bin:$PATH

# -------------------------------
# Vim configuration
# -------------------------------

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim Packages
cd ~/.vim/bundle

# Rust
git clone https://github.com/rust-lang/rust.vim.git

# YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --rust-completer

# Solarized
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# Ctrl+P Search
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# NERD Tree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Install vimrc
wget https://raw.githubusercontent.com/sppalkia/dotfiles/master/ec2/vim/vimrc -O ~/.vimrc

# -------------------------------
# tmux configuration
# -------------------------------

sudo apt-get install tmux
mkdir .tmux
wget https://raw.githubusercontent.com/sppalkia/dotfiles/master/ec2/tmux/tmux.conf -O ~/.tmux.conf
wget https://raw.githubusercontent.com/sppalkia/dotfiles/master/ec2/tmux/yank.sh -O ~/.tmux/yank.sh


# -------------------------------
# shell configuration
# -------------------------------

sudo apt-get install zsh
sudo chsh -s $(which zsh) $(whoami)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget https://raw.githubusercontent.com/sppalkia/dotfiles/master/ec2/zsh/zshrc -O ~/.zshrc
