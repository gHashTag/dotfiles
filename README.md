# dotfiles

Solarized color theme for OS X 10.7+ Terminal.app

https://github.com/tomislav/osx-terminal.app-colors-solarized

Clone and import Solarized Dark.terminal in preference terminal

Window: column: 215; row: 60


Install dependencies:

brew https://brew.sh/index_ru.html

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

iTerm for Mac https://gist.github.com/kevin-smets/8568070

`brew cask install iterm2`

`brew install node`

`brew install watchman`

`brew install yarn`

`npm install rnpm -g`

`brew cask install graphiql`

`npm install -g react-native-cli`

`sudo gem install cocoapods`


fonts https://github.com/powerline/fonts/

vim plug https://github.com/junegunn/vim-plug
```
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


neo vim https://github.com/neovim/neovim/wiki/Installing-Neovim

`brew install neovim`

mkdir .config/nvim/init.vim

```bash 
set runtimepath^=~/.vim 
runtimepath+=~/.vim/after 
let &packpath = &runtimepath source ~/.nvimrc
```

Add links in ~/

`ln -s  ./Documents/dotfiles/.vimrc .vimrc`

`ln -s ./Documents/dotfiles/.nvimrc .nvimrc`

`ln -s ./Documents/dotfiles/.zshrc .zshrc`

`ln -s ./Documents/dotfiles/.gitignore .gitignore`

`ln -s ./Documents/dotfiles/.gitignore_global .gitignore_global`

`ln -s ./Documents/dotfiles/.editorconfig .editorconfig`

`ln -s ./Documents/dotfiles/.ctags .ctags`

`ln -s ./Documents/dotfiles/.flowconfig .flowconfig`

`ln -s ./Documents/dotfiles/libdefs.js libdefs.js`

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

`sudo rm /usr/local/include/python3.6m/greenlet/greenlet.h`


Install react-native-debugger https://github.com/jhen0409/react-native-debugger

`brew update && brew cask install react-native-debugger`

Telegram `brew cask install telegram`
