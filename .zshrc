#If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
DEFAULT_USER="$USER"
bindkey -v
bindkey jk vi-cmd-mode

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=/usr/local/bin:$PATH
export ANDROID_SDK=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export NODE_ENV=development
export BABEL_ENV=$NODE_ENV
export KEYTIMEOUT=15
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround
# sets up vimmish text-objects in zsh
autoload -U is-at-least
if is-at-least 5.0.8; then
    autoload -U select-quoted; zle -N select-quoted
    for m in visual viopp; do
        for c in {a,i}{\',\",\`}; do
            bindkey -M $m $c select-quoted
        done
    done
    autoload -U select-bracketed; zle -N select-bracketed
    for m in visual viopp; do
        for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
            bindkey -M $m $c select-bracketed
        done
    done
  fi

#source /usr/local/share/antigen/antigen.zsh

#antigen use oh-my-zsh
#antigen use hlissner/zsh-autopair

#antigen apply

alias n="nvim"
alias ss="python quickstart.py"
alias playra="ssh 'playra@194.58.104.187'"
alias reinstall="rm -rf node_modules/ && yarn cache clean && yarn install"
alias es6="yarn add -D babel-cli babel-plugin-transform-object-rest-spread babel-preset-env"

plugins=(react-native vi-mode git npm node heroku yarn)

alias reduxinit="npm i -S redux react-redux redux-thunk eslint-plugin-react firebase lodash prop-types react-native-fetch-blob react-native-image-picker redux-devtools-extension babel-jest babel-preset-react-native react-native-svg react-navigation react-test-renderer axios qs"
alias rni="react-native init"
alias video="xcrun simctl io booted recordVideo /Users/playra/Desktop/video.m4v"
alias ios="react-native run-ios --simulator='iPhone SE'"
alias iosx="react-native run-ios --simulator='iPhone X'"
alias and="yarn start-android"
alias anddevice="react-native run-android --variant=release"
alias emu="emulator @Pixel_2_API_26"
alias s="react-native start -- --reset-cache"
alias nvimrc='vim ~/dotfiles/.nvimrc'
alias vimrc='nvim ~/dotfiles/.vimrc'
alias zshrc='nvim ~/dotfiles/.zshrc'
alias ctags='nvim ~/dotfiles/.ctags'
alias tg='cd && cd Applications/tg && bin/telegram-cli -W'
alias ..='cd ..'
alias rdir='mkdir -p src/{components,actions,screens,helpers,reducers}'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/[NORMAL]}/(main|viins)/[INSERT]}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/playra/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/playra/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
