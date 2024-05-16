#!/bin/bash
boolvar=`cat ./automatedMode`
if [[ $boolvar -eq 1 ]]; then
  subject=`java -jar ./school.jar`
  for file in `find ~/Downloads/ -type f -cmin -1`
  do 
    case $subject in
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
        case $file in 
          "*.pdf")
          mv $file ~/Documents/$file
            ;;
          "*docx")
          mv $file ~/Documents/$file
            ;;
          "*.pptx")
          mv $file ~/Documents/$file
            ;;
          "*.png")
          mv $file ~/Pictures/$file
            ;;
          "*.jpg")
          mv $file ~/Pictures/$file
            ;;
          "*.jpeg")
          mv $file ~/Pictures/$file
            ;;
        esac
        ;;
    esac
  done
fi
