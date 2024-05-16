#!/bin/bash
scriptDir=$(dirname -- "$(readlink -f -- "$BASH_SOURCE")")
boolvar=`cat $scriptDir/automatedMode`
if [[ $boolvar -eq 1 ]]; then
  subject=`java -jar $scriptDir/school.jar`
  for file in `find ~/Downloads/ -type f -cmin -1`
  do 
    case $subject in
      Englisch)
        mv $file ~/school/Englisch/
        ;;
      GIT)
        mv $file ~/school/GIT/
        ;;
      Politik)
        mv $file ~/school/Politik/
        ;;
      Deutsch)
        mv $file ~/school/Deutsch/
        ;;
      Wirtschaft)
        mv $file ~/school/Wirtschaft/
        ;;
      EVP)
        mv $file ~/school/EVP/
        ;;
      STD)
        mv $file ~/school/STD/
        ;;
      *)
        case $file in 
          "*.pdf")
          mv $file ~/Documents/
            ;;
          "*docx")
          mv $file ~/Documents/
            ;;
          "*.pptx")
          mv $file ~/Documents/
            ;;
          "*.png")
          mv $file ~/Pictures/
            ;;
          "*.jpg")
          mv $file ~/Pictures/
            ;;
          "*.jpeg")
          mv $file ~/Pictures/
            ;;
        esac
        ;;
    esac
  done
fi
