gst-launch-1.0 -e videotestsrc ! video/x-raw, framerate=24/1, width=480, height=360 ! clockoverlay ! x264enc ! rtph264pay config-interval=10 pt=96 ! \
     udpsink host=videoserver.ulab.nl port=5004
