#!/bin/bash
clear

file="$1"
option="$2"

RED='\033[31m' 
GREEN='\033[32m'
BOLD='\033[1m'
NORM='\033[0m'

ext="${file##*.}" 
if [ "$ext" == "cpp" ]; then
    if [[ $option == "--sanitize" ]]; then
        OPTION="-ggdb3 -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG"
    else
        OPTION="-ggdb3 -DDEBUG"
    fi
    g++ -std=c++17 $OPTION "$file" -o /tmp/cf.out
    run="/tmp/cf.out"
fi
if [ "$ext" == "py" ]; then
    run="python3 $file"
fi

input_files=$(ls ./*.in | grep -P "\d+\.in" | sed 's/\.in$//')
for i in $input_files; do
   testcase=$(echo "$i" | sed 's/.*\///')
   if ! /usr/bin/time -o "$i.time" -f "(%es)" "$run" <"$i.in" >"$i.myout"; then
      echo -e "${RED}${BOLD}Sample test $testcase: Runtime Error $(cat "$i.time")${NORM}"
      echo "========================================"
      echo "Sample Input $testcase:"
      head -20 "$i.in"
   else
      if diff -q -Z "$i.out" "$i.myout" > /tmp/cfdiff; then
         echo -e "${BOLD}${GREEN}Sample test $testcase: Accepted $(cat "$i.time")${NORM}"
      else
         echo -e "${BOLD}${RED}Sample test $testcase: Wrong Answer $(cat "$i.time")${NORM}"
         echo "========================================"
         echo "Sample Input $testcase:"
         head -20 "$i.in"
         echo "========================================"
         echo "Sample Output $testcase:"
         head -20 "$i.out"
         echo "========================================"
         echo "My Output $testcase:"
         head -20 "$i.myout"
		 echo
         echo "========================================"		 
		 read -p "Press Enter to continue" </dev/tty
      fi
   fi
done
