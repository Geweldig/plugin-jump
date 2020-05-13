if not set -q MARKPATH
    set -gx MARKPATH $HOME/.local/share/fish-jump/marks
    command mkdir -p $MARKPATH
end
if not set -q JUMPHISTPATH
    set -gx JUMPHISTPATH $HOME/.local/share/fish-jump/history
    command mkdir -p $JUMPHISTPATH
end
