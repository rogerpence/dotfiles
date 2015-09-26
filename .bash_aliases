# Download current version of this file and replace it.
# curl https://raw.githubusercontent.com/rogerpence/dotfiles/master/.bash_aliases > ~/.bash_aliases

alias ls-files="ls -l | grep ^-"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'

# Copy command output to the clipboard.
# Requires sudo apt-get xsel
alias toclip='xsel -ib'


function fullname {
    (echo -n "$(pwd)" && echo -n '/' && ls $1)
    (echo -n "$(pwd)" && echo -n '/' && ls $1) | toclip
}

if [ -f ~/.bash_box_aliases ]; then
    . ~/.bash_box_aliases
fi