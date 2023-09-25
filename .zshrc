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


# Remove Ctrl+X from zsh keybindings so that vim can use it
bindkey -r "^X"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. ~/.z-jump/z.sh

# Auto-Push Commit Message
auto_add_commit_push () {
  current_dir="$PWD"

  if [[ "$current_dir" == *"organize"* || "$current_dir" == *"cw-notes"* ]]; then
    date_and_time=$(date '+%Y-%m-%d %H:%M:%S')
    git add -A && git commit -m "pushed via script $date_and_time" && git push
  else
    echo "What’s the matter with you?!"
  fi

}

# Select GHQ Location with Peco
phq () {
  cd $(ghq list --full-path | peco)
}

gr () {
  local git_dir
  git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
  
  if [[ -n "$git_dir" ]]; then
    cd "$git_dir"
  else
    echo "Not inside a Git repository."
  fi
}

# Exa Aliases
alias ll="exa --long --icons --git"
alias xt="exa --long --icons --git --tree --git-ignore"

# Git Aliases
alias ga="git add -A"
alias gp="git push"
alias gs="git status"
alias gbv="git branch -v"
alias acp="auto_add_commit_push"
alias gcb="git checkout -b"

# Auto Completion
autoload -Uz compinit && compinit

# LOCAL
source ~/.localshrc

# fff
f() {
  fff "$@"
  cd "$(cat "$HOME/.cache/fff/.fff_d")"
}

# gcalcli
alias gcalw="gcalcli --calendar nirmal.d.mekala@gmail.com --calendar holidays calw"
alias gcalm="gcalcli --calendar nirmal.d.mekala@gmail.com --calendar holidays calm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
