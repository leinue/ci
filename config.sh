cat>>~/.ssh/config<<EOF
host $1
    hostname $2
    user $3
    port $4
EOF
