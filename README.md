# dotfiles

`git clone https://github.com/gHashTag/dotfiles.git`

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

`npm install -g eslint`

`npm install -g eslint-plugin-react`

`npm install -g gitbook-cli`

`sudo gem install cocoapods`

`brew cask install android-studio`

`brew cask install java`

`brew install gifify`

`brew cask install bluestacks`

`npm install -g code-push-cli`


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
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.nvimrc
```

Add links in ~/

`ln -s  ./dotfiles/.vimrc .vimrc`

`ln -s ./dotfiles/.nvimrc .nvimrc`

`ln -s ./dotfiles/.zshrc .zshrc`

`ln -s ./dotfiles/.gitignore .gitignore`

`ln -s ./dotfiles/.gitconfig .gitconfig`

`ln -s ./dotfiles/.gitignore_global .gitignore_global`

`ln -s ./dotfiles/.editorconfig .editorconfig`

`ln -s ./dotfiles/.ctags .ctags`

`ln -s ./dotfiles/.eslint .eslint`

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

`sudo rm /usr/local/include/python3.6m/greenlet/greenlet.h`


Install react-native-debugger https://github.com/jhen0409/react-native-debugger

`brew update && brew cask install react-native-debugger`

Telegram:

`brew cask install telegram`
