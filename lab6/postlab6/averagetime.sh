#!/bin/bash

echo dictionary name:
read dict
echo grid name:
read grid



l1="./a.out ${dict} ${grid}"
l2="./a.out ${dict} ${grid}"
l3="./a.out ${dict} ${grid}"
l4="./a.out ${dict} ${grid}"
l5="./a.out ${dict} ${grid}"
#echo ${l}


T1=`${l1} | tail -1`

echo ${T1}

T2=`${l2} | tail -1`
echo ${T2}

T3=`${l3} | tail -1`
echo ${T3}

T4=`${l4} | tail -1`
echo ${T4}

T5=`${l5} | tail -1`
echo ${T5}


#echo "$(echo '($T5+$T4+$T3+$T2+$T1'| bc)"

TFinal=$(echo "$T5+$T4+$T3+$T2+$T1"| bc)

#echo $(((${T5}+${T4}+${T3}+${T2}+${T1})/5))

echo $(echo "$TFinal/5"| bc)
