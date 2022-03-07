alias wtr='curl wttr.in'
alias no='grep -viP'

# Pipe into this command to use, cant use directly
alias upload='nc termbin.com 9999'

# GREP
alias grep='grep --color=auto -In'
alias grepcs='grep --include="*.cs"'
alias no='grep -viP'
# END GREP

# GIT

alias gs='git status'
alias gd='git diff'
alias gdm='git diff master'
alias gdh='git diff HEAD^'
alias gdms='git diff master --stat'
alias gdmss='git diff master --shortstat'

alias ga='git add -u'
alias gaa='git add .'
alias gl='git log'

alias gc='git commit'

alias gg='git log --graph'
alias gga='git log --graph --all'
alias ggao='git log --graph --all --oneline'
alias ggo='git log --graph --oneline'

alias gchm='git checkout master'
alias gchb='git checkout -b'
alias gp='git push'

alias gitsetvim='git config --global core.editor "vim"'

## Git update master
function gum() {
	git checkout master;
	git pull;
	git checkout -;
}


# END GIT

videores() { printf "$1 " ; ffmpeg -i $1 2>&1 | grep -oP 'Stream .*, \K[0-9]+x[0-9]+'; }
# Trace program file opens to log file. Eg 'tracefiles discord'
alias tracefiles='strace -e file -fF -o ./.trace.log'

alias lstree='find . | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'


alias fn='find -name'

function f_fn() { find -name "*$1*"; }
alias f=f_fn;
