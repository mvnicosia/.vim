# history
export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND}"'echo $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'
export HISTSIZE=2147483647

# colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# useful MacOS commands
alias unfuck_menu='killall -KILL SystemUIServer'
alias unfuck_trackpad='killall Dock'
alias unfuck_finder='killall Finder'
alias show_dotfiles_in_finder='defaults write com.apple.finder AppleShowAllFiles YES'

# source
export MVNICOSIA=$HOME/mvnicosia
export HOST_SRC=$HOME/rax
export AUTOHOST=$HOST_SRC/Autohost
export DCX=$HOST_SRC/dcx

# git 
export GREP_OPTIONS='--exclude-dir=.git'
source $MVNICOSIA/dotfiles/gitconfig/git-prompt.sh
source $MVNICOSIA/dotfiles/gitconfig/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# scripts
PATH=$PATH:$DCX/docker/bin
PATH=$PATH:$MVNICOSIA/scripts/bin
PATH=$PATH:$AUTOHOST/dev_machine_scripts/bin
PATH=$PATH:/usr/local/Cellar/node/8.9.1/bin
GOPATH=$HOME/go

# ruby
# curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rails
export RAILS_ENV=development

# python
# easy_install pip
# brew install pyenv
# brew install pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ssh
eval `ssh-agent`; ssh-add

# brew install ack
