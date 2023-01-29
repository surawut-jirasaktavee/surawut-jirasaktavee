colors=("\033[38;5;10m")
i=0

while IFS= read -r line
do
    for (( j=0; j<${#line}; j++ )); do
        printf "${colors[i++]}${line:$j:1}\033[0m"
        ((i==${#colors[@]})) && i=0
        sleep 0.1
    done
    echo
    sleep 1
done < "hi_chat.txt"
