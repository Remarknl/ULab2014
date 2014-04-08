raspivid -n -w 1280 -h 720 -b 2000000 -fps 24 -vf -hf -t 0 -o - | \
     gst-launch-1.0 -v fdsrc !  h264parse ! rtph264pay config-interval=10 pt=96 ! \
     udpsink host=192.168.1.6 port=9000
