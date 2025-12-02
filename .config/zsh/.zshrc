# Aliases

# Git
alias gs="git status"
alias ga="git add"
alias gall="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gt="git tag"
alias gb="git branch"
alias gco="git checkout"
alias gm="git merge"
alias gr="git rebase"

# Yadm
alias ys="yadm status"
alias ya="yadm add"
alias yall="yadm add -u"
alias yc="yadm commit"
alias ycm="yadm commit -m"
alias yp="yadm push"

# Editing
alias v="nvim"
alias vim="nvim"

alias eZ="nvim $HOME/zsh/.zshrc"
alias Z="source $HOME/zsh/.zshrc"

# Tmux
alias tmk="tmux kill-server"
alias tms="tmux-sessionizer"
alias tma="tmux attach"

### Beam Cursor
###############
fix_cursor() {
    echo -ne '\e[5 q'
}
precmd_functions+=(fix_cursor)

### vicmd
#########

# Insert mode = beam, Command mode = underline
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '\e[4 q'
  else
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select

# Ensure cursor shape is restored at startup
echo -ne '\e[6 q'

#Functions

cce() { local file; file=$(fd . $HOME/.config/ --type f --type symlink --follow -H -d 2 | fzf) && $EDITOR $file; unset file ; }
ce() { local file; file=$(yadm list -a | sed "s|^|$HOME\/|" | fzf) && $EDITOR $file; unset file ; }

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Minecraft
# alias java="/Users/hamzahmad/Library/Application\ Support/minecraft/runtime/java-runtime-delta/mac-os-arm64/java-runtime-delta/jre.bundle/Contents/Home/bin/java -jar"

# Plugins
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Java
alias java="/opt/homebrew/opt/openjdk@24/bin/java"
alias javac="/opt/homebrew/opt/openjdk@24/bin/javac"

# Eza
alias ls="eza --color=always --group-directories-first --icons"
alias l="eza -al --color=always --group-directories-first --icons"
alias la="eza -a --color=always --group-directories-first --icons"

# # Catppuccin Macchiato
# export FZF_DEFAULT_OPTS=" \
# --color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
# --color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
# --color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
# --color=selected-bg:#494D64 \
# --color=border:#6E738D,label:#CAD3F5"

# Catppuccin Mocha
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
