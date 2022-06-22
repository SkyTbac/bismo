#!/bin/zsh
# $1 is the log file generated by the compilation process

echo ${2:=0} > /dev/null

clk=`cat $1\_batch.prj/solution1/impl/vhdl/report/$1\_timing_routed.rpt | grep "Slack" | cut -d":" -f 2 | sed "s/\(\ \)*//"`

if [[ $2 -eq 0 ]]; then
	echo $1, CLK=$clk
else
	echo \'$clk\'
fi 
