#!/bin/bash
#
# PS1 magic
#
# Mostly copied from YUVAL KOGMAN version, added my own __git_ps1 stuff
# Original: http://gist.github.com/621452
#
# See video demo of this at http://vimeo.com/15789794
#
# To enable save as .bash_prompt in $HOME and add to .bashrc:
#
# . ~/.bash_prompt
#
# Pedro Melo, <melo@simplicidade.org>

_update_prompt () {
  ## Save $? early, we'll need it later
  local exit="$?"

  ## define some colors
  local red="31";
  local green="32";
  local yellow="33";
  local purple="35";
  local cyan="36";
  local white="37";

  local pre="\[\e[";
  local suf="\]";

  local e_green="${pre}0;${green}m$suf";
  local e_purple="${pre}0;${purple}m$suf";
  local e_cyan="${pre}0;${cyan}m$suf";
  local e_white="${pre}0;${white}m$suf";
  local e_bred="$pre$red;1m$suf";
  local e_byellow="$pre$yellow;1m$suf";

  local e_normal="\[\e[0;0m\]"

  ## Initial prompt
  _prompt="[$e_white\h$e_normal:$e_cyan\w$e_normal]";

  ## Color based on exit code
  local bul="\342\200\242" # bullet character
  case "$exit" in
    "0" )  ex="$e_green$bul$e_normal " ;;
    *   )  ex="$e_bred$bul$e_normal "  ;;
  esac

  ## Color current user
  local u;
  local p;
  if [ "$UID" = "0" ]; then
    u="$e_bred\u$e_normal";
    p="$e_bred#$e_normal";
  else
    u="$e_purple\u$e_normal";
    p="\$";
  fi

  ## Color git status if any: this code is expensive, so we only enable
  ## it when we enter a git repo, and then disable it again if we leave
  local cwd=`pwd`
  if [ -z "$INSIDE_GIT_REPO" -a -d .git ] ; then
    ## Keep track of the repo we are in
    export INSIDE_GIT_REPO=$cwd
  elif [ -n "$INSIDE_GIT_REPO" ] ; then
      ## substr(curdir, 0, length(INSIDE_GIT_REPO)) ;)
      cwd_prefix=${cwd:0:${#INSIDE_GIT_REPO}}
      if [ "$cwd_prefix" != "$INSIDE_GIT_REPO" ] ; then
          export INSIDE_GIT_REPO=''
      fi
  fi

  git_info=''
  if [ -n "$INSIDE_GIT_REPO" ] ; then
    git_info=`__git_ps1 " (%s)"`
    if [ -n "$git_info" ] ; then
      local is_big_repo=`git config bash.big-repo`
      if [ -z "$is_big_repo" ] ; then
        ## Assumes that untracked files are always listed after modified ones
        ## True for all git versions I could find
        git status --porcelain | perl -ne 'exit(1) if /^[ MA]/; exit(2) if /^[?]/'
        case "$?" in
          "0" )  git_info="$e_green$git_info$e_normal"   ;;
          "1" )  git_info="$e_bred$git_info$e_normal"    ;;
          "2" )  git_info="$e_byellow$git_info$e_normal" ;;
          ## User pressed CTRL-C, its a big repo and git status was taking
          ## too long
          "130") git config bash.big-repo 1           ;;
        esac
      fi
    fi
  fi

  export PS1="$ex$_prompt $u$git_info $p ";
}

if [ -n "$PS1" ] ; then
  PROMPT_COMMAND='_update_prompt'
  export PROMPT_COMMAND
fi

# helper commands to explicitly change the setting:

dumb_prompt () {
  git config bash.big-repo 1
}

smart_prompt () {
  git config --unset bash.big-repo
}
