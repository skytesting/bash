#!/bin/bash

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
#se 1 maquina é diferente da encontrada no file
#imprime a maquina diferente
     if [[ ${line} != $econtra ]];
     then

        echo ${line}
     fi

done

