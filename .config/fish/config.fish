# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 283457
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection


zoxide init fish | source


if status is-interactive
    alias vs='nvim ~/.dotfiles/.config/nvim/'
    alias v='nvim'
    alias cd='z'
    alias tl='tmux list-sessions'
    alias ta='tmux a'
    alias tk='tmux kill-server'
    alias lg='lazygit'
    alias gt='cd ~/temp/'
    alias s='startx'
    alias ls='exa'
    alias la='exa --long'
    alias gl='git log --oneline --graph --decorate --all'
    alias lvim='NVIM_APPNAME=LazyVim nvim'
    # Commands to run in interactive sessions can go here
end

function fzf_tmux
    cd
    ./.config/tmux.bak/tmux-sessionizer
end


function cheat
    cd
    ./.config/tmux/tmux-cht
end

function nvim-old
    env NVIM_APPNAME=nvim-old nvim
end

function nvim-new
    env NVIM_APPNAME=nvim nvim
end

function nvim-lazy
    env NVIM_APPNAME=LazyVim nvim
end

function nvims
    set items nvim-old nvim LazyVim
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = "default" ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end

bind \cf fzf_tmux
# bind \ch cheat

set -g fish_greeting

colorscript random
set --export PATH $HOME/.cargo/bin $PATH
export DENO_INSTALL="/home/pratham/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin /home/pratham/.ghcup/bin $PATH # ghcup-env
fish_add_path /home/pratham/.spicetify

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

pyenv init - | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
