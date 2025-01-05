#!/bin/bash
# 
# List .pacnew files when found
# Locaction /etc/pacman.d/scripts/check-pacnew.sh

pacnews=($(/usr/bin/pacdiff --output|grep -v pacsave))
nb="${#pacnews[@]}"
if [[ $nb > 0 ]]; then
  echo -e "\e[1;31m$==> $nb .pacnew found in system \e[0m"
  printf "%s\n" "${pacnews[@]}"
else
  echo -e "\e[1;m==> no .pacnew files found \e[0m"
fi