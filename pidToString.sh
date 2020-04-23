PID=$(ps -ef | grep tefcloud | grep -v grep  | awk '{print $2}')

if [ ${#PID[@]} -eq 0 ]
then
    echo "doesn't exist process running"
else
    for t in "${PID[@]}"
    do
     #kill -9 $t
    echo "exist process with pid: $t it will be killed first"
    done
fi
