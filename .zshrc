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

alias i="$homebrew_path/opt/todo-txt/bin/todo.sh -t -a addto inbox.txt"

export BAT_THEME="ansi"


# Remove Ctrl+X from zsh keybindings so that vim can use it
bindkey -r "^X"

# Make neovim my default editor
export EDITOR="nvim"

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

# Exa Aliases
alias ll="exa --long --icons --git --group"
alias xt="exa --long --icons --git --group --tree --git-ignore"

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
# alias gcalw="gcalcli --calendar nirmal.d.mekala@gmail.com --calendar holidays calw"
# alias gcalm="gcalcli --calendar nirmal.d.mekala@gmail.com --calendar holidays calm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/Users/nirmal/google-cloud-sdk/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/nirmal/bin

# Created by `pipx` on 2023-09-28 02:28:16
export PATH="$PATH:/Users/nirmal/.local/bin"
