#!/bin/sh
user=$1
pwd=$2
host=$3
port=$4
filename=$5
filepath=$6
mode=$7
localpath=$8
/usr/bin/expect<<EOF
spawn sftp -oport=$port $user@$host
expect {
	"(yes/no)?" (send "yes\r";expect_continue;)
	" *assword:" (send "$pwd\r")
}

expect "sftp> "
send "cd $filepath\r"
expect "sftp> "
send "lcd $localpath\r"
expect "sftp> "
send "$mode $filename\r"
expect "sftp> "
send "bye\r"
expect eof
EOF