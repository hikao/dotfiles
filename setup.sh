#!/bin/sh
# dotfileをhomeディレクトリにコピー
script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
echo $script_dir/
echo $HOME/
cp -f $script_dir/.vimrc $HOME/.vimrc
cp -f $script_dir/.bashrc $HOME/.bashrc
cp -f $script_dir/.tmux.conf $HOME/.tmux.conf

# NeoBundleのインストール
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
cd $HOME
source .bashrc
