gst-launch-1.0 -e videotestsrc ! video/x-raw, framerate=24/1, width=480, height=360 ! x264enc ! mpegtsmux ! udpsink host=127.0.0.1 port=10000
