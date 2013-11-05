alias tmux='tmux -2 attach || tmux -2 new'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias mkdir='mkdir -pv'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ~='cd $HOME'
alias p='cd ~/projects && ll'



alias server='python -m SimpleHTTPServer'

alias s='git status'
alias b='git branch -a'


alias path='echo -e ${PATH//:/\\n}'

alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -nr | head -n 20"

