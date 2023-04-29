if status is-interactive
  alias v='nvim'
  alias tl='tmux list-sessions'
  alias ta='tmux a'
  alias tk='tmux kill-server'
  alias lg='lazygit'
  alias gt='cd temp'
  alias s='startx'
    # Commands to run in interactive sessions can go here
end

function fzf_tmux
  cd
  ./.config/tmux/tmux-sessionizer
end

function cheat
  cd
  ./.config/tmux/tmux-cht
end

bind \cf fzf_tmux
bind \ch cheat

set -g fish_greeting

colorscript random
set --export PATH $HOME/.cargo/bin $PATH

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/pratham/.ghcup/bin $PATH # ghcup-env
