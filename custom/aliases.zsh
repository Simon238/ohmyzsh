# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. For a full list of active aliases, run `alias`.

alias cat="bat"
alias ll="ls -lsF"
alias gs="git status"
alias nf='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
mkcd () { mkdir -p "$@" && cd "$@"; }
dusort() { 
    (  # Start a subshell
        cd "${1:-.}" || exit 1  # Use current dir if no argument is given, exit if cd fails
        du -sh $(ls -A) | sort -rh
    )
}

