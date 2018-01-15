#!/bin/bash
#variavel

#file=$(cat machines)
#for i in $file; do
#     echo $i
#     entre=$(grep $i /opt/deployment/shell/machines.txt)
     #awk '!/$i/' machines.txt
     #echo $entre
#     if [[ $i != $entre ]];
#     then
#       echo "encontre"
#     else
#        echo "nao encontrei"
#        echo $i
#     fi

#done
# Load text file lines into a bash array.
OLD_IFS=$IFS
IFS=$'\n'
lines_ary=($(cat "m"))
IFS=$OLD_IFS

# Print each line in the array.
for idx in $(seq 0 $((${#lines_ary[@]}-1))); do
#echo $idx
line=${lines_ary[$idx]}
#echo ${line}
econtra=$(grep -oh "${line}" /opt/deployment/*/*/machines.txt)
     if [[ ${line} != $econtra ]];
     then
#       echo "encontre"
#     else
#        echo "nao encontrei"
        echo ${line}
         #echo $econtra
     fi

done
