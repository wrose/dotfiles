[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# append to the history file, don't overwrite it
shopt -s histappend

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export CATALINA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -Xms512m -Xmx512m -XX:PermSize=256M -XX:MaxPermSize=256M"

alias l='ls -lhaG'
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop"
alias glist='for ref in $(git for-each-ref --sort=-committerdate --format="%(refname)" refs/heads/ refs/remotes ); do git log -n1 $ref --pretty=format:"%Cgreen%cr%Creset %C(yellow)%d%Creset %C(bold blue)<%an>%Creset%n" | cat ; done | awk '"'! a["'$0'"]++'"

GIT_COMPLETION_PATH=/usr/local/etc/bash_completion.d/git-completion.bash
if [ -f $GIT_COMPLETION_PATH ]; then
	. $GIT_COMPLETION_PATH
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWSTASHSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
fi

export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h:\[\e[33;1m\[\w\[\e[0;95m\]\$(__git_ps1)\e[0m$ "
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
alias apis-ssh='ssh -l wdrose@nitetimedinosaur.com nitetimedinosaur.com'

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
