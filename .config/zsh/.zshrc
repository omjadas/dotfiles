# Install antigen if not found
if [[ ! -f "$HOME/antigen.zsh" ]]; then
    curl -L git.io/antigen > antigen.zsh
fi

source "$HOME/antigen.zsh"

antigen use oh-my-zsh

antigen bundle ansible
antigen bundle archlinux
antigen bundle colorize
antigen bundle docker
antigen bundle docker-compose
antigen bundle fasd
antigen bundle git
antigen bundle kubectl
antigen bundle minikube
antigen bundle npm
antigen bundle pip
antigen bundle pipenv
antigen bundle rails
antigen bundle sudo
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle vscode

# antigen bundle laggardkernel/git-ignore

antigen bundle lukechilds/zsh-nvm

antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle omjadas/yadm-zsh

antigen bundle zlsun/solarized-man

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

bindkey -v
bindkey '^ ' autosuggest-accept
bindkey '^\n' autosuggest-execute

# Source aliases
[[ -f "$ZDOTDIR/.zsh_aliases" ]] && source "$ZDOTDIR/.zsh_aliases"

eval "$(direnv hook zsh)"

if [[ "$SYSTEM_TYPE" = "Linux" ]]; then
    eval "$(dircolors ~/.dircolors/dircolors.ansi-dark)"
else
    eval "$(gdircolors ~/.dircolors/dircolors.ansi-dark)"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f "$XDG_CONFIG_HOME/p10k/p10k.zsh" ]] && source "$XDG_CONFIG_HOME/p10k/p10k.zsh"
