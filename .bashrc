# IGNORE
export FIGNORE=".svn:.git"

# ============================================================================
# alias
# ============================================================================
alias grep="grep --color"

# ============================================================================
# history
# ============================================================================
# share
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

# detail
HISTTIMEFORMAT='%Y-%m-%d %T '; export HISTTIMEFORMAT
export HISTSIZE=99999
export HISTIGNORE=fg*:bg*:history*:cd*
export HISTCONTROL=ignoredups
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PS1='\[\033[35m\][\w] \n\[\033[33m\]\u@\h$\[\033[0m\] '
