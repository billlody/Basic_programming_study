# BEGIN DEVBAO MANAGED BLOCK FOR zsh shell completion
autoload -Uz compinit
compinit
# END DEVBAO MANAGED BLOCK FOR zsh shell completion
export OKTA_USERNAME=yanzheng
# BEGIN DEVBAO MANAGED BLOCK FOR Python user-site path
PATH=/Users/yanzheng/Library/Python/3.9/bin:$PATH
# END DEVBAO MANAGED BLOCK FOR Python user-site path

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# eval "$(ssh-agent)" > /dev/null
# ssh-add -K > /dev/null 2>&1

export DBC_TOKEN=dapi7e6dc11b3bc52767c3f77c8ad02b2515
# BEGIN DEVBAO MANAGED BLOCK FOR user's local bin
export PATH="$HOME/.local/bin:$PATH"
# END DEVBAO MANAGED BLOCK FOR user's local bin

BLUE="$(tput setaf 6)"
DARK="$(tput setaf 4)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
WHITE="$(tput setaf 7)"
PINK="$(tput setaf 5)"
RESET="$(tput sgr0)"
BOLD="$(tput bold)"
source ~/.git-prompt.sh
setopt PROMPT_SUBST; 
set GIT_PS1_SHOWUPSTREAM="auto"
NEWLINE=$'\n'
PS1='';
PS1+='${BOLD}${GREEN}%n ${BLUE}%1~${RESET}${BOLD}${PINK}$(__git_ps1 " (%s)") ${RESET} ${NEWLINE}'
PS1+='${BOLD}${WHITE}>> '

export PS1;
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

