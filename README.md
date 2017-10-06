# dotfiles
Install:

brew https://brew.sh/index_ru.html
```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

fonts https://github.com/powerline/fonts/

vim plug https://github.com/junegunn/vim-plug
```curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```


neo vim https://github.com/neovim/neovim/wiki/Installing-Neovim
```brew install neovim```

mkdir .config/nvim/init.vim

```bash
   set runtimepath^=~/.vim runtimepath+=~/.vim/after
   let &packpath = &runtimepath
   source ~/.vimrc```

Add links in ~/


ln -s  ./Documents/dotfiles/.vimrc .vimrc

ln -s ./Documents/dotfiles/.nvimrc .nvimrc

ln -s ./Documents/dotfiles/.zshrc .zshrc

ln -s ./Documents/dotfiles/.gitignore .gitignore

ln -s ./Documents/dotfiles/.gitignore_global .gitignore_global

ln -s ./Documents/dotfiles/.editorconfig .editorconfig

ln -s ./Documents/dotfiles/.ctags .ctags

ln -s ./Documents/dotfiles/.flowconfig .flowconfig

ln -s ./Documents/dotfiles/libdefs.js libdefs.js
