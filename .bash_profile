######
#
# 2010-09-08
# Change prompt to the following:
# [USER@HOST cwd] time
#
#PS1='\[\e[0;31m\]\W\[\e[m\]> '

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$RED\w$YELLOW\$(parse_git_branch)$NO_COLOUR > "

export EDITOR="code -w"
export GPG_TTY=$(tty)

# ASDF Setup
. /usr/local/opt/asdf/asdf.sh

# MySql Setup
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Alias
alias doco="docker compose"

# Rails Alias
alias r="./bin/rails"
alias rs="bundle exec rspec"
alias rubo="bundle exec rubocop"
alias dev="./bin/dev"
