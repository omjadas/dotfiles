export EDITOR='vim'
export WIN_HOME='/mnt/c/Users/Omja Das'

export SYSTEM_TYPE=$(uname -s)

# Linux specific config
if [[ $SYSTEM_TYPE = "Linux" ]]; then
    export DISTRO=$(lsb_release -is)
    # Add wsl-open as browser for WSL
    if [[ $(uname -r) =~ (m|M)icrosoft ]]; then
        export BROWSER=wsl-open
    fi
fi


export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)

export ZSH_COLORIZE_STYLE=solarized-dark

export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false

# Add ~/.local/bin to path
[[ -d "$HOME/.local/bin" ]] && export PATH="$PATH:$HOME/.local/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin"
