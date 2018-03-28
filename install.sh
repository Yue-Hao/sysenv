emacs_bin=`which emacs`
cp emacs_config/emacs_app emacs_bin
cp shell_config/bash_profile ~/.bash_profile

brew install texinfo
brew link texinfo --force 
