#!/bin/bash
boolvar=`cat ./automatedMode`
if [[ $boolvar -eq 1 ]]; then
  for file in `find ~/Downloads/ -type f -ctime -1`
  do 
    case in ./school.jar
      Englisch)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/Englisch/src/$file
        ;;
      GIT)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/GIT/src/$file
        ;;
      Politik)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/Politik/src/$file
        ;;
      Deutsch)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/Deutsch/src/$file
        ;;
      Wirtschaft)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/Wirtschaft/src/$file
        ;;
      EVP)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/EVP/src/$file
        ;;
      STD)
        mv $file ~/obsidian_vault/1.Jahr/RBBK 1. Jahr/STD/src/$file
        ;;
      *)
        #others
        ;;

  done
else
fi
