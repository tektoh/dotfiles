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

export PATH="$HOME/.rbenv/bin:$PATH" 
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/segawa/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/segawa/google-cloud-sdk/completion.zsh.inc'
