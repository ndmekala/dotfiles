# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

case $(uname -m) in
  'arm64')
    homebrew_path='/opt/homebrew'
    ;;
  'x86_64')
    homebrew_path='/usr/local'
    ;;
  *)
    echo 'An error occurred parsing system architecture'
    ;;
esac

source "$homebrew_path/opt/powerlevel10k/powerlevel10k.zsh-theme"

alias t="$homebrew_path/opt/todo-txt/bin/todo.sh -t -a"

export BAT_THEME="ansi"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. ~/.z-jump/z.sh

# Auto-Push Commit Message
auto_add_commit_push () {
  date_and_time=$(date '+%Y-%m-%d %H:%M:%S')
  git add -A && git commit -m "pushed via script $date_and_time" && git push
}

# Select GHQ Location with Peco
zhq () {
  cd $(ghq list --full-path | peco)
}

# Exa Aliases
alias xa="exa --long --icons --git"
alias xt="exa --long --icons --git --tree --git-ignore"

# Git Aliases
alias ga="git add -A"
alias gp="git push"
alias gs="git status"
alias gbv="git branch -v"
# alias gcn="ga && git commit -m '$(commit_message)' && gp"
alias acp="auto_add_commit_push"
alias gcb="git checkout -b"

# LOCAL
source ~/.localshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
