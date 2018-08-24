# dotfiles
My command shell settings.

1. Clone this repository: `git clone --recurse-submodules ...`
1. Add iTerm2 preferences
   1. Click iTerm2 -> Preferences...
   1. Check "Load preferences from a customer folder or url" and select "iterm2" from this repo.
   1. Check "Save changes to folder when iTerm2 quits".
1. Soft-link the following files from your home directory:
   - .zshrc
   - .curlrc
   - .vim/
   - .vimrc
   - gitconfig/.gitconfig
1. To set up VIM, run :PlugUpdate
