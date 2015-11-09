# path
export PATH=/usr/local:/usr/local/bin:/Users/mich7589/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:$PATH
export PATH=$PATH:$HOME/usr/bin

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then
    eval "$(pyenv init -)"
fi
PATH=$PATH:/Users/mich7589/rax/identityroast/dependencies/git-encrypt

# history
export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND}"'echo $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'
export HISTSIZE=2147483647

# colors
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# docker
export DOCKER_HOST=tcp://127.0.0.1:4243
export SERVICE_HOST=http://qe-identity-service.ciidentity.com/

# env variables
export HOST_SRC=$HOME/rax
export GREP_OPTIONS='--exclude-dir=.git'

alias unfuck_menu='killall -KILL SystemUIServer'
alias unfuck_trackpad='killall Dock'
