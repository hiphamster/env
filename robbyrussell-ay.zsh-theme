# location
# ~/.oh-my-zsh/themes/robbyrussel-ay.zsh-theme

# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local ret_status="%(?:%{$fg[green]%}➜ :%{$fg[red]%}➜ )"
# local ret_status=""
# original
# PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

# ayelluas
# PROMPT=$'[$fg[cyan]%n@$fg[white]%m$reset_color] $fg[yellow]%~ $fg[green]$(git_prompt_info)\n${reset_color}${ret_status} '
# this prompt causes long line garbling :(
# PROMPT=$'[%D{%Y-%m-%d %H:%M:%S}]$fg[cyan][%n@%m]$reset_color $fg[yellow]%~ $fg[green]$(git_prompt_info)\n${ret_status}${reset_color} '
#
#XXX must wrap color in %{...%} it's not counted in prompt length 
PROMPT='%{$fg[yellow]%}[%*|%D]%}%{$fg[cyan]%}[%n@%m]$reset_color%{$fg[green]%}%~%{$reset_color%} $(git_prompt_info)
${ret_status}%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
