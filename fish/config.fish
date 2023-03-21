if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx BROWSER brave
set PATH $HOME/.local/share/bob/nvim-bin $PATH
alias ll='ls -la'
alias rs='shutdown -r now'
alias v='nvim'
alias dip='dunstctl is-paused'
alias tkx='tmux kill-server'
alias tls='tmux ls'
alias tks='tmux kill-session -t'
alias st='shutdown -h now'
alias d='cd $(fd . '/' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo )'
alias f='fd . '/' --type f --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias nv='cd $(fd . '/' --type d --hidden --exclude node_modules --exclude .git | fzf-tmux -p --reverse | xargs echo ) && nvim .'
