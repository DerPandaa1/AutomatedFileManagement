#!/bin/bash
boolvar=`cat ./automatedMode`
if [[ $boolvar -eq 1 ]]; then
  subject=`java -jar ./school.jar`
  for file in `find ~/Downloads/ -type f -cmin -1`
  do 
    case $subject in
      Englisch)
        mv $file ~/school/Englisch/
        echo "Englisch"
        ;;
      GIT)
        mv $file ~/school/GIT/
        echo "GIT"
        ;;
      Politik)
        mv $file ~/school/Politik/
        echo "Politik"
        ;;
      Deutsch)
        mv $file ~/school/Deutsch/
        echo "Deutsch"
        ;;
      Wirtschaft)
        mv $file ~/school/Wirtschaft/
        echo "Wirtschaft"
        ;;
      EVP)
        mv $file ~/school/EVP/
        echo "EVP"
        ;;
      STD)
        mv $file ~/school/STD/
        echo "STD"
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
