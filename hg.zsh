function hg_prompt_info(){
    if [[ -d .hg ]]; then
        #echo "$(hg prompt {$ at $PR_YELLOW{bookmark}}{$PR_GREEN{status}})"
        echo "$(hg prompt "{at {bookmark}}{{status}}" 2> /dev/null)"
    fi
}
