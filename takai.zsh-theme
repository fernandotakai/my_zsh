PROMPT=$'
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}%{$(git_prompt_info)%}%{$(hg_prompt_info)%}
%(!.#.$) '

RPS1="$PR_GREEN%D{%d-%m-%Y %H:%M}$PR_NO_COLOR" 

ZSH_THEME_GIT_PROMPT_PREFIX=" on $PR_YELLOW"
ZSH_THEME_GIT_PROMPT_SUFFIX="$PR_NO_COLOR"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=" " 

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
