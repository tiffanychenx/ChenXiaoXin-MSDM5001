#!/bin/bash

top

dmesg|grep cache # dmesg  查看开机信息，用grep 过滤出有关 cache 的信息 
gnome-system-monitor # 打开系统进程管理界面，有 CPU 使用情况，内存使用情况 
df -h # 显示硬盘使用情况

cd /; tree | head -n 15 # 切换到根目录下，然后查看当前目录树，把结果作为 head 命令的输入，head 命令将获取的输入的前 15 行作为输出。   