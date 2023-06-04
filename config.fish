if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $PATH ~/.cargo/bin
    starship init fish | source

    # aliases
    alias cat="bat --theme OneHalfDark -p"
    alias tree="exa -T -L"
end
