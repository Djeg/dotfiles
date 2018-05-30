setopt PROMPT_SUBST
setopt MONITOR
setopt CHECK_JOBS
setopt NO_HUP
unsetopt HUP
setopt vi
setopt auto_menu

function rightPrompt {
    color_end="%{\e[235;m%}"
    color_arrow="%{\e[1;48;5;235;38;5;232m%}"
    color_arrow_error="%{\e[1;48;5;235;38;5;196m%}"
    color_arrow_to_git="%{\e[1;48;5;237;38;5;232m%}"
    color_arrow_to_git_error="%{\e[1;48;5;237;38;5;196m%}"
    color_start="%{\e[1;48;5;232;38;5;254m%}"
    color_start_error="%{\e[1;48;5;196;38;5;254m%}"
    color_git="%{\e[1;48;5;237;38;5;253m%}"
    color_git_arrow="%{\e[1;48;5;235;38;5;237m%}"
    color_arrow_black="%{\e[1;48;5;232;38;5;235m%}"
    color_arrow_black_error="%{\e[1;48;5;196;38;5;235m%}"

    echo ""
}

function prompt {
    last_status=%?
    color_arrow_black="%{\e[1;48;5;232;38;5;235m%}"
    color_arrow_black_error="%{\e[1;48;5;196;38;5;235m%}"
    color_end="%{\e[235;m%}"
    color_arrow="%{\e[1;48;5;235;38;5;232m%}"
    color_arrow_error="%{\e[1;48;5;235;38;5;196m%}"
    color_arrow_to_git="%{\e[1;48;5;237;38;5;232m%}"
    color_arrow_to_git_error="%{\e[1;48;5;237;38;5;196m%}"
    color_start="%{\e[1;48;5;232;38;5;254m%}"
    color_start_error="%{\e[1;48;5;196;38;5;254m%}"
    color_git="%{\e[1;48;5;237;38;5;253m%}"
    color_git_arrow="%{\e[1;48;5;235;38;5;237m%}"
    git_branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')

    smiley="%(?,${color_start},${color_start_error}) %c "

    if [[ -z $git_branch ]]; then
        branch=""
        git="%(?,${color_arrow},${color_arrow_error})"
    else
        branch="%{\e[0;38;05;238m%} ${git_branch}%{\e[235;m%}"
        git="%(?,${color_arrow_to_git} ${color_git}${git_branch} ${color_git_arrow},${color_arrow_to_git_error} ${color_git}${git_branch} ${color_git_arrow})"
    fi

    #echo "${smiley}${git}${color_end} "
    logo_success="%{\e[1;38;05;75m%}λ%{\e[235;m%}"
    logo_error="%{\e[1;38;05;198m%}λ%{\e[235;m%}"
    folder="%{\e[1;38;05;240m%} %c%{\e[235;m%}"
    logo="%(?,${logo_success},${logo_error})"
    echo "${logo}${folder}${branch} "
}

PROMPT='$(prompt)'
RPROMPT='$(rightPrompt)'

# defined alias
alias tailf='tail -f'
alias sf3="./bin/console"
alias tmux='tmux -2'
alias g="git"
alias ls="ls --color"
alias ll="ls -la --color"
alias phpi="php -a"
alias sfr="./app/console ro:de | peco"
alias sfc="./app/console cont:de | peco"
alias sfrg="./app/console ro:de | grep"
alias sfcg="./app/console cont:de | grep"
alias sfld="tail -f ./app/logs/dev.log"
alias sflp="tail -f ./app/logs/prod.log"
alias clip="xclip -sel clip"
alias grep="grep --color"
alias selenium="java -jar ~/.selenium-server"
alias :q="exit"
alias :r="source ~/.zshrc"
alias tree="tree -C"
alias gst="git status"
alias glog="git log --graph --pretty=format:'%Cred%h %Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gac="git add -A && git ci -m "
alias gci="git ci -m"
alias gaa="git add -A"
alias ga="git add"
alias gpu="git push"
alias gpl="git pull"
alias gru="grep -nri --color"
alias gpr="hub pull-request -b "
alias gbr="git branch"
alias gtag="git tag -a"
alias nw="~/.nw/nw ."
alias spec="phpspec run -fpretty"
alias drun="docker run -it --rm"
alias drm="docker rm"
alias drmi="docker rmi"
alias dc="docker-compose"
alias dce="docker-compose exec"
alias dcps="docker-compose ps"
alias dcb="docker-compose build"
alias dex="docker exec -it"
alias dcr="docker-compose restart"
alias dps="docker ps"
alias dim="docker images"
alias dcup="docker-compose up"
alias dcl="docker-compose logs --tail=10 -f"
alias sme="source ~/.zshrc"
alias vim=nvim
alias vi=nvim
alias gpom="git pull origin master"

bindkey -v
bindkey ^R history-incremental-search-backward

export GOPATH="$HOME/.go"
export GOBIN="$HOME/.go/bin"
export GOROOT="/usr/lib/go"
export PATH="bin:vendor/bin:node_modules/.bin:/home/djeg/.gem/ruby/2.5.0/bin:$HOME/.bin:$HOME/.node_modules/bin:$PATH:$HOME/.rvm/bin:$HOME/.composer/vendor//root/.gem/ruby/2.5.0/bin/root/.gem/ruby/2.5.0/binbin:$HOME/.config/composer/vendor/bin:$GOPATH/bin" # Add RVM to PATH for scripting
export EDITOR='vim'
export TERM=screen-256color-bce
export PROJECT_FOLDER="/home/djeg/Project"
export SSH_FOLDER="/home/djeg/.ssh"
export NPM_CONFIG_PREFIX="$HOME/.node_modules"
