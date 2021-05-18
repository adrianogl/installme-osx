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
brew install --cask 1password
brew install --cask alfred
brew install --cask alt-c
brew install --cask caffeine
brew install --cask discord
brew install --cask dropbox
brew install --cask evernote
brew install --cask gifox
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask keka
brew install --cask phpstorm
brew install --cask skitch
brew install --cask slack
brew install --cask spotify
brew install --cask telegram
brew install --cask tinkerwell
brew install --cask vagrant
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask whatsapp

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
