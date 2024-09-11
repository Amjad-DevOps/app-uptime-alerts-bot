declare -a EnvList=("devlopment" "test" "production")
declare -A env=([development]=<dev app url> [test]=<test app url> [production]=<prod app url>)

for VAR in ${EnvList[@]}
do  
    status_code_login=$(curl -o /dev/null -s -w "%{http_code}\n" https://${env[$VAR]}/login)
    status_code_service=$(curl -o /dev/null -s -w "%{http_code}\n" https://${env[$VAR]}/<service_name>/ready)

    if [[ $status_code_login != 401 && $status_code_service != 200 ]];then
        python3 notification.py "$VAR Status Code --> Login:$status_code_login Service:$status_code_service : $VAR is in Down State"
    
    else
        echo "$VAR Login:$status_code_login Service:$status_code_service "
    fi
done
