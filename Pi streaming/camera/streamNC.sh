raspivid -t 999999 -w 640 -h 480 -fps 24 -vf -hf -o - | nc 192.168.1.4 5001
