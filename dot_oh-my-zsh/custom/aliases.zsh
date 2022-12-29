#alias gdp='git difftool -d $(git merge-base --fork-point $1)'
function gdp() {
  local ref
  local base
  base=$1
  if [[ -z "$1" ]]; then
    base=staging
  fi
  
  ref=$(git merge-base --fork-point ${base})
  git difftool -d ${ref}
}
  
  
alias gdtl='git difftool -d'
alias zshreload='source ~/.zshrc'
alias zshcustom='nano ~/.oh-my-zsh/custom/aliases.zsh'
