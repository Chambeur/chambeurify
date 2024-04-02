# Prompt Setup
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_DIR=$'%F{red}'
COLOR_GIT=$'%F{yellow}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

# Default Env Var
export EDITOR="code -w"
export PATH="/opt/homebrew/bin:$PATH"
# export GPG_TTY=$(tty)

# ASDF Setup
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Postgres Setup
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

# MySql Setup
# export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Alias
alias doco="docker compose"

# Rails Alias
alias r="./bin/rails"
alias rs="bundle exec rspec"
alias rubo="bundle exec rubocop"
alias dev="./bin/dev"
