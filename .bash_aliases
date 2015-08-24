# Download current version of this file and replace it.
# curl https://raw.githubusercontent.com/rogerpence/dotfiles/master/.bash_aliases > ~/.bash_aliases


alias ls-files="ls -l | grep ^-"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'

if [ -f ~/.bash_box_aliases ]; then
    . ~/.bash_box_aliases
fi
