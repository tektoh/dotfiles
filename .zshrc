export LANG=ja_JP.UTF-8

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '][%F{green}%b%f'
zstyle ':vcs_info:*' actionformats '][%F{green}%b%f(%F{red}%a%f)'
precmd() { vcs_info }
PROMPT='[%n${vcs_info_msg_0_}]:%# '
RPROMPT='[%/]'

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
#source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.zsh.inc"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# npm
export PATH=./node_modules/.bin:$PATH

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# Postgresql
export PGDATA=/usr/local/var/postgres

export PATH=/usr/local/bin:$PATH
export PATH=./bin:$PATH

###

# Ruby
alias bi='bundle install'
alias be='bundle exec'

# Wareki
alias heisei='echo 平成$(expr $(date +%Y) - 1988)年'

