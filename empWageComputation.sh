#!/bin/bash -x
isfulltime=1;
emprateperhour=20;
workingdays=20;
tottalsalary=0;
for (( day=1; day<=$workingdays; day++ ))
do
empcheck=$((RANDOM%2))
case $empcheck in
$isfulltime)
emphrs=8;;
*)
emphrs=0;;
esac
salary=$(($emphrs * $emprateperhour))
totalsalary=$(($totalsalary + $salary))
done
echo "employee salary is $salary"
