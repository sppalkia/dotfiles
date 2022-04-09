# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/shoumik.palkar/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/shoumik.palkar/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/shoumik.palkar/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/shoumik.palkar/.fzf/shell/key-bindings.zsh"
