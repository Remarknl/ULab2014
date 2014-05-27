raspivid -n -w 640 -h 48-0 -b 1000000 -fps 24 -vf -hf -t 0 -o - | \
     gst-launch-1.0 -v fdsrc !  h264parse ! rtph264pay config-interval=10 pt=96 ! \
     udpsink host=videoserver.ulab.nl port=5001
status = "streaming"

echo "status:$status" > /dev/shm/streamingstatus
