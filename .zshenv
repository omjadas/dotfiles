export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"

export EDITOR='vim'

export SYSTEM_TYPE="$(uname -s)"

# Linux specific config
if [[ "$SYSTEM_TYPE" = "Linux" ]]; then
    export BROWSER='google-chrome-stable'
    export DISTRO=$(lsb_release -is)
    # Add wsl-open as browser for WSL
    if [[ "$(uname -r)" =~ (m|M)icrosoft ]]; then
        export BROWSER=wsl-open
        export WIN_HOME='/mnt/c/Users/Omja Das'
    fi
fi

export GOOGLER_COLORS=bjdxxy

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history)

export ZSH_COLORIZE_STYLE=solarized-dark

export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false

# Source secrets
[[ -f "$ZDOTDIR/.zsh_secrets" ]] && source "$ZDOTDIR/.zsh_secrets"

# Add ~/.local/bin to path
[[ -d "$HOME/.local/bin" ]] && export PATH="$PATH:$HOME/.local/bin"

# Add ~/.cargo/bin to path
[[ -d "$HOME/.cargo/bin" ]] && export PATH="$PATH:$HOME/.cargo/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin"
