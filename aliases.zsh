
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

alias mia-vpn='snx < ~/.snxpasswd'

function pause()   { xprop _NET_WM_PID | awk '{print $3}' | xargs kill -STOP }
function unpause() { xprop _NET_WM_PID | awk '{print $3}' | xargs kill -CONT }

alias oh-my-zsh-config='subl ~/.oh-my-zsh/custom'
