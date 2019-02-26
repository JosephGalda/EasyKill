#!bin/bash


#sshkill

sshkill() {
HELP='Usage: sshkill [robotname]'
if [[ -z $1 ]]; then
    echo $HELP && return

elif [[ ${1:0:2} != ak && ${1:0:2} != ao ]];then
      echo $HELP && return

elif [ ${1:0:2} = ao ] || [ ${1:0:2} = ak ];then 
   ps -ax | grep $1 | grep ssh | while read PID a b c d e f; do  
   kill ${PID}
   done
   echo Killed $1 SSH sessions && return
   exit
fi
}

#dashkill
   
dashkill() {
HELP='Usage: dashkill [robotname]'

if [[ -z $1 ]]; then
    echo $HELP && return

elif [[ ${1:0:2} != ak && ${1:0:2} != ao ]];then
      echo $HELP && return

elif [ ${1:0:2} = ao ] || [ ${1:0:2} = ak ];then 
   ps -ax | grep $1 | grep dash | while read PID a b c d; do  
   kill ${PID}
   done
   echo Killed $1 dash && return
   exit
fi
}

#rvizkill

rvizkill () {
HELP='Usage: rvizkill [robotname]'

if [[ -z $1 ]]; then
    echo $HELP && return

elif [[ ${1:0:2} != ak && ${1:0:2} != ao ]];then
      echo $HELP && return

elif [ ${1:0:2} = ao ] || [ ${1:0:2} = ak ];then 
   ps -ax | grep $1 | grep rviz | while read PID PID a b c d; do  
   kill ${PID}
   done
   echo Killed $1 rviz && return
   exit
fi
}
