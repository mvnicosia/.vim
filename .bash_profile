# history
export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND}"'echo $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'
export HISTSIZE=2147483647

# colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Vagrant development environment
export HOST_SRC=$HOME/rax
export AUTOHOST=$HOST_SRC/Autohost
export DCX=$HOST_SRC/dcx
source ~/ansible/hacking/env-setup -q
export VAGRANT_HOSTNAME=devbox
export VAGRANT_IP=192.168.33.33

# app options
export GREP_OPTIONS='--exclude-dir=.git'

# useful MacOS commands
alias unfuck_menu='killall -KILL SystemUIServer'
alias unfuck_trackpad='killall Dock'

# scripts
PATH=$PATH:$DCX/docker/bin:~/mvnicosia/scripts/bin
GOPATH=$HOME/go

# git 
source ~/.vim/git-prompt.sh
source ~/.vim/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
