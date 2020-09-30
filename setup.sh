#!/bin/sh

PROJECTS_DIR=${HOME}/Code

# setup folder structure
mkdir ${PROJECTS_DIR}
mkdir ${HOME}/Zero31
mkdir ${HOME}/CasaMineira
mkdir ${HOME}/Freelancer

# brew setup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade --all


# Apps
brew install composer
brew install docker
brew install node
brew install php-cs-fixer
brew install zsh


# OSX native apps
brew cask install 1password
brew cask install alfred
brew cask install alt-c
brew cask install caffeine
brew cask install discord
brew cask install dropbox
brew cask install evernote
brew cask install firefox-developer-edition
brew cask install gifox
brew cask install google-chrome
brew cask install harvest
brew cask install iterm2
brew cask install keka
brew cask install phpstorm
brew cask install sequel-ace
brew cask install skitch
brew cask install slack
brew cask install spotify
brew cask install telegram
brew cask install tinkerwell
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install whatsapp

# Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# NPM
npm install -g @bchatard/alfred-jetbrains


# :: Missing apps
# Airmail Beta
# BetterSnapTool
# Captured
# TotalFinder
# Transmit
# Memory Clean 2
# Powerline Font


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/jerguslejko/zsh-symfony-completion.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/symfony-console

autoload -U compinit && compinit
