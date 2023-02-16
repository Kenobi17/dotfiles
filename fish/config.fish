if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx BROWSER brave
set PATH $HOME/.local/share/bob/nvim-bin $PATH
alias ll='ls -la'
alias rs='shutdown -r now'
alias v='nvim'
alias st='shutdown -h now'
alias thlp='wezterm show-keys --lua'
alias dd='cd $(fd . '/' --type d --hidden --exclude node_modules --exclude .git --print0 | fzf-tmux -p - --read0 --print0 --exit-0 | xargs -r -0 echo)'
alias ff='fd . '/' --type f --hidden --exclude node_modules --exclude .git --print0 | fzf-tmux -p - --read0 --print0 --exit-0 | xargs -r -0 nvim'
alias dD='cd $(fd . --type d --hidden --exclude node_modules --exclude .git --print0 | fzf-tmux -p - --read0 --print0 --exit-0 | xargs -r -0 echo)'
alias fF='fd . --type f --hidden --exclude node_modules --exclude .git --print0 | fzf-tmux -p - --read0 --print0 --exit-0 | xargs -r -0 nvim'
