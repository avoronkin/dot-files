
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export TERM="xterm-256color"
export VISUAL=vim
export EDITOR="$VISUAL"

if [ -f ~/.git-completion.sh ]; then
 source ~/.git-completion.sh
fi

if [ -f ~/.git-prompt.sh ]; then
 source ~/.git-prompt.sh
 
 GIT_PS1_SHOWDIRTYSTATE=1
 GIT_PS1_SHOWSTASHSTATE=1
 GIT_PS1_SHOWUNTRACKEDFILES=1
 # Explicitly unset color (default anyhow). Use 1 to set it.
 GIT_PS1_SHOWCOLORHINTS=1
 GIT_PS1_DESCRIBE_STYLE="branch"
 GIT_PS1_SHOWUPSTREAM="auto git"

 PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi

if [ -f ~/.aliases ]; then
 . ~/.aliases
fi



if [ -f /usr/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  . /usr/bin/virtualenvwrapper.sh 
fi

if [ -f ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
fi

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#CHROME_BIN=/usr/bin/chromium
