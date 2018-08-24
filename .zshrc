export ZSH=$HOME/mvnicosia/dotfiles/oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER="mich7589"
prompt_context(){}
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  ssh-agent
  osx
)

# ssh-agent configuration
zstyle :omz:plugins:ssh-agent identities id_rsa
zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# useful MacOS commands
alias unfuck_menu='killall -KILL SystemUIServer'
alias unfuck_trackpad='killall Dock'
alias unfuck_finder='killall Finder'

# source
export MVNICOSIA=$HOME/mvnicosia
export HOST_SRC=$HOME/rax
export AUTOHOST=$HOST_SRC/Autohost
export DCX=$HOST_SRC/dcx

# dcx deploys
# brew install ansible
# git clone git@github.rackspace.com:dcx/dcxps-ansible.git
# ansible-galaxy install -r requirements.yml
export ANSIBLE_VAULT_PASSWORD_FILE='~/.dcxps_encryption_key'

# git 
export GREP_OPTIONS='--exclude-dir=.git'

# scripts
PATH=$PATH:$DCX/docker/bin
PATH=$PATH:$MVNICOSIA/scripts/bin
PATH=$PATH:$AUTOHOST/dev_machine_scripts/bin

# python
# easy_install pip
# brew install pyenv
# brew install pyenv-virtualenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# brew install ack
# brew install git-flow

# ruby
# curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles
# NOTE: make sure this is at the bottom of the zshrc to avoid error
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rails
export RAILS_ENV=development
