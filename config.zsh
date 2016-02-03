
# Do not share history across terminals
setopt no_share_history

# Use Bash style comments
setopt interactivecomments

# Theme
export TERM="xterm-256color"

POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_context nvm dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)

POWERLEVEL9K_CUSTOM_CONTEXT='echo -n "%{$fg[red]%}%n%{$reset_color%}@%{$fg_bold[blue]%}%m%{$reset_color%}"'
POWERLEVEL9K_CUSTOM_CONTEXT_BACKGROUND='232'

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='232'
POWERLEVEL9K_DIR_HOME_FOREGROUND='232'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='232'

POWERLEVEL9K_VCS_FOREGROUND='232'
POWERLEVEL9K_VCS_DARK_FOREGROUND='232'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='232'
POWERLEVEL9K_VCS_MODIFIED_DARK_FOREGROUND='232'

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uF073  %d/%m/%y}"

ZSH_THEME="powerlevel9k/powerlevel9k"
