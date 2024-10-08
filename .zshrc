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

# alias t="$homebrew_path/opt/todo-txt/bin/todo.sh -t -a"
alias t="$TODO_SH_LOCATION -t -a"

# alias i="$homebrew_path/opt/todo-txt/bin/todo.sh -t -a addto inbox.txt"
alias i="$TODO_SH_LOCATION -t -a addto inbox.txt"

# Remove Ctrl+X from zsh keybindings so that vim can use it
bindkey -r "^X"

# Make neovim my default editor
export EDITOR="nvim"

# fzf
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. ~/.z-jump/z.sh

# Auto-Push Commit Message
auto_add_commit_push () {
  current_dir="$PWD"

  if [[ "$current_dir" == *"organize"* || "$current_dir" == *"cw-notes"* || "$current_dir" == *"pensieve"* ]]; then
    date_and_time=$(date '+%Y-%m-%d %H:%M:%S')
    git add -A && git commit -m "pushed via script $date_and_time" && git push
  else
    echo "What’s the matter with you?!"
  fi

}

# Check if command is installed
check_command() {
  local command_to_check="$1"
  if ! command -v "$command_to_check" > /dev/null 2>&1; then
    echo "Error: $command_to_check is not installed. Exiting."
    return 1
  fi
}

# Select ghq location with fzf
fhq () {
  check_command ghq || return 1
  check_command fzf || return 1
  cd $(ghq list --full-path | fzf)
}

# Change directory to the root of the git repo
gr () {
  local git_dir
  git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
  
  if [[ -n "$git_dir" ]]; then
    cd "$git_dir"
  else
    echo "Not inside a Git repository."
  fi
}

# create a new note in the orgnizer directory
function n() {
    local note_dir="$ORG_DIRECTORY" # assumes ORG_DIRECTORY is set
    local timestamp=$(date +'%y%m%d')
    local note_number=1

    # Find the highest existing note number
    while [[ -e "$note_dir/${timestamp}-$(printf '%03d' $note_number)-note.md" ]]; do
        ((note_number++))
    done

    local note_file="${note_dir}/${timestamp}-$(printf '%03d' $note_number)-note.md"
    nvim "$note_file"
    echo "Note saved as $note_file"
}

# Exa Functions

ll () {
  if command -v exa > /dev/null 2>&1 ; then
    exa --long --icons --git --group "$@"
  else
    ls -l "$@"
  fi
}

xt () {
  if command -v exa > /dev/null 2>&1 ; then
    exa --long --icons --git --group --tree --git-ignore "$@"
  else
    echo "Exa is not installed!"
  fi
}

# Git Aliases
alias ga="git add -A"
alias gp="git push"
alias gs="git status"
alias gbv="git branch -v"
alias acp="auto_add_commit_push"
alias gcb="git checkout -b"

# Auto Completion
autoload -Uz compinit && compinit

# fff
f() {
  check_command fff || return 1
  fff "$@"
  cd "$(cat "$HOME/.cache/fff/.fff_d")"
}

# qlmanage

alias ql="qlmanage -p"

grab () {
  check_command pbcopy || return 1
  pwd | pbcopy
}

drop () {
  check_command pbpaste || return 1
  cd $(pbpaste)
}
