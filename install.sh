#!/bin/zsh

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/aspirewit/zsh-nvm-auto-switch ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm-auto-switch

git clone --depth=1 git@github.com:reatlat/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

cat brew.txt | xargs brew install

nvm install 18
nvm use 18

stow bash
stow zsh
stow git
stow husky

cat brew-cask.txt | xargs brew install --cask

cat npm.txt | xargs npm install -g
