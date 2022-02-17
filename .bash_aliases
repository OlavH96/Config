alias wtr='curl wttr.in'
alias no='grep -viP'

# Pipe into this command to use, cant use directly
alias upload='nc termbin.com 9999'

alias gs='git status'
alias ga='git add -u'
alias gaa='git add .'
alias gd='git diff'
alias gdm='git diff master'
alias gdh='git diff HEAD^'
alias gl='git log'

alias gc='git commit'

alias gg='git log --graph'
alias gga='git log --graph --all'
alias ggao='git log --graph --all --oneline'

alias gchm='git checkout master'
alias gp='git push'

alias gitsetvim='git config --global core.editor "vim"'

videores() { printf "$1 " ; ffmpeg -i $1 2>&1 | grep -oP 'Stream .*, \K[0-9]+x[0-9]+'; }
# Trace program file opens to log file. Eg 'tracefiles discord'
alias tracefiles='strace -e file -fF -o ./.trace.log'
