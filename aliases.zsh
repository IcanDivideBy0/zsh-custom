
# Add an "alert" alias for long running commands.  Use like so: `sleep 10; alert`
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Greping thought process
PRS_HEAD='USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND'
alias prs='echo $PRS_HEAD && ps aux|grep -v grep|grep "$@"'

# Reset terminal
alias clear='sh -c reset'

# Create directory and set cwd
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# => not working w/ this shitty VPN anymore
# alias mia-vpn='snx < ~/.snxpasswd'

# => this never was really useful... or even used at all
# function pause()   { xprop _NET_WM_PID | awk '{print $3}' | xargs kill -STOP }
# function unpause() { xprop _NET_WM_PID | awk '{print $3}' | xargs kill -CONT }

# Edit this config
alias oh-my-zsh-config='atom ~/.oh-my-zsh/custom'

# CURL w/ timing output
alias tcurl='curl -w "@$HOME/.curl-timing-format" $@'

# Daily expense report task
alias ndf=$HOME/Dropbox/TabaskoLab/01-FRAIS/todo

# Prevent slack to change status to away
alias slack-awake="while [[ -n 1 ]]; do xte 'key Shift_L' 'sleep 60'; done"

# Adjust brightness of second monitor
# => didn't encounter the issue since a long time
# alias brightness-fix='xrandr --output DP1 --brightness $@'

# Automatically fix obvious eslint issues
# => using prettier now
# function autolint {
#   while sleep 1; do
#     find $@ -name '*.js' | grep -v 'node_modules' | entr -c -d -p ./node_modules/.bin/eslint --fix /_
#   done
# }

# Terminal CSV viewer
function csvview() {
  csvtool readable "$1" | less -
}
