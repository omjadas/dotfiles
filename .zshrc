source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle archlinux
antigen bundle colorize
antigen bundle fasd
antigen bundle git
antigen bundle npm
antigen bundle nvm
antigen bundle pipenv
antigen bundle rails
antigen bundle sudo
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle vscode

antigen bundle laggardkernel/git-ignore

antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle zlsun/solarized-man

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

bindkey '^ ' autosuggest-accept
bindkey '^\n' autosuggest-execute

# Source aliases
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

system_type=$(uname -s)

if [ "$system_type" = "Linux" ]; then
    eval $(dircolors ~/.dircolors/dircolors.ansi-dark)
else
    eval $(gdircolors ~/.dircolors/dircolors.ansi-dark)
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
