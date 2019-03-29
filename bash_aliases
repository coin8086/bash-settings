##################################################
#
# Shell
#
alias l='ls -lhF --color=auto'
alias lt='ls -lhFtr --color=auto'
alias la='ls -lhFa --color=auto'
alias ll='ls -lhFa --color=auto'

alias f=fg
alias f1='fg %1'
alias f2='fg %2'
alias f3='fg %3'
alias f4='fg %4'
alias f5='fg %5'
alias f6='fg %6'
alias f7='fg %7'
alias f8='fg %8'
alias f9='fg %9'
alias j=jobs
alias r=reset
alias p='ps -lfy -U $USER'
alias ?='echo $?'

function measure
{
  ps --forest -o pid,ppid,%cpu,%mem,rsz,vsz,time,cmd -g $(ps -o sid= -p "$1")
}

# Pretty print JSON string from stdin
alias ppj='python -m json.tool'

# Pretty print XML string from stdin
alias ppx='xmllint --format -'


##################################################
#
# Vi
#
alias vi=vim
alias vm='vi $(git ls-files --modified --others --exclude-per-directory=.gitignore | sort)'
alias vl='vi -S ~/.last-opened'
alias vr='vi -R'


##################################################
#
# Git
#
alias gs='git status'
alias gl='git log'
alias glns='git log --name-status'
alias gss='git shortlog -s --no-merges'
alias gc='git commit'
alias gd='GIT_PAGER="less -r" git diff -U10'
alias gb='git branch'
alias gls='git ls-files'


##################################################
#
# Ruby
#
alias bxcpd='bundle exec cap production deploy'
alias bxcsd='bundle exec cap staging deploy'

alias bxrs='bundle exec rails server -b 0.0.0.0'

alias bx='bundle exec'
alias bxr='bundle exec rake'

# Jekyll
alias bxjs='bundle exec jekyll serve -H 0.0.0.0'


##################################################
#
# Python
#
alias p2='python2'
alias p2d='python2 -m pdb'
alias p2p='python2 -m pip'
alias p3='python3'
alias p3d='python3 -m pdb'
alias p3p='python3 -m pip'

