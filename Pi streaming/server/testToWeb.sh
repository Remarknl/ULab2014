gst-launch-1.0 -v videotestsrc ! x264enc ! flvmux name=muxer ! rtmpsink location="rtmp://a.rtmp.youtube.com/live2/remarknl-6564.bc7t-mkeu-h69t-0z04"
