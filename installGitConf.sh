#!/bin/bash

#Some formatting variables
red=$(tput setaf 1)
magenta=$(tput setaf 203)
cyan=$(tput setaf 6)
normal=$(tput sgr0)

#OS Selection options
osOpts=("Linux/Mac" "Windows")


# Get username
read -p "${magenta}Please type in your github username${normal}: " userName
echo ' '

# Get email
read -p "${magenta}Please type in your email address${normal}: " email
echo ' '

# OS Selection
echo "What OS are you on?"

select opt in "${osOpts[@]}"
do
  case $opt in
    "Linux/Mac")
      autocrlf="input"
      break
      ;;
    "Windows")
      autocrlf="true"
      break
      ;;
    *) echo "Invalid option";;
  esac
done

if [ -f ~/.gitconfig ]; then
    echo ''
    read -p "${cyan}'~.gitconfig'${magenta} already exists. Do you want to overwrite it?${normal} [y/N]" response
    case  "$response" in
      y|Y|[yY][eE][sS])
        overwrite=true
        writeConf=true
        ;;
     *)
        writeConf=false
        exit 1
        ;;
    esac
  else
    overwrite=false
    writeConf=true
fi

# Replace template strings
if [ $writeConf ]; then
  if [ overwrite ]; then
    echo ""
    echo -e "$magenta""Backing up your existing config file as $cyan~/old.gitconfig$normal"
    cp ~/.gitconfig ~/old.gitconfig
  fi
  sed -e "s/<%= userName %>/$userName/g" \
      -e "s/<%= email %>/$email/g" \
      -e "s/<%= crlf %>/$autocrlf/g" <.gitconfig >~/.gitconfig
  echo ""
  echo -e "$magenta""New git configuration file is saved in $cyan~/.gitconfig$normal"
fi
