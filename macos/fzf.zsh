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

# Settings
export FZF_DEFAULT_COMMAND='rg --files --hidden'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
