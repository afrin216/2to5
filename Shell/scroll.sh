#!/bin/env sh
#cerner_2^5_2017
clear
lines=$(tput lines)
cols=$(tput cols)

awkscript='
  {
    words="CERNER";
    line=$1;
    col=0;
    for(col=0;col<=$2-5;col++){
        for(spacecol=0;spacecol<col;spacecol++){
            printf "\033[%s;%sH\033[2;32m%s", line, spacecol, " ";
        }
        printf "\033[%s;%sH\033[2;32m%s", line, col, words;
        col++;
        system("sleep 0.1")
    }
  }
  '
echo -e "\e[1;40m"
clear

echo $(( $RANDOM % $lines)) $cols| awk "$awkscript"
clear