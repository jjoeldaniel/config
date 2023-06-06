if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $PATH ~/.cargo/bin
    starship init fish | source

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    # aliases
    alias cat="bat --theme OneHalfDark -p"
    alias tree="exa -T -L"
    alias v="nvim"
end
