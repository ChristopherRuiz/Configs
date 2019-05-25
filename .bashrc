# neofetch 
neofetch --disable resolution de wm --gtk2 off --cpu_cores physical --cpu_speed off 

# powerline shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
