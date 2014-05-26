raspivid -n -w 640 -h 480 -b 1000000 -fps 24 -hf -t 0 -o - | \
     gst-launch-1.0 -v fdsrc !  h264parse ! rtph264pay config-interval=10 pt=96 ! \
     udpsink host=videoserver.ulab.nl port=5004
status = "streaming"

echo "status:$status" > /dev/shm/streamingstatus
