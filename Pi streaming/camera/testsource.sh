gst-launch-1.0 -e videotestsrc ! video/x-raw, framerate=24/1, width=480, height=360 ! x264enc ! udpsink host=videoserver.ulab.nl port=5001
