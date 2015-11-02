# Based on pyngmalion

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}‹%{$reset_color%}%{$fg[magenta]%}git%{$reset_color%}%{$fg[green]%}:%{$reset_color%}%{$fg[cyan]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%}✘%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$fg[green]%}✔%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_ADDED="%{$reset_color%}%{$fg[yellow]%}✚%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_MODIFIED="%{$reset_color%}%{$fg[yellow]%}✹%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DELETED="%{$reset_color%}%{$fg[yellow]%}✖%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_RENAMED="%{$reset_color%}%{$fg[yellow]%}➜%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_UNMERGED="%{$reset_color%}%{$fg[yellow]%}═%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}%{$fg[yellow]%}✭%{$reset_color%}"

  base_prompt='%{$fg[cyan]%}%n%{$reset_color%}%{$fg[yellow]%}⚡%{$reset_color%}%{$fg[red]%}%m%{$reset_color%}%{$fg[blue]%}:%{$reset_color%}%{$fg[green]%}%0~%{$reset_color%}%{$fg[blue]%}|%{$reset_color%}'
  post_prompt='%{$fg[green]%}⇒%{$reset_color%} '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""
 
  if [[ $prompt_length -gt 100 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt$nl$post_prompt"
  RPROMPT="$gitinfo"
}

prompt_setup_pygmalion


