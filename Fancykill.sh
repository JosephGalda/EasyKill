#!bin/bash


#sshkill

sshkill() {
HELP='Usage: sshkill [robotname]'

if [[ -z $1 ]]; then
    echo $HELP && return

elif [[ ${1:0:2} != ak && ${1:0:2} != ao ]];then
      echo $HELP && return

elif [[ "${1:0:2}" = ak && ${1:0:2} = ao ]];then 
   ps -ax | grep $1 | grep ssh | while read line PID M; do  
   kill $PID
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
elif [[ ${1:0:2} = ak && ${1:0:2} = ao ]];then 
   ps -ax | grep $1 | grep dash | while read a ; do
   kill $PID
   echo Killed $1 dash && return && exit
   done
fi 
}

#rvizkill

rvizkill () {
HELP='Usage: rvizkill [robotname]'

if [[ -z $1 ]]; then
    echo $HELP && return
elif [[ ${1:0:2} != ak && ${1:0:2} != ao ]];then
      echo $HELP && return
elif [[ ${1:0:2} = ak && ${1:0:2} = ao ]];then
   ps -ax | grep $1 | grep rviz | while read PID; do
   kill $PID
   echo Killed $1 rviz && return && exit
   done
fi 
}
