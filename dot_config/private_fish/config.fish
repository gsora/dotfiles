if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx EDITOR hx
set -gx CHARON_REPO $HOME/Documents/Work/charon
set -gx PATH $HOME/Code/renode_1.15.2-dotnet_portable $HOME/go/bin $HOME/.cargo/bin $PATH

set -gx GIT_CONFIG_COUNT 1
set -gx GIT_CONFIG_KEY_0 "home.dir"
set -gx GIT_CONFIG_VALUE_0 "$HOME"

switch (uname)
    case Darwin
        # do things for macOS
        fish_add_path -U /opt/homebrew/bin
    case Linux
        # do things for Linux
        fish_add_path -U /home/gsora/.local/bin
    case '*'
        # do things for other OSs
end
