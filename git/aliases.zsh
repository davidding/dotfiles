# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias gm='git merge'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gpu='git push -u origin HEAD'
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'
alias gdn='git diff --name-only'
alias gdup='git diff @{upstream}'
alias gdupn='git diff @{upstream} --name-only'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'
alias gst='git stash'
alias gsta='git stash apply'
alias ga='git add'
alias ga.='git add .'
alias gr="git reset"
alias grh="git reset --hard"
alias gnow='git commit --amend --date="now"'

function gdel() {
  git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}

function gDEL() {
  git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}
