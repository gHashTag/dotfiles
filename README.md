# dotfiles

Solarized color theme for OS X 10.7+ Terminal.app

https://github.com/tomislav/osx-terminal.app-colors-solarized

Clone and import Solarized Dark.terminal in preference terminal

`git clone https://github.com/gHashTag/dotfiles.git`

OhMyZsh!

`curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh`

Тема powerlevel9k

`git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`

Window: column: 215; row: 60


Install dependencies:

brew https://brew.sh/index_ru.html

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

`brew tap caskroom/fonts`

`brew cask install font-hack-nerd-font`

`cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf`

select Font in terminal 12 Droid Sans Mono Nerd Complete



`brew install node watchman yarn antigen wget gifify neovim`

`brew cask install graphiql java android-studio`

`npm install -g react-native-cli nodemon`

`sudo gem install cocoapods`

fonts https://github.com/powerline/fonts/

vim plug https://github.com/junegunn/vim-plug
```
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

neo vim https://github.com/neovim/neovim/wiki/Installing-Neovim

mkdir .config/nvim/init.vim

```bash 
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.nvimrc
```

Add links in ~/

`ln -s  ./dotfiles/.vimrc .vimrc`

`ln -s ./dotfiles/.nvimrc .nvimrc`

`ln -s ./dotfiles/.prettierrc .prettierrc`

`ln -s ./dotfiles/.zshrc .zshrc`

`ln -s ./dotfiles/.gitignore .gitignore`

`ln -s ./dotfiles/.gitconfig .gitconfig`

`ln -s ./dotfiles/.gitignore_global .gitignore_global`

`ln -s ./dotfiles/.editorconfig .editorconfig`

`ln -s ./dotfiles/.ctags .ctags`

`ln -s ./dotfiles/.eslintrc .eslintrc`

`ln -s ./dotfiles/.flowconfig .flowconfig`

`ln -s ./dotfiles/libdefs.js libdefs.js`

Install Python 2 && 3

`brew install python`

`brew install python3`

`sudo pip2 install --upgrade neovim`

`pip2 install --user --upgrade neovim`

`sudo pip3 install --upgrade neovim`

`pip3 install --user --upgrade neovim`

`brew doctor`
if:

```Warning: Unbrewed header files were found in /usr/local/include.
If you didn't put them there on purpose they could cause problems when
building Homebrew formulae, and may need to be deleted.

Unexpected header files:
  /usr/local/include/python2.7/greenlet/greenlet.h
  /usr/local/include/python3.6m/greenlet/greenlet.h
``` 

`sudo rm /usr/local/include/python2.7/greenlet/greenlet.h`

`sudo rm /usr/local/include/python3.7m/greenlet/greenlet.h`


Install react-native-debugger https://github.com/jhen0409/react-native-debugger

`brew update && brew cask install react-native-debugger`

Telegram:

`brew cask install telegram`
