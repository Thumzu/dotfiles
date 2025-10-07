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

alias eZ="nvim $XDG_CONFIG_HOME/zsh/.zshrc"
alias Z="source $XDG_CONFIG_HOME/zsh/.zshrc"

# Tmux
alias tmk="tmux kill-server"
alias tma="tmux attach"

### Beam Cursor
###############
fix_cursor() {
    echo -ne '\e[5 q'
}
precmd_functions+=(fix_cursor)

#Functions

# ce fzf
ce() { local file; file=$(fd . $HOME/.config --type f --type symlink --follow -H -d 4 | fzf) && nvim $file; unset file ; }

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Minecraft
# alias java="/Users/hamzahmad/Library/Application\ Support/minecraft/runtime/java-runtime-delta/mac-os-arm64/java-runtime-delta/jre.bundle/Contents/Home/bin/java -jar"

# Java
alias java="/opt/homebrew/opt/openjdk@24/bin/java"
alias javac="/opt/homebrew/opt/openjdk@24/bin/javac"

# Eza
alias ls="eza --color=always --group-directories-first --icons"
alias l="eza -al --color=always --group-directories-first --icons"
alias la="eza -a --color=always --group-directories-first --icons"

export FZF_DEFAULT_OPTS=" \
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
