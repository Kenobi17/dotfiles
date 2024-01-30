if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx BROWSER brave
set PATH $HOME/.local/share/bob/nvim-bin $PATH
alias ll='ls -lA'
alias rs='shutdown -r now'
alias v='nvim .'
alias hx='helix .'
alias dip='dunstctl is-paused'
alias tkx='tmux kill-server'
alias tls='tmux ls'
alias tks='tmux kill-session -t'
alias st='shutdown -h now'
alias g='git'
alias gs='g status'
alias gc='g commit -m'
alias gcf='g commit --amend --no-edit'
alias gcf='g commit'
alias gp='g push origin'
alias gpl='g pull origin'
alias ga='g add .'
alias gk='g add'
alias gl='g log'
alias kx='pkill -9'

alias d='cd $(fd . '~' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo )'

alias D='cd $(fd . '~' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo )'

alias Hx='cd $(fd . '~' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo ) &&  hx'
alias V='cd $(fd . '~' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo ) &&  v'

# pnpm
set -gx PNPM_HOME "/home/kenobi/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
