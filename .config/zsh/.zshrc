# Install antigen if not found
if [[ ! -f "$HOME/antigen.zsh" ]]; then
    curl -L git.io/antigen > "$HOME/antigen.zsh"
fi

autoload -U compinit
compinit

source "$HOME/antigen.zsh"

antigen use oh-my-zsh

antigen bundle ansible
antigen bundle archlinux
antigen bundle aws
antigen bundle colorize
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle helm
antigen bundle kubectl
antigen bundle minikube
antigen bundle mvn
antigen bundle npm
antigen bundle pip
antigen bundle pipenv
antigen bundle rails
antigen bundle ruby
antigen bundle rust
antigen bundle sudo
antigen bundle terraform
antigen bundle vscode

antigen bundle akarzim/zsh-docker-aliases

antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle omjadas/yadm-zsh

antigen bundle reegnz/jq-zsh-plugin

antigen bundle zlsun/solarized-man

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

bindkey -v
bindkey '^ ' autosuggest-accept
bindkey '^\n' autosuggest-execute
bindkey '^j' jq-complete

setopt HIST_IGNORE_SPACE

[[ -f "/usr/share/fzf/key-bindings.zsh" ]] && source "/usr/share/fzf/key-bindings.zsh"
[[ -f "/usr/share/fzf/completion.zsh" ]] && source "/usr/share/fzf/completion.zsh"
[[ -f "/usr/local/opt/fzf/shell/key-bindings.zsh" ]] && source "/usr/local/opt/fzf/shell/key-bindings.zsh"
[[ -f "/usr/local/opt/fzf/shell/completion.zsh" ]] && source "/usr/local/opt/fzf/shell/completion.zsh"

# Source aliases
[[ -f "$ZDOTDIR/.zsh_aliases" ]] && source "$ZDOTDIR/.zsh_aliases"

if command -v direnv >/dev/null 2>&1; then
    eval "$(direnv hook zsh)"
fi

if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh --cmd j)"
fi

if command -v dt >/dev/null 2>&1; then
    eval "$(dt completion)"
fi

if command -v fnm >/dev/null 2>&1; then
    eval "$(fnm env --use-on-cd)"
fi

if command -v frum >/dev/null 2>&1; then
    eval "$(frum init)"
fi

if command -v brew >/dev/null 2>&1; then
    gcloud_prefix="$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
    [[ -f "$gcloud_prefix/path.zsh.inc" ]] && source "$gcloud_prefix/path.zsh.inc"
fi

if command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors ~/.dircolors/dircolors.ansi-dark)"
elif command -v gdircolors >/dev/null 2>&1; then
    eval "$(gdircolors ~/.dircolors/dircolors.ansi-dark)"
fi

# To customize prompt, run `p10k configure` or edit $XDG_CONFIG_HOME/.p10k.zsh.
[[ -f "$XDG_CONFIG_HOME/p10k/p10k.zsh" ]] && source "$XDG_CONFIG_HOME/p10k/p10k.zsh"
