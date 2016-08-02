#!/bin/bash

#Some formatting variables
red=$(tput setaf 1)
magenta=$(tput setaf 203)
cyan=$(tput setaf 6)
normal=$(tput sgr0)

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ./
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-propmt.sh -o ./

if ! (( $(grep -c "~/.git-completion.bash" ~/.bashrc) )); then
  read -p "${cyan}Would you like to install git auto completion for bash?${normal} [y/N]" complResp
  case  "$complResp" in
    y|Y|[yY][eE][sS])
      completions=true
      ;;
    *)
      completions=false
      exit 1
      ;;
  esac

  if [ $completions ]; then
    \cp -f ./git-completion.bash ~/.git-completion.bash
    echo "if [ -f ~/.git-completion.bash  ]; then" >> .bashrc
    echo "  source ~/.git-completion.bash" >> .bashrc
    echo "fi" >> .bashrc
  fi
fi

if ! (( $(grep -c "~/.git-prompt.sh" ~/.bashrc) )); then
  read -p "${cyan}Would you like to have git related info in your bash prompt?${normal} [y/N]" promptResp
  case  "$promptResp" in
    y|Y|[yY][eE][sS])
      prompt=true
      ;;
    *)
      prompt=false
      exit 1
      ;;
  esac

  if [ $prompt ]; then
    \cp -f ./git-propmt.sh ~/.git-prompt.sh

    echo "if [ -f ~/.git-prompt.sh  ]; then" >> .bashrc
    echo "  source ~/.git-prompt.sh" >> .bashrc
    echo "  PS1='[\u@\h \W\$(__git_ps1 \" (%s)\")]\$ '" >> .bashrc
    echo "fi" >> .bashrc
  fi
fi
