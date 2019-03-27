##################################################
#
# Shell
#
alias l='ls -lhF --color=auto'
alias lt='ls -lhFtr --color=auto'
alias la='ls -lhFa --color=auto'

alias f=fg
alias r=reset
alias ?='echo $?'
alias p='ps -lfy -U $USER'

function measure
{
  ps --forest -o pid,ppid,%cpu,%mem,rsz,vsz,time,cmd -g $(ps -o sid= -p "$1")
}


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

# Pretty print JSON string from stdin
alias ppj='python -m json.tool'
