#!/bin/bash
mkdir new_work_dir
cd new_work_dir
mkdir DDM{1..100}

function read_dir(){
	for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
		do
			 if [ -d $1"/"$file ] #注意此处之间一定要加上空格，否则会报错
			 	then
					touch $file"/"time_till_now.txt
					value1=`date "+%s"` # date +%s
					value2=`date "+%N"`
					value3="nanoseconds since 1970-01-01 00:00:00 UTC:"
					value4="<"${value1}${value2}">"
					echo $value3 > $file"/"time_till_now.txt
					echo $value4 >> $file"/"time_till_now.txt
					# date +'%s' # get the second from 1970.1.1
					# date +'%N' # get the nanosecond for current second
					# second*10^9 + nanosecond > $file"/"time_till_now.txt

			 else
				value="0" # Do nothing
			 fi
	    done
} 
#读取第一个参数
read_dir ./

