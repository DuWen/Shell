#!/bin/sh

#  ipa.sh
#  
#
#  Created by duwen on 2020/4/10.
#  

echo "当前的PID = $$"
REPO_UPDATE_SH="$(pwd)/repo_update.sh"
chmod +x ${REPO_UPDATE_SH}

case $1 in
        --exec)
                echo "当前选择的是exec模式\n"
                exec ${REPO_UPDATE_SH} ;;
        --source)
                echo "当前选择的是source模式\n"
                source ${REPO_UPDATE_SH} ;;
        *)
                echo "当前选择的是默认fork模式\n"
                ./repo_update.sh ;;
esac
 
echo "执行之后的PID = $$"
