IP=$(/sbin/ifconfig | grep -e "inet:" -e "addr:" | grep -v "inet6" | grep -v "127.0.0.1" | head -n 1 | awk '{print $2}' | cut -c6-)
echo "rtsp://$IP:8554/"
read -p "Press [Enter] key to start streaming..."
raspivid -o - -t 0 -n -w 640 -h 480 -fps 12 -vf | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/}' :demux=h264

