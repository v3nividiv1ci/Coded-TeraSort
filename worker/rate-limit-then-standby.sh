tc qdisc add dev eth0 handle 1: root htb default 11
tc class add dev eth0 parent 1: classid 1:1 htb rate "100"mbit
tc class add dev eth0 parent 1:1 classid 1:11 htb rate "100"mbit
service ssh start
mkdir -p /root/.ssh
while true; do sleep 200; done
