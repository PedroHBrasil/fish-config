if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR nvim

if not set -q TMUX
    if tmux has-session -t default > /dev/null 2>&1
        tmux attach -t default
    else
        tmux new-session -s default -A
    end
end

starship init fish | source
neofetch
fortune

