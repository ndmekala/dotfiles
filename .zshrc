# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# LOCAL
source ~/.localshrc

# source "$homebrew_path/opt/powerlevel10k/powerlevel10k.zsh-theme"
source "$POWERLEVEL_THEME_LOCATION"

# Remove Ctrl+X from zsh keybindings so that vim can use it
bindkey -r "^X"

# Make neovim my default editor
export EDITOR="nvim"

# fzf
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.z-jump/z.sh ]] || . ~/.z-jump/z.sh
[[ ! -f ~/.zsh-fns ]] || source ~/.zsh-fns
[[ ! -f ~/.zsh-aliases ]] || source ~/.zsh-aliases

# Auto Completion
autoload -Uz compinit && compinit
